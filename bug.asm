```assembly
mov eax, [ebp+8] ; Load the first argument
mov ebx, [ebp+12] ; Load the second argument
mov ecx, [ebp+16] ; Load the third argument
add eax, ebx ; Add the first two arguments
mul ecx ; Multiply by the third argument
mov [ebp-4], eax ; Store the result
```