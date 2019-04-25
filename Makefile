# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lportay <lportay@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/09/13 10:52:14 by lportay           #+#    #+#              #
#    Updated: 2019/04/25 18:12:48 by lportay          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.PHONY: clean fclean re all tags rules

all:
	$(MAKE) -C C/
	$(MAKE) -C ASM/

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
	$(MAKE) -C C/ clean
	$(MAKE) -C ASM/ clean
	$(RM) Ruby/Sully_*.rb Ruby/Grace_kid.rb

fclean: clean
	$(MAKE) -C C/ fclean
	$(MAKE) -C ASM/ fclean

re:
	$(MAKE) fclean
	$(MAKE) all
