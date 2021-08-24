require 'rails_helper'

RSpec.describe "Questions" do
  describe "As tabelas FUNCIONÁRIO e ESPECIALIDADE serão utilizadas para responder as perguntas 1 e 2. " do
    describe '03 - Utilize Rails ou SQL. Ordenar as informações das tabelas abaixo, alfabeticamente:' do
      it 'Funcionários pelo campo nome_completo e que sejam pertinentes a especialidade “Analista programador” e que ainda não foram dispensados' do
        result = Queries.question3
        expect(result.to_a.length).to eq(1)
      end
    end

    describe '04 - Utilizando JOIN, retornar o(s) funcionário(s) que pertança(m) a uma especialidade seja de Curitiba (campo localidade).' do
      it 'might be from Curitiba' do
        result = Queries.question4
        expect(result.to_a.length).to eq(2)
        expect(result.first.especialidade.localidade).to eq('Curitiba')
      end
    end

    describe '05 - A tabela CUSTOS será utilizada para responder as perguntas 3 e 4. Utilize Rails ou SQL.' do
      it 'Selecione o maior custo para onde a ordem seja 325.' do
        result = Queries.question5
        expect(result.cost_value).to eq(999.35)
      end
    end

    describe '06 - Selecione o custo total para o mês de agosto.' do
      it 'Custo total para agosto' do
        result = Queries.question6
        expect(result).to eq(2384.12)
      end
    end

    describe "22 - Escreva uma função em Javacript ou Ruby on Rails que receba um array de inteiros, realize a médias dos valores e informe ao usuário o resultado." do
      it 'might return the mean' do
        result = Queries.question22 [2, 3, 10]
        expect(result).to eq(5)
      end
    end
  end
end