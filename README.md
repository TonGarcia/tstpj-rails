# Node version fix

1. n install stable: ``` $ npm install -g n && sudo n stable && node -ve ```
2. nvm select version: ``` $ nvm use 14.17.5 ```
3. nvm for each project: ``` $ .nvmrc ``` >> ``` v14.17.5 ```
4. select nvm from .nvmrc: ``` $ nvm use ```
5. node globally version: ``` nvm alias default 14.17.5 ```

# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# EXAM QUESTIONS

## Q3:
As tabelas FUNCIONÁRIO e ESPECIALIDADE serão utilizadas para responder as perguntas 1 e 2.
Utilize Rails ou SQL.

Ordenar as informações das tabelas abaixo, alfabeticamente: os funcionários pelo campo nome_completo e que sejam pertinentes a especialidade “Analista programador” e que ainda não foram dispensados.

![question-3]()

## Q4:
Utilizando JOIN, retornar o(s) funcionário(s) que pertança(m) a uma especialidade seja de Curitiba (campo localidade).

## Q5:
A tabela CUSTOS será utilizada para responder as perguntas 3 e 4.
Utilize Rails ou SQL.

Selecione o maior custo para onde a ordem seja 325.

![question-5]()

## Q6:
Selecione o custo total para o mês de agosto.

## Q7:
Selecione a única alternativa correta para a seguinte consulta em SQL.

![question-7]()

## Q8:
Selecione a única alternativa correta para a sequinte consulta em SQL.

![question-8]()

## Q9:
Selecione a única alternativa correta sobre SQL.

## Q10:
Selecione a única alternativa correta.
O trecho de código abaixo serve para as perguntas 8 e 9.

![question-10]()

## Q11:
Selecione a única alternativa que não está correta.

## Q12:
O trecho de código abaixo serve para as perguntas 10 e 11.

## Q13:
Selecione a única alternativa correta.

## Q14:
A imagem abaixo serve para as perguntas 12 e 13
Utilizando git como ferramenta de controle de versões, expresse os comandos necessários para adicionar, comitar e enviar para o repositório remoto as modificações.

![question-14]()

## Q15:
Utilizando git como ferramenta de controle de versões, expresse os comandos necessários para reverter as modificações realizadas localmente.

## Q16:
Utilizando git como ferramenta de controle de versões, expresse os comandos necessários para criar uma nova branch chamada “nova123” a partir da master.



# SCAFFOLDS
1. ``` $ rails g scaffold Especialidade descricao:string ativo:boolean localidade:string ```
2. ``` $ rails g scaffold Funcionario nome_completo:string endereco:string especialidade:belongs_to data_admissao:date data_dispensa:date ```
