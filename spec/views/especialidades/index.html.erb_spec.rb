require 'rails_helper'

RSpec.describe "especialidades/index", type: :view do
  before(:each) do
    assign(:especialidades, [
      Especialidade.create!(
        descricao: "Descricao",
        ativo: false,
        localidade: "Localidade"
      ),
      Especialidade.create!(
        descricao: "Descricao",
        ativo: false,
        localidade: "Localidade"
      )
    ])
  end

  it "renders a list of especialidades" do
    render
    assert_select "tr>td", text: "Descricao".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: "Localidade".to_s, count: 2
  end
end
