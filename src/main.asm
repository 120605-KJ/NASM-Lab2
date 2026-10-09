global _start

section .text
_start:
    mov rax, 7          ; operand 1 wpisuje liczbę 7 do rejestru
    mov rbx, 3          ; operand 2 wpisuje liczbę 3 do rejestru

    cmp rax, rbx        ; porównuje obie liczby
    je equal            ; skacze do equal jeśli liczby są równe
    jg greater          ; skacze do greater jeśli pierwsza liczba jest większa
    jl less             ; skacze do less jeśli pierwsza liczba jest mniejsza

greater:
    mov rdi, 1
    jmp exit_program

equal:
    mov rdi, 0
    jmp exit_program

less:
    mov rdi, -1

exit_program:
    mov rax, 60         ; kończy program w systemie
    syscall
