require 'rails_helper'

RSpec.describe "funcionarios/show", type: :view do
  before(:each) do
    @funcionario = assign(:funcionario, Funcionario.create!(
      nome_completo: "Nome Completo",
      endereco: "Endereco",
      especialidade: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome Completo/)
    expect(rendered).to match(/Endereco/)
    expect(rendered).to match(//)
  end
end
