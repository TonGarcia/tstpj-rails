require 'rails_helper'

RSpec.describe "Questions" do
  describe "As tabelas FUNCIONÁRIO e ESPECIALIDADE serão utilizadas para responder as perguntas 1 e 2. " do
    describe '03 - Utilize Rails ou SQL. Ordenar as informações das tabelas abaixo, alfabeticamente:' do
      it 'Funcionários pelo campo nome_completo e que sejam pertinentes a especialidade “Analista programador” e que ainda não foram dispensados' do
        result = Queries.question3
        expect(result).to eq(['1', '2', '3'])
      end
    end
  end
end