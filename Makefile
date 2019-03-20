# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lportay <lportay@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/09/13 10:52:14 by lportay           #+#    #+#              #
#    Updated: 2019/03/20 17:11:57 by lportay          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.PHONY: clean fclean re all tags rules

SRCDIR= src_nm/

vpath %.h includes/

CFLAGS= -Wall -Wextra -Werror $(INCLUDE)
DEBUG=sanitize
OPT=LIB
ARCH:= $(shell uname)

ifeq ($(ARCH), Darwin)
	CC= clang
else ifeq ($(ARCH), Linux)
	CC=gcc-8
endif

ifeq ($(DEBUG), yes)
	CFLAGS+= -g3
else ifeq ($(DEBUG), prod)
	CFLAGS+= -O3 -DNDEBUG
else ifeq ($(DEBUG), sanitize)
	CFLAGS+= -g3 -fsanitize=address
endif

INCLUDE=\

SRC= \

OBJDIR= obj/

OBJ= $(addprefix $(OBJDIR)/, $(SRC:%.c=%.o))

LIBDIR= libft/
LIB= libft.a

NAME= 

GREEN="\033[32m"
RESET="\033[0m"

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $(OBJ) -L$(LIBDIR) -lft
	@echo $(GREEN)$@" Successfully created"$(RESET)

$(OBJDIR)/%.o: $(SRCDIR)%.c nm.h | $(OBJDIR)
	$(COMPILE.c) $< -o $@


$(OBJDIR):
	-mkdir -p $@

main:
	$(CC) $(CFLAGS) -o test $(main) -L$(LIBDIR) -lft
	-rm -f $(main:.c=.o)

tags:
	ctags -R *

rules:
	@echo 'lportay' > auteur
	@echo "Here are the things to review before turning in your work\n\
	1. Leaks\n\
	2. Forbidden Functions\n\
	3. Drop Useless Libraries\n\
	3. Norme\n\
	4. Adequate Compilation Flags\n\
	5. Squash Commits\n\
	6. Test properly and thoroughly your project\n\
	7. Ask someone to review/test your project"

clean:
	$(RM) -r $(OBJDIR) 
	@$(RM) test a.out
	@$(RM) -r test.dSYM

fclean: clean
	$(RM) $(NAME)
	@$(RM) -r $(NAME).dSYM

re:
	$(MAKE) fclean
	$(MAKE) all
