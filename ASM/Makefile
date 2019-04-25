ASM=nasm
LD=ld

ASFLAGS=-fmacho64 -D REPLICATE
LDFLAGS=-macosx_version_min 10.12 -lc

SRC= Colleen.s\
	 Grace.s\
	 Sully.s

OBJ=$(SRC:%.s=%.o)

NAME= Colleen Grace Sully

all: $(NAME)

$(NAME): $(OBJ)
	$(LD) $(LDFLAGS) $@.o -o $@

%.o: %.s
	$(ASM) $(ASFLAGS) $<

clean:
	$(RM) Colleen.o Grace.o Sully.o Grace_kid.s Sully_*.s Sully_*

fclean: clean
	$(RM) $(NAME)

re:
	$(MAKE) clean
	$(MAKE)
