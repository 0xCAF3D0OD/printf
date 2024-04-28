# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kdi-noce <kdi-noce@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/12 16:35:10 by kdi-noce          #+#    #+#              #
#    Updated: 2021/11/24 21:30:43 by kdi-noce         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a 
CC = gcc
OBJDIR = obj
FLAGS = -Wall -Wextra -Werror
SRC =	ft_fctbase.c\
		ft_itohex.c\
		ft_mitoa.c\
		ft_printf.c\
		ft_uitoa

OBJ = $(SRC:.c=.o)

all: $(NAME)

$(OBJDIR)/%.o: %.c
	$(CC) $(CFLAG) -c $< -o $@

$(NAME):	$(OBJ)
	ar rc $(NAME) $(OBJ)

clean:
	/bin/rm -f $(OBJ)
fclean: clean
	/bin/rm -f $(NAME)
	

re: fclean all

.PHONY: clean fclean re all
