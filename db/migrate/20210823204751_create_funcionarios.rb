class CreateFuncionarios < ActiveRecord::Migration[6.0]
  def change
    create_table :funcionarios do |t|
      t.string :nome_completo
      t.string :endereco
      t.belongs_to :especialidade, null: false, foreign_key: true
      t.date :data_admissao
      t.date :data_dispensa

      t.timestamps
    end
  end
end
