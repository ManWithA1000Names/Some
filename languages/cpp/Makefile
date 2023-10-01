rwildcard=$(foreach d,$(wildcard $(1:=/*)),$(call rwildcard,$d,$2) $(filter $(subst *,%,$2),$d))

CC=g++
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
SRC=$(call rwildcard, $(SRC_DIR), *.cpp)
OBJ=$(subst $(SRC_DIR), $(OBJ_DIR), $(patsubst %.cpp,%.o,$(SRC)))

all: build

$(SRC_DEV_BIN_DIR):
	mkdir -p $(SRC_DEV_BIN_DIR)

$(SRC_BIN_DIR):
	mkdir -p $(SRC_BIN_DIR)

$(OBJ_DIR):
		mkdir -p $(OBJ_DIR) $(OBJ_NESTED_DIRS)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp
	$(CC) $(CFLAGS) -c $^ -o $@

build: $(OBJ_DIR) $(SRC_DEV_BIN_DIR) $(OBJ) 
	$(CC) $(CFLAGS) $(OBJ) -o $(SRC_DEV_BIN_DIR)/$(BIN)

release: CFLAGS=-Wall -Wextra -O3
release: $(SRC_BIN_DIR)
	$(CC) $(CFLAGS) $(SRC) -o $(SRC_BIN_DIR)/$(BIN)

run: build
	$(SRC_DEV_BIN_DIR)/$(BIN)

run-release: release
	$(SRC_BIN_DIR)/$(BIN)

test:
	@echo "Cpp does has have built in testing."

clean:
	$(RM) $(BUILD_DIR)


