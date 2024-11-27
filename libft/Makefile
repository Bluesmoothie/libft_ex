.PHONY		: 	all clean fclean re

CC			=	gcc
CFLAGS		= 	-Wall -Wextra -Werror

NAME		=	libft.a

INCLUDE		=	include
SRC_DIR		=	src/
OBJ_DIR		=	obj/

SRC_FILES	= 	ft_isalpha 		\
				ft_isdigit 		\
				ft_isalnum 		\
				ft_isascii 		\
				ft_isprint 		\
				ft_strlen 		\
				ft_memset 		\
				ft_bzero 		\
				ft_memcpy 		\
				ft_memmove 		\
				ft_strlcpy 		\
				ft_strlcat 		\
				ft_toupper 		\
				ft_tolower 		\
				ft_strchr 		\
				ft_strrchr 		\
				ft_strncmp 		\
				ft_memchr		\
				ft_memcmp 		\
				ft_strnstr 		\
				ft_atoi 		\
				ft_calloc 		\
				ft_strdup 		\
				ft_substr 		\
				ft_strjoin 		\
				ft_strtrim 		\
				ft_split 		\
				ft_itoa 		\
				ft_strmapi 		\
				ft_striteri 	\
				ft_putchar_fd 	\
				ft_pustr_fd 	\
				ft_putendl_fd 	\
				ft_putnbr_fd 	\
				ft_lstnew 		\
				ft_lstadd_front \
				ft_lstsize 		\
				ft_lstlast 		\
				ft_lstadd_back 	\
				ft_lstdelone 	\
				ft_lstclear 	\
				ft_lstiter 		\
				ft_lstmap

SRC 		= 	$(addprefix $(SRC_DIR), $(addsuffix .c, $(SRC_FILES)))
OBJ 		= 	$(addprefix $(OBJ_DIR), $(addsuffix .o, $(SRC_FILES)))

RM			=	rm -rf
LIBC		=	ar rc
LIBR		= 	ranlib

all		: $(NAME)

$(NAME)	: $(OBJ_DIR) $(OBJ) $(INCLUDE)/libft.h
		$(LIBC) $(NAME) $(OBJ)
		$(LIBR) $(NAME)

$(OBJ_DIR)	:
			mkdir $(OBJ_DIR)

$(OBJ_DIR)%.o: $(SRC_DIR)%.c
		$(CC) $(CFLAGS) -I $(INCLUDE) -c $< -o $@

clean	:
		$(RM) $(OBJ_DIR)

fclean	: clean
		$(RM) $(NAME)

re		: fclean all