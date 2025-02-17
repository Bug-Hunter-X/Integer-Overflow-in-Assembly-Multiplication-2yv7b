```assembly
mov eax, [ebp+8] ; Load the first argument
mov ebx, [ebp+12] ; Load the second argument
mov ecx, [ebp+16] ; Load the third argument

; Check for potential overflow before multiplication
mov edx, eax
imul ecx  ; Signed multiplication
jo overflow_handler ; Jump to handler if overflow occurs

add eax, ebx ; Add the first two arguments
mov [ebp-4], eax ; Store the result
jmp end

overflow_handler:
; Handle overflow (e.g., set error flag, return error code)
mov [ebp-4], -1 ; Indicate an error
end:
```