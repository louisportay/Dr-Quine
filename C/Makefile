CC=clang

CFLAGS=-Wall -Wextra -Werror -D REPLICATE

SRC= Colleen.c\
	 Grace.c\
	 Sully.c\

NAME= Colleen Sully Grace

all: $(NAME)

clean:
	$(RM) Grace_kid.c Sully_*.c Sully_*

fclean: clean
	$(RM) $(NAME)

re:
	$(MAKE) fclean
	$(MAKE) all
