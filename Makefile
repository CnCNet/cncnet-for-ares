-include config.mk

OUTPUT      = rename.dll
CFLAGS      = -std=c99 -Iinc/
DLL_LDFLAGS = -mdll -Wl,--enable-stdcall-fixup

OBJS = src/rename.o src/ares.o

CC    ?= gcc
STRIP ?= strip
RM    ?= rm

.PHONY: default
default: $(OUTPUT)

.PHONY: all
all: rename.dll

$(OUTPUT): $(OBJS)
	$(CC) $(CFLAGS) $(DLL_LDFLAGS) -o $@ $^ -lmsvcrt
	$(STRIP) $@
clean:
	$(RM) $(OUTPUT) $(OBJS)
