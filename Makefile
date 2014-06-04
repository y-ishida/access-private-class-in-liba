all: test.vala liba.a
	valac --save-temps -g -X -w -X -L. -X -la test.vala a.vapi

liba.a: a1.o a2.o
	ar rcsv liba.a a1.o a2.o

a1.o a2.o: a1.vala a2.vala
	valac --save-temps -H public.h --internal-header=internal.h --internal-vapi=a.vapi \
		 -g -c -X -w -c a1.vala a2.vala

#a1.o a2.o: a1.vala a2.vala
#	valac --save-temps -H public.h --vapi=a.vapi \
#		 -g -c -X -w -c a1.vala a2.vala

clean:
	rm test *.c *.o *.h *.a *.vapi

