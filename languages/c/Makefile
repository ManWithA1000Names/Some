rwildcard=$(foreach d,$(wildcard $(1:=/*)),$(call rwildcard,$d,$2) $(filter $(subst *,%,$2),$d))

CC=cc
BIN=out
RM=rm -rf
SRC_DIR=src
CFLAGS=-Wall -Wextra -ggdb
BUILD_DIR=build
SRC_BIN_DIR=$(BUILD_DIR)/release
SRC_DEV_BIN_DIR=$(BUILD_DIR)/dev
OBJ_DIR=$(BUILD_DIR)/obj
SRC_NESTED_DIRS=$(sort $(dir $(wildcard $(SRC_DIR)/*/)))
OBJ_NESTED_DIRS=$(subst $(SRC_DIR), $(OBJ_DIR), $(SRC_NESTED_DIRS))
SRC=$(call rwildcard, $(SRC_DIR), *.c)
OBJ=$(subst $(SRC_DIR), $(OBJ_DIR), $(patsubst %.c,%.o,$(SRC)))

all: build

$(SRC_DEV_BIN_DIR):
	mkdir -p $(SRC_DEV_BIN_DIR)

$(SRC_BIN_DIR):
	mkdir -p $(SRC_BIN_DIR)

$(OBJ_DIR):
		mkdir -p $(OBJ_DIR) $(OBJ_NESTED_DIRS)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) -c $^ -o $@

$(SRC_DEV_BIN_DIR)/$(BIN): $(OBJ_DIR) $(SRC_DEV_BIN_DIR) $(OBJ) 
	$(CC) $(CFLAGS) $(OBJ) -o $(SRC_DEV_BIN_DIR)/$(BIN)

build: $(SRC_DEV_BIN_DIR)/$(BIN)

.PHONY: release
release: CFLAGS=-Wall -Wextra -O3
release: $(SRC_BIN_DIR)
	$(CC) $(CFLAGS) $(SRC) -o $(SRC_BIN_DIR)/$(BIN)

run: build
	$(SRC_DEV_BIN_DIR)/$(BIN)

run-release: release
	$(SRC_BIN_DIR)/$(BIN)

test:
	@echo "C does has have built in testing."

clean:
	$(RM) $(BUILD_DIR)
