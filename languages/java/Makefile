JAVA_FILES=$(wildcard *.java)
CLASS_FILES=$(patsubt %.java, %.class, $(JAVA_FILES))

all: build

%.class: %.java
	javac $^

build: $(CLASS_FILES)

release: build
	jar cvfe Main.jar Main *.class

run: build
	java Main

run-release: release
	java -jar Main.jar	

test:
	@echo "Java does not have a built in testing platform."
