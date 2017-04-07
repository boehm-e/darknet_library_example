CC =            gcc

CFLAGS +=       -Wall -Wextra -W -g -g03 -pedantic
NAME    =       samaritain

SRC     =       src/main.c

OBJ     =       $(SRC:%.c=%.o)  $(SRCS:.c=.o)

RM      =       rm -f

LDFLAGS	=				 lib/libdarknet.a -lpthread  -lopencv_core -lopencv_highgui -lm


$(NAME):        $(OBJ)
								$(CC) -o $(NAME) $(OBJ) $(LDFLAGS)

all:            $(NAME)

clean:
								$(RM) $(OBJ) $(NAME)

fclean:         clean
								$(RM) $(NAME)

run:            $(NAME)
								./${NAME}

re:             fclean all
