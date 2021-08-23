require 'rails_helper'

RSpec.describe "especialidades/edit", type: :view do
  before(:each) do
    @especialidade = assign(:especialidade, Especialidade.create!(
      descricao: "MyString",
      ativo: false,
      localidade: "MyString"
    ))
  end

  it "renders the edit especialidade form" do
    render

    assert_select "form[action=?][method=?]", especialidade_path(@especialidade), "post" do

      assert_select "input[name=?]", "especialidade[descricao]"

      assert_select "input[name=?]", "especialidade[ativo]"

      assert_select "input[name=?]", "especialidade[localidade]"
    end
  end
end
