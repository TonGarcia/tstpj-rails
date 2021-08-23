require 'rails_helper'

RSpec.describe "especialidades/show", type: :view do
  before(:each) do
    @especialidade = assign(:especialidade, Especialidade.create!(
      descricao: "Descricao",
      ativo: false,
      localidade: "Localidade"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Descricao/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Localidade/)
  end
end
