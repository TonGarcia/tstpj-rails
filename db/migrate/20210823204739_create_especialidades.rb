class CreateEspecialidades < ActiveRecord::Migration[6.0]
  def change
    create_table :especialidades do |t|
      t.string :descricao
      t.boolean :ativo
      t.string :localidade

      t.timestamps
    end
  end
end
