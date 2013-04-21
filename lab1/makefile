SCRATCH = scratch
OUT = out
SRC = src

build: generate compile
	mkdir -p $(OUT)
	jar cfe CoolLexer.jar CoolLexer -C $(SCRATCH)/$(OUT) .
	cp $(SRC)/coolexer coolexer
	cp $(SCRATCH)/CoolLex.tokens CoolLex.tokens

generate: src/CoolLex.g
	antlr3 -o $(SCRATCH) ./src/CoolLex.g

compile: $(SRC)/CoolLexer.java
	mkdir -p $(SCRATCH)
	mkdir -p $(SCRATCH)/out
	cp -r $(SRC) $(SCRATCH)
	javac -d $(SCRATCH)/out -sourcepath $(SCRATCH)/src $(SCRATCH)/src/CoolLexer.java
	

clean:
	rm -fr $(SCRATCH)
	rm -f coolexer CoolLexer.jar CoolLex.tokens

test: build
