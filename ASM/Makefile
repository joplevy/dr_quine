# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jplevy <jplevy@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/03/10 13:21:18 by jplevy            #+#    #+#              #
#    Updated: 2016/11/06 17:31:38 by jplevy           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME_C = Colleen
NAME_G = Grace
NAME_S = Sully
CC = gcc
CFLAG = -Wall -Werror -Wextra
NASM = ~/.brew/bin/nasm -f macho64
C_NAME = Colleen.s
G_NAME = Grace.s
S_NAME = Sully.s
OBJ_NAME_C = $(C_NAME:.s=.o)
OBJ_NAME_G = $(G_NAME:.s=.o)
OBJ_NAME_S = $(S_NAME:.s=.o)
TRASH = tmp_Colleen \
		Grace_kid.s \
		Sully_*
RM = rm -f

all: $(NAME_G) $(NAME_C) $(NAME_S)

$(NAME_G): $(OBJ_NAME_G)
	@echo "Creating ASM Grace"
	@$(CC) -o $(NAME_G) $(OBJ_NAME_G)
	@echo "  Well done"

$(NAME_S): $(OBJ_NAME_S)
	@echo "Creating ASM Sully"
	@$(CC) -o $(NAME_S) $(OBJ_NAME_S)
	@echo "  Well done"

$(NAME_C): $(OBJ_NAME_C)
	@echo "Creating ASM Colleen"
	@$(CC) -o $(NAME_C) $(OBJ_NAME_C)
	@echo "  Well done"

%.o: %.s
	@echo $@
	@$(NASM) $<
	@echo "  Well done"

clean:
	@$(RM) $(OBJ_NAME_C) $(OBJ_NAME_G) $(OBJ_NAME_S) $(TRASH)

fclean: clean
	@$(RM) $(NAME_C) $(NAME_G) $(NAME_S)

re: fclean all
