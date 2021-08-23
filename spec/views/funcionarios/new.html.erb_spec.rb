require 'rails_helper'

RSpec.describe "funcionarios/new", type: :view do
  before(:each) do
    assign(:funcionario, Funcionario.new(
      nome_completo: "MyString",
      endereco: "MyString",
      especialidade: nil
    ))
  end

  it "renders new funcionario form" do
    render

    assert_select "form[action=?][method=?]", funcionarios_path, "post" do

      assert_select "input[name=?]", "funcionario[nome_completo]"

      assert_select "input[name=?]", "funcionario[endereco]"

      assert_select "input[name=?]", "funcionario[especialidade_id]"
    end
  end
end
