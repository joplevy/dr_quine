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

C_PATH = ./C/
ASM_PATH = ./ASM/

all:
	$(MAKE) -C $(C_PATH)
	$(MAKE) -C $(ASM_PATH)

clean:
	$(MAKE) -C $(C_PATH) clean
	$(MAKE) -C $(ASM_PATH) clean

fclean: clean
	$(MAKE) -C $(C_PATH) fclean
	$(MAKE) -C $(ASM_PATH) fclean

re: fclean all
