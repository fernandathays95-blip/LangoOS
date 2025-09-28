# 💻 LangoOS - Um Sistema Operacional Monolítico e Modular

## Visão Geral

O **LangoOS** é um projeto de Sistema Operacional de código aberto, construído para fins educacionais e de pesquisa em sistemas de baixo nível. Nossa meta é desenvolver um SO que demonstre a arquitetura **Monolítica e Modular**, inspirada em sistemas robustos como o Linux.

O projeto é focado na clareza do código e na documentação do processo de desenvolvimento, começando do **Bootloader** e evoluindo para um kernel com gerenciamento de memória e multitarefa.

## 🚀 Status Atual do Projeto

O LangoOS está em sua fase inicial de desenvolvimento (*bootstrapping*).

* **Fase Atual:** Hello World Stage.
* **Funcionalidade Principal:** O sistema carrega o *bootloader*, entra no modo protegido da CPU e executa a função principal do kernel em C, exibindo uma mensagem de sucesso na tela.

## ⚙️ Arquitetura e Tecnologia

| Componente | Linguagem | Função |
| :--- | :--- | :--- |
| **Bootloader** | Assembly (NASM) | Carrega o Kernel do disco para a memória RAM (primeiros 512 bytes). |
| **Kernel Principal** | C | Núcleo do sistema, responsável por gerenciar recursos. |
| **Plataforma Alvo** | x86 (32-bit) | Arquitetura de processador inicial para facilitar o desenvolvimento e o aprendizado. |
| **Arquitetura do Kernel** | Monolítico/Modular | Combina alta performance com flexibilidade para carregamento de *drivers* (módulos). |

## 🛠️ Como Construir e Testar

Para compilar e testar o LangoOS, você precisará de um ambiente de desenvolvimento Linux/Unix (ou WSL no Windows).

### Pré-requisitos

1.  **GCC (GNU Compiler Collection):** Para compilar o código C do kernel.
2.  **NASM (Netwide Assembler):** Para montar o código Assembly do *bootloader*.
3.  **QEMU:** Um emulador de máquina para rodar o LangoOS sem afetar seu sistema operacional principal.
4.  **Make:** Para automatizar o processo de *build* usando o `Makefile` do projeto.

### Passos de Compilação

1.  **Clonar o Repositório:**
    ```bash
    git clone [https://www.youtube.com/watch?v=X49Wz3icO3E](https://www.youtube.com/watch?v=X49Wz3icO3E)
    cd langoos
    ```
2.  **Compilar (Usando o Makefile):**
    ```bash
    make
    ```
3.  **Executar no QEMU:**
    ```bash
    make run
    ```

## 📝 Próximos Passos (Roadmap)

Os próximos objetivos do LangoOS incluem:

1.  **Gerenciamento de Memória:** Implementar alocação de memória e paginação.
2.  **Agendamento de Tarefas:** Introduzir a capacidade de multitarefa (rodar múltiplos processos).
3.  **Sistema de Arquivos:** Suporte básico para leitura e escrita de dados.
4.  **Interface de Linha de Comando (Shell):** Criar a primeira interface para interação do usuário.

## 🤝 Contribuições

Este é um projeto de aprendizado aberto. Contribuições são bem-vindas! Se você deseja contribuir com código, documentação ou novas ideias, consulte o arquivo `CONTRIBUTING.md` (a ser criado) para mais detalhes.

## 📜 Licença

O LangoOS é distribuído sob a Licença **MIT**.

---
