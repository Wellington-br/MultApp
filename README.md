# multApp

Um novo projeto Flutter criado com FlutLab - https://flutlab.io

Documentação do seu projeto Flutter MultApp:
MultApp é um aplicativo Flutter desenvolvido para dispositivos móveis com várias funcionalidades. Ele possui uma tela principal com três opções:
1. Escolha de combustível (Álcool ou Gasolina)
2. Frases do dia (gera uma frase aleatória ao clicar)
3. Tela de jogos, incluindo:
   - Jokenpô
   - Cara ou Coroa
   - Adivinhacao
Este projeto foi desenvolvido utilizando o Flutter e Dart no ambiente online https://flutlab.io/.

Funcionalidades

1. Tela Principal
A tela principal contém três botões, que executam as seguintes ações:

Botão 1: Escolha de Combustível
O usuário pode escolher entre os combustíveis Álcool e Gasolina e verificar qual é o mais vantajoso dependendo do preço.

Botão 2: Frases do Dia
 Ao clicar neste botão, uma nova frase é gerada aleatoriamente, oferecendo inspiração ou motivação ao usuário.

Botão 3: Jogos
Jokenpô: O clássico jogo de Pedra, Papel e Tesoura. 
Cara ou Coroa: O jogo de azar onde o usuário escolhe cara ou coroa e o computador gera o resultado.
Adivinhação: Um jogo simples de forca onde o usuário deve adivinhar a palavra.
Jokenpô
Neste jogo, o usuário pode clicar nos botões de Pedra, Papel ou Tesoura, e o computador faz uma escolha aleatória. O vencedor é determinado pelas regras tradicionais do Jokenpô.

Cara ou Coroa
Neste jogo, o usuário escolhe "cara" ou "coroa" e o computador decide aleatoriamente o resultado, exibindo "Vitória" ou "Perda" para o usuário.

 Adivinhação
O usuário tem que adivinhar uma palavra antes que as tentativas se esgotem.

---

Requisitos

1. Sistema Operacional
Este projeto foi desenvolvido e testado em um ambiente online. Para rodar o projeto corretamente, você precisa acessar https://flutlab.io/ carregar o arquivo zipado conforme figuras abaixo:
Crie uma conta no site, depois já no ambiente de criação de projeto clique em CREAT PROJECT,
na próxima tela no canto superior a direita clique em UPLOAD AS ZIP FILE depois escolha o arquivo clique UPLOAD e abra o projeto criado.
No ambiente do código clique no botão azul de play no canto superior esquerdo da tela para compilar o código.
O aplicativo será iniciado no emulador Android.
Estrutura do Projeto
O projeto está organizado da seguinte maneira:
multapp/
├── lib/
│   ├── main.dart                # Arquivo principal que inicia o app
│   ├── telaprincipal.dart       # Tela principal com os 3 botões
│   ├── jjokenpo.dart        # Jogo Jokenpô
│   ├── caraoucoroa.dart     # Jogo Cara ou Coroa
│   └── advinhacao.dart          # Adivinhação
├── pubspec.yaml                 # Dependências do projeto
└── README.md                    # Este arquivo de documentação

Descrição dos Arquivos Principais:
•	main.dart: Arquivo principal que inicializa o aplicativo e define a tela inicial.
•	teprincipal.dart: Contém a tela principal com os 3 botões.
•	jjokenpo.dart: Implementação do jogo Jokenpô.
•	caraoucoroa.dart: Lógica do jogo Cara ou Coroa.
•	adivinhacao.dart: Lógica do jogo adivinhação

Agradecimentos
Agradecemos a todos que contribuíram para o desenvolvimento do projeto.
Equipe:
Karizia Marques 
Rodrigo Anderson
Wellington Barroso
Jonatha de Araújo
Essa documentação agora é voltada especificamente ambiente online ou uma IDE com devidas configurações para o DART e FLUTTER.



