require 'rails_helper'

RSpec.describe "custos/new", type: :view do
  before(:each) do
    assign(:custo, Custo.new(
      cost_value: 1.5,
      employee_id: 1,
      ordem: 1
    ))
  end

  it "renders new custo form" do
    render

    assert_select "form[action=?][method=?]", custos_path, "post" do

      assert_select "input[name=?]", "custo[cost_value]"

      assert_select "input[name=?]", "custo[employee_id]"

      assert_select "input[name=?]", "custo[ordem]"
    end
  end
end
