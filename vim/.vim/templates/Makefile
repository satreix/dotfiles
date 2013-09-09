CFILES=main.c
COMP=clang
DEBUG= -g
CFLAGS= -O2 -Wall ${DEBUG}
LIB=
EXE="a.out"
O=${CFILES:.c=.o}

${EXE}: clean ${O}
	${COMP} ${CFLAGS} ${LIB} -o $@ ${O}

.SUFFIXES: .c .o
.c.o:
	${COMP} ${CFLAGS} -c $<

clean:
	rm -vf *.o

fullclean: clean
	rm -vf ${EXE}
