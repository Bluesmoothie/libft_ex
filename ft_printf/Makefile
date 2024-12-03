.PHONY		:	all clean fclean re

CC			=	gcc
CFLAGS		=	-Wall -Werror -Wextra -I

NAME		=	libftprintf.a

INCLUDE		=	include
SRC_DIR		=	src/
OBJ_DIR		=	obj/

RM			=	rm -f
LIBC		=	ar rc
LIBR		= 	ranlib

SRC_FILES	=	libftprintf \
				printer_1 \
				printer_2 \
				hex \
				ft_uitoa

SRC 		= 	$(addprefix $(SRC_DIR), $(addsuffix .c, $(SRC_FILES)))
OBJ 		= 	$(addprefix $(OBJ_DIR), $(addsuffix .o, $(SRC_FILES)))

all			:	$(NAME)

$(NAME)		:	$(OBJ_DIR) $(OBJ) $(INCLUDE)/ft_printf.h $(INCLUDE)/libft.h
			$(LIBC) $(NAME) $(OBJ)
			$(LIBR) $(NAME)

$(OBJ_DIR)	:
			mkdir $(OBJ_DIR)

$(OBJ_DIR)%.o: $(SRC_DIR)%.c
			$(CC) $(CFLAGS) $(INCLUDE) -c $< -o $@

clean		:
			$(RM) -rf $(OBJ_DIR)

fclean		:	clean
			$(RM) -f $(NAME)

re			:	fclean all
