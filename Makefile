C_FILES   := $(wildcard src/*.c)
OBJ_FILES := $(addprefix obj/,$(notdir $(C_FILES:.c=.o)))
LD_FLAGS  := -lm
CC_FLAGS  := -Wall

main: $(OBJ_FILES)
	gcc $(LD_FLAGS) -o $@ $^

obj/%.o: src/%.c
	gcc $(CC_FLAGS) -c -o $@ $<

clean:
	rm main
	rm -f obj/*.o