class CreateCustos < ActiveRecord::Migration[6.0]
  def change
    create_table :custos do |t|
      t.float :cost_value
      t.integer :employee_id
      t.integer :ordem

      t.timestamps
    end
  end
end
