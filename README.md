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

### A3:
Código Fonte: https://github.com/TonGarcia/tstpj-rails

Resposta
especialidade = Especialidade.find_by(descricao: 'Analista programador')
funcionarios = especialidade.funcionarios.where('data_dispensa IS NULL')
order_funcionarios = funcionarios.order('nome_completo ASC')
order_funcionarios

## Q4:
Utilizando JOIN, retornar o(s) funcionário(s) que pertança(m) a uma especialidade seja de Curitiba (campo localidade).

### A4:
Funcionario.joins(:especialidade).where(especialidades: {localidade: 'Curitiba'})

## Q5:
A tabela CUSTOS será utilizada para responder as perguntas 3 e 4.
Utilize Rails ou SQL.

Selecione o maior custo para onde a ordem seja 325.

![question-5]()

### A5
Melhor peformance para ter apenas o maior custo: Custo.where(ordem: 325).maximum(:cost_value)
Melhor código para obter o registro com o maior custo: Custo.where(ordem: 325).order('cost_value DESC').first

## Q6:
Selecione o custo total para o mês de agosto.

### A6:
Custo.where(:created_at => '2016-08-01'.to_datetime..'2016-08-31'.to_datetime).sum('cost_value')

## Q7:
Selecione a única alternativa correta para a seguinte consulta em SQL.

![question-7]()

### A7: 
(c) Irá retorar os valores maiores que 900 e agrupados por employee_id.

## Q8:
Selecione a única alternativa correta para a sequinte consulta em SQL.

![question-8]()

### A8
(d) Irá retornar a média de custo por mês.

## Q9:
Selecione a única alternativa correta sobre SQL.

### A9:
(a) Para trazer registros distintos, utilizo DISTINCT logo após SELECT.

## Q10:
Selecione a única alternativa correta.
O trecho de código abaixo serve para as perguntas 8 e 9.

![question-10]()

### A10
(e) As colunas e linhas ficarão desalinhados.

## Q11:
Selecione a única alternativa que não está correta.

### A11
(b) As cores de fundo da tabela e das coluna são diferentes.

## Q12:
O trecho de código abaixo serve para as perguntas 10 e 11.

### A12
(b) A segunda div apresentará o OK2 e NOK2 com quebra de linha.

## Q13:
Selecione a única alternativa correta.

### A13
(b) O “Texto1” tem uma fonte maior que o “Texto2”.

## Q14:
A imagem abaixo serve para as perguntas 12 e 13
Utilizando git como ferramenta de controle de versões, expresse os comandos necessários para adicionar, comitar e enviar para o repositório remoto as modificações.

![question-14]()

### A14
git add . -A (adicionar todas alterações, incluindo remoção de arquivos)
git commit -m 'mensagem aqui' (commit com mensagem)
git pull (sincronizar)
git push (enviar)

## Q15:
Utilizando git como ferramenta de controle de versões, expresse os comandos necessários para reverter as modificações realizadas localmente.

### A15
Revertendo todas a alterações locais não enviadas para o repositório (push): git reset
Revertendo para commits anteriores localmente: git revert <commit 1>

## Q16:
Utilizando git como ferramenta de controle de versões, expresse os comandos necessários para criar uma nova branch chamada “nova123” a partir da master.

### A16
Criando uma nova branch local: git checkout -b nova123

## Q17 
Utilizando git como ferramenta de controle de versões, expresse os comandos necessários para atualizar o código local com o código remoto (merge).

### A17
git pull (se houver conflito para merge a ser feito será necessário fazer a escolha do código que será mantido e então fazer o processo completo: add, commit, push)

## Q18
Selecione a única opção de retorno para o seguinte trecho de código.

### A18
(b) “a defined? true” e “b defined? true”.

## Q19
Selecione a única alternativa correta referente a JavaScript.

### A19
(d) “=” serve para atribuir valor e “===” para verificar valor e tipo de variável.

## Q20
Selecione a única alternativa correta referente a JavaScript.

### A20
(i) Undefined significa que uma variável nunca foi definida e Null é um valor atribuido.

## Q21
Comente ou cite sobre boas práticas de programação

### A21
DRY: Do not Repeat Yourself = não ser repetitivo escrevendo a mesma regra em vários locais do código
Utilizar o concerns somente para pontos críticos do código
Evitar fat model & fat controller (muita regra de negócio dentro dessas classes arquiteturais), geralmente criar um service ou algum outro mecanismo para alocar as regras de negócio e chamar estes quando necessário no modelo ou controller ou lib ou view
Utilizar a lib como repositório de integrações
Utilizar o seeds para criar massa de dados para o desenvolvimento
Escrever os testes automatizados enquanto desenvolve (TDD e/ou BDD)

## Q22
Escreva uma função em Javacript ou Ruby on Rails que receba um array de inteiros, realize a médias dos valores e informe ao usuário o resultado.

### A22
```ruby
  def question22(arr)
    arr.sum(0.0) / arr.size
  end
```

# SCAFFOLDS
1. ``` $ rails g scaffold Especialidade descricao:string ativo:boolean localidade:string ```
2. ``` $ rails g scaffold Funcionario nome_completo:string endereco:string especialidade:belongs_to data_admissao:date data_dispensa:date ```
3. ``` $ rails g scaffold Custo cost_value:float employee_id:integer ordem:integer ```
