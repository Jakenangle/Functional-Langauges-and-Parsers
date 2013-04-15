SCRATCH = ./scratch

build: generate compile

generate: src/CoolLex.g
	antlr3 -o $(SCRATCH) ./src/CoolLex.g

compile: src/CoolLexer.java
	cp -r src $(SCRATCH)/src
	javac $(SCRATCH)/src/CoolLexer.java

clean:
	rm -r (SCRATCH)

test: build
