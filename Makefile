build: mysudo.c
	gcc mysudo.c -o mysudo
	sudo chown root:root mysudo
	sudo chmod u+s mysudo
run:
	./mysudo root /debug/hello

clean:
	rm mysudo

test:
	echo "hello world!" > debug/message.txt
	
debug: mysudo.c
	gcc -g -o mysudo mysudo.c
	gdb mysudo