require 'rails_helper'

RSpec.describe "funcionarios/edit", type: :view do
  before(:each) do
    @funcionario = assign(:funcionario, Funcionario.create!(
      nome_completo: "MyString",
      endereco: "MyString",
      especialidade: nil
    ))
  end

  it "renders the edit funcionario form" do
    render

    assert_select "form[action=?][method=?]", funcionario_path(@funcionario), "post" do

      assert_select "input[name=?]", "funcionario[nome_completo]"

      assert_select "input[name=?]", "funcionario[endereco]"

      assert_select "input[name=?]", "funcionario[especialidade_id]"
    end
  end
end
