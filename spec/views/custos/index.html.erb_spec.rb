require 'rails_helper'

RSpec.describe "custos/index", type: :view do
  before(:each) do
    assign(:custos, [
      Custo.create!(
        cost_value: 2.5,
        employee_id: 3,
        ordem: 4
      ),
      Custo.create!(
        cost_value: 2.5,
        employee_id: 3,
        ordem: 4
      )
    ])
  end

  it "renders a list of custos" do
    render
    assert_select "tr>td", text: 2.5.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
  end
end
