# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cgoldens <cgoldens@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/01 11:31:20 by cgoldens          #+#    #+#              #
#    Updated: 2024/10/09 16:50:34 by cgoldens         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#TODO faire avec les fichier a la racine et enlever le _bonus au bonus
#TODO mettre une variable tmp dans lstmap
CC = gcc
CFLAGS = -Wall -Wextra -Werror -I
INCLUDES	=	./
SRC_DIR 	=	./*
SRC_B_DIR	=	src_bonus/*/
SRC = $(wildcard $(SRC_DIR)/ft_*.c)
SRCBONUS = $(wildcard $(SRC_B_DIR)/ft_*_bonus.c)
OBJ = $(SRC:.c=.o)
OBJBONUS = $(SRCBONUS:.c=.o)
NAME = libft.a
# Règles
all: $(NAME)

%.o: %.c
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

clean:
	/bin/rm -f $(OBJ) $(OBJBONUS)

fclean: clean
	/bin/rm -f $(NAME)

bonus: $(OBJBONUS)
	ar rc $(NAME) $(OBJBONUS)
	ranlib $(NAME)
	
re: fclean all

.PHONY: all clean fclean re bonus
