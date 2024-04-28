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
FLAGS = -Wall -Wextra -Werror

SRC = $(wildcard *.c)

OBJ = $(SRC:.c=.o)

OBJDIR = obj

all: $(OBJDIR) $(NAME)

$(OBJDIR)/%.o: %.c
	$(CC) $(FLAGS) -c $< -o $@

$(OBJDIR):
	mkdir -p $(OBJDIR)

$(NAME): $(addprefix $(OBJDIR)/, $(OBJ))
	ar rc $(NAME) $(addprefix $(OBJDIR)/, $(OBJ))

clean:
	/bin/rm -f $(addprefix $(OBJDIR)/, $(OBJ))
	/bin/rm -r $(OBJDIR)
fclean: clean
	/bin/rm -f $(NAME)

re: fclean all

.PHONY: clean fclean re all

