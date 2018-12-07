CC :=  gcc

SRCDIR := src
BINDIR := bin
TARGET := $(BINDIR)/client

SRCTEXT := c
SOURCES := $(shell find $(SRCDIR) -type f -name *.$(SRCTEXT))
#patsubst pattern,replacement,text
OBJECTS := $(patsubst $(SRCDIR)/%,$(BINDIR)/%,$(SOURCES:.$(SRCTEXT)=.o))
CFLAGS := -Wall
LIB := -pthread
INC := $(SRCDIR)

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $^ -o $@ $(LIB)
	@echo "Built into $(BINDIR)/"

$(BINDIR)/%.o: $(SRCDIR)/%.$(SRCTEXT)
	@mkdir -p $(BINDIR)
	$(CC) $(CFLAGS) -I $(INC) -c -o $@ $<

clean:
	@rm -rf $(BINDIR)/*

.PHONY: clean all
