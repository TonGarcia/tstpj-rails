require 'rails_helper'

RSpec.describe "custos/edit", type: :view do
  before(:each) do
    @custo = assign(:custo, Custo.create!(
      cost_value: 1.5,
      employee_id: 1,
      ordem: 1
    ))
  end

  it "renders the edit custo form" do
    render

    assert_select "form[action=?][method=?]", custo_path(@custo), "post" do

      assert_select "input[name=?]", "custo[cost_value]"

      assert_select "input[name=?]", "custo[employee_id]"

      assert_select "input[name=?]", "custo[ordem]"
    end
  end
end
