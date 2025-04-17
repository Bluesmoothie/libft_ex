.PHONY		: 	all clean fclean re FORCE norm

NAME		=	libft_ex.a

#			COMMON

BUILD_DIR	=	.build/
FT_PRINTF 	=	ft_printf/
GNL 		=	get_next_line/
CORE 		=	core/

#			SRC

LIBFTPRINTF =	$(FT_PRINTF)libftprintf.a
LIBGNL		=	$(GNL)libgnl.a
LIBFT_CORE	=	$(CORE)libft.a

#			RULES

all				: $(NAME)

$(NAME)			: $(LIBFTPRINTF) $(LIBGNL) $(LIBFT_CORE) $(BUILD_DIR)
				cp $(LIBFTPRINTF) $(BUILD_DIR)
				cp $(LIBGNL) $(BUILD_DIR)
				cp $(LIBFT_CORE) $(BUILD_DIR)
				ar -x $(BUILD_DIR)libftprintf.a --output=$(BUILD_DIR)
				ar -x $(BUILD_DIR)libgnl.a --output=$(BUILD_DIR)
				ar -x $(BUILD_DIR)libft.a --output=$(BUILD_DIR)
				ar -rcs $(NAME) $(BUILD_DIR)*.o

$(BUILD_DIR)	:
				mkdir -p $(BUILD_DIR)

$(LIBFTPRINTF)	:	FORCE
				$(MAKE) -C $(FT_PRINTF)

$(LIBGNL)		:	FORCE
				$(MAKE) -C $(GNL)

$(LIBFT_CORE)	:	FORCE
				$(MAKE) -C $(CORE)

FORCE			:

norm			:
				norminette include
				$(MAKE) -C $(FT_PRINTF) norm
				$(MAKE) -C $(GNL) norm
				$(MAKE) -C $(CORE) norm

clean			:
				$(MAKE) -C $(FT_PRINTF) clean
				$(MAKE) -C $(GNL) clean
				$(MAKE) -C $(CORE) clean
				rm -rf $(BUILD_DIR)

fclean			: clean
				$(MAKE) -C $(FT_PRINTF) fclean
				$(MAKE) -C $(GNL) fclean
				$(MAKE) -C $(CORE) fclean
				rm -f $(NAME)

re				: fclean all