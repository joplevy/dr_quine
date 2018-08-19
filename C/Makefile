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
C_NAME = Colleen.c
G_NAME = Grace.c
S_NAME = Sully.c
OBJ_NAME_C = $(C_NAME:.c=.o)
OBJ_NAME_G = $(G_NAME:.c=.o)
OBJ_NAME_S = $(S_NAME:.c=.o)
TRASH = tmp_Colleen \
		Grace_kid.c
		Sully_*
RM = rm -f

all: $(NAME_G) $(NAME_C) $(NAME_S)

$(NAME_G): $(OBJ_NAME_G)
	@echo "Creating C Grace"
	@$(CC) -o $(NAME_G) $(OBJ_NAME_G)
	@echo "  Well done"

$(NAME_C): $(OBJ_NAME_C)
	@echo "Creating C Colleen"
	@$(CC) -o $(NAME_C) $(OBJ_NAME_C)
	@echo "  Well done"

$(NAME_S): $(OBJ_NAME_S)
	@echo "Creating C Sully"
	@$(CC) -o $(NAME_S) $(OBJ_NAME_S)
	@echo "  Well done"

%.o: %.c
	@echo $@
	@$(CC) $(CFLAG) -o $@ -c $<
	@echo "  Well done"

clean:
	@$(RM) $(OBJ_NAME_C) $(OBJ_NAME_G) $(TRASH)

fclean: clean
	@$(RM) $(NAME_C) $(NAME_G)

re: fclean all
