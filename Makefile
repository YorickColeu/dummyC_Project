CC        ?= gcc
C_FILES   := $(wildcard src/*.c)
OBJ_FILES := $(addprefix obj/,$(notdir $(C_FILES:.c=.o)))
LD_FLAGS  := -lm
CC_FLAGS  := -Iinc -Wall -Wfatal-errors

.PHONY: clean

ifdef DEBUG
CC_FLAGS += -DDEBUG -g -O3
endif

main: $(OBJ_FILES)
	$(CC) $(CC_FLAGS) -o $@ $^ $(LD_FLAGS)

obj/%.o: src/%.c
	$(CC) $(CC_FLAGS) -c -o $@ $<

clean:
	rm main
	rm -f obj/*.o
