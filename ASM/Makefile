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
CC = gcc
CFLAG = -Wall -Werror -Wextra
NASM = ~/.brew/bin/nasm -f macho64
C_NAME = Colleen.asm
G_NAME = Grace.asm
OBJ_NAME_C = $(C_NAME:.asm=.o)
OBJ_NAME_G = $(G_NAME:.asm=.o)
TRASH = tmp_Colleen \
		Grace_kid.asm
RM = rm -f

all: $(NAME_G) $(NAME_C)

$(NAME_G): $(OBJ_NAME_G)
	@echo "Creating ASM Grace"
	@$(CC) -o $(NAME_G) $(OBJ_NAME_G)
	@echo "  Well done"

$(NAME_C): $(OBJ_NAME_C)
	@echo "Creating ASM Colleen"
	@$(CC) -o $(NAME_C) $(OBJ_NAME_C)
	@echo "  Well done"

%.o: %.asm
	@echo $@
	@$(NASM) $<
	@echo "  Well done"

clean:
	@$(RM) $(OBJ_NAME_C) $(OBJ_NAME_G) $(TRASH)

fclean: clean
	@$(RM) $(NAME_C) $(NAME_G)

re: fclean all
