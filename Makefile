# Define the compiler
CC = xelatex

# Define the source files
SRC = document.tex

# Define the output file
OUT = document.pdf

# Define the intermediate files
INT = document.aux document.log document.synctex.gz document.fdb_latexmk document.fls 'document.synctex(busy)'

# Define the default target
all: $(OUT)

# Define the rule to generate the output file from the source file
$(OUT): $(SRC)
	$(CC) $(SRC)

# Define the rule to clean the intermediate files
clean:
	rm -f $(INT) $(OUT)
