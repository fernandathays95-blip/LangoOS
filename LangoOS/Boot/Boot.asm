; boot.asm - Bootloader do LangoOS

[org 0x7c00]          ; O BIOS carrega nosso bootloader aqui (endereço padrão)

BITS 16               ; Começamos em modo 16 bits (o modo real)

; --- 1. Exibir uma mensagem simples em 16 bits (opcional, mas bom para debug) ---
mov si, msg_boot      ; Carrega o endereço da mensagem
call print_string_16  ; Chama a rotina de impressão

; --- 2. Preparar para o modo 32 bits e carregar o Kernel (Foco principal) ---
call switch_to_pm     ; Salta para a rotina que ativa o Modo Protegido

; A partir daqui, o código estará no modo 32 bits e o kernel.c será carregado.
; O próximo código (não escrito aqui) faria o "salto" para kernel_main
; Por enquanto, vamos parar aqui.

jmp $                 ; Loop infinito para evitar travamento

; Rotina de impressão simples (modo 16 bits)
print_string_16:
    lodsb             ; Carrega um byte da string (DS:SI) para AL
    or al, al         ; É o caractere nulo (fim da string)?
    jz print_end      ; Sim, termina
    mov ah, 0x0e      ; Função do BIOS para imprimir caractere
    mov bh, 0x00      ; Página de exibição
    int 0x10          ; Interrupção de vídeo do BIOS
    jmp print_string_16 ; Próxima iteração
print_end:
    ret

; Rotina para mudar para Modo Protegido (switch_to_pm)
; Esta rotina é longa e requer a configuração da GDT (Global Descriptor Table).
; Por ser complexa, usaremos uma função simplificada por enquanto para manter o foco.
switch_to_pm:
    ; ... (Código para desabilitar interrupções, configurar GDT,
    ; ... e ativar o bit PE no CR0 para entrar no Modo Protegido)
    ret

; Dados (mensagens)
msg_boot db "LangoOS Bootloader carregado. Iniciando kernel...", 0

; Preenchimento e Assinatura (512 bytes total)
times 510 - ($ - $$) db 0
dw 0xAA55             ; Assinatura de bootloader obrigatória

