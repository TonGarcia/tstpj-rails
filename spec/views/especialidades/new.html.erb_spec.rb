require 'rails_helper'

RSpec.describe "especialidades/new", type: :view do
  before(:each) do
    assign(:especialidade, Especialidade.new(
      descricao: "MyString",
      ativo: false,
      localidade: "MyString"
    ))
  end

  it "renders new especialidade form" do
    render

    assert_select "form[action=?][method=?]", especialidades_path, "post" do

      assert_select "input[name=?]", "especialidade[descricao]"

      assert_select "input[name=?]", "especialidade[ativo]"

      assert_select "input[name=?]", "especialidade[localidade]"
    end
  end
end
