# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cgoldens <cgoldens@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/01 11:31:20 by cgoldens          #+#    #+#              #
#    Updated: 2024/10/03 15:32:25 by cgoldens         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#TODO faire les bonus vu que j'ai le temps
CC = gcc
CFLAGS = -Wall -Wextra -Werror -I
INCLUDES	=	./
SRC_DIR 	=	src/*/
SRC = $(wildcard $(SRC_DIR)/ft_*.c)
OBJ = $(SRC:.c=.o)
NAME = libft.a
# Règles
all: $(NAME)

%.o: %.c
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

clean:
	/bin/rm -f $(OBJ)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
