# **************************************************************************** #
#                                                           LE - /             #
#                                                               /              #
#    Makefile                                         .::    .:/ .      .::    #
#                                                  +:+:+   +:    +:  +:+:+     #
#    By: thbrouss <marvin@le-101.fr>                +:+   +:    +:    +:+      #
#                                                  #+#   #+    #+    #+#       #
#    Created: 2018/10/24 17:57:21 by thbrouss     #+#   ##    ##    #+#        #
#    Updated: 2018/11/27 17:42:14 by thbrouss    ###    #+. /#+    ###.fr      #
#                                                          /                   #
#                                                         /                    #
# **************************************************************************** #

.PHONY: all clean fclean re

NAME = libftprintf.a
OUT = ft_test
MAKE = make
CC = gcc
FLAGS = -Wall -Werror -Wextra 
INCLUDE = ./includes

#------------------------------------FILE--------------------------------------#

FILES=utils\
utils2\
is_helper\
handle_padding\
conv_all\
conv_strings\
conv_void\
conv_basic\
conv_un\
conv_o\
conv_hex\
src/ft_strjoin\
src/ft_strnew\
src/ft_strrev\
src/ft_strncpy\
src/ft_strcpy\
src/ft_strlen\
src/ft_isdigit\
src/ft_fstrjoin\
src/ft_strdup\
src/ft_write_inc\
src/ft_write_len\
src/ft_strdel\
src/ft_init_lst\
src/ft_free_lst\
parse_input\
ft_printf

#----------------------------------SOURCE--------------------------------------#

SRC = $(addsuffix .c, $(FILES))

#----------------------------------OBJECT--------------------------------------#

OBJ = $(addsuffix .o, $(FILES))

#-----------------------------------RULE---------------------------------------#

all: $(NAME)

$(NAME): $(OBJ) ./includes/printf.h
		@ar rcs $@ $^

%.o: %.c ./includes/printf.h
	@$(CC) $(FLAGS) -o $@ -c $< -I $(INCLUDE)

%src/.o: %src/.c ./includes/libft.h
	@$(CC) $(FLAGS) -o $@ -c $< -I $(INCLUDE)

test:
	@echo "\033[1m|---------------------------------|\033[0m"
	@echo "\033[1m|-------Compilation du prog-------|\033[0m"
	@echo "\033[1m|---------------------------------|\033[0m"
	@echo "\033[1m|---------------------------------|\033[0m"
	@echo "\033[1m|---------Creation du prog--------|\033[0m"
	@echo "\033[1m|---------------------------------|\033[0m"
	@$(CC) $(FLAGS) -g -o $(OUT) $(SRC) main.c -I$(INCLUDE) -L. -lftprintf

clean:
	@echo "\033[1m|---------------------------------|\033[0m"
	@echo "\033[1m|-------Supprimer les OBJECT------|\033[0m"
	@echo "\033[1m|---------------------------------|\033[0m"
	@rm -f $(OBJ)

fclean: clean
	@echo "\n"
	@echo "\033[1m|---------------------------------|\033[0m"
	@echo "\033[1m|-------Supprimer la libftprintf.a------|\033[0m"
	@echo "\033[1m|---------------------------------|\033[0m"
	@rm -f $(NAME)

re: fclean all
