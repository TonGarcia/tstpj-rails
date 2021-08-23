require 'rails_helper'

RSpec.describe "funcionarios/index", type: :view do
  before(:each) do
    assign(:funcionarios, [
      Funcionario.create!(
        nome_completo: "Nome Completo",
        endereco: "Endereco",
        especialidade: nil
      ),
      Funcionario.create!(
        nome_completo: "Nome Completo",
        endereco: "Endereco",
        especialidade: nil
      )
    ])
  end

  it "renders a list of funcionarios" do
    render
    assert_select "tr>td", text: "Nome Completo".to_s, count: 2
    assert_select "tr>td", text: "Endereco".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
