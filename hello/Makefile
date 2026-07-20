all (must, so your problem can compile):
  32-bit:
	nasm -f elf32 -o hello32.o hello32.asm
	ld -o hello_application32 hello32.o
  64-bit:
  nasm -f elf64 -o hello.o hello.asm
  ld -o hello_application64 hello.o
clean(only good if you don't need binaries):
  32-bit:
	rm hello_application32 
  rm hello.o
  64-bit:
  rm hello_application64 
  rm hello.o
