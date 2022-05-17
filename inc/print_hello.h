#include <stdio.h>

void print_hello();

#ifdef DEBUG
#define LOGD(fmt, ...) printf("DEBUG - %s\n", fmt, ##__VA_ARGS__)
#else
#define LOGD(...) do {} while (0)
#endif

