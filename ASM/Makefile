ASM=nasm
LD=ld

ASFLAGS=-fmacho64
LDFLAGS=-macosx_version_min 10.12 -lc
SRC= Colleen.s\
	 Grace.s\
	 #Sully.s\

OBJ=$(SRC:%.s=%.o)

NAME= Colleen Grace #Sully

all: $(NAME)

$(NAME): $(OBJ)
	$(LD) $(LDFLAGS) $@.o -o $@

%.o: %.s
	$(ASM) $(ASFLAGS) $<

clean:
	$(RM) $(NAME) Colleen.o Grace.o Grace_kid.s Sully_*.s Sully_* a.out

re:
	$(MAKE) clean
	$(MAKE)
