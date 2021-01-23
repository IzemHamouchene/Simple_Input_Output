a.out:
	gcc main.c -o Init/a.out

clean:
	rm hello

test: a.out
	(cd Init/; bash test.sh)