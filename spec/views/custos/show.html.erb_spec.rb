require 'rails_helper'

RSpec.describe "custos/show", type: :view do
  before(:each) do
    @custo = assign(:custo, Custo.create!(
      cost_value: 2.5,
      employee_id: 3,
      ordem: 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
