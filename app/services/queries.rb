class Queries
  def self.question3
    Funcionario.order('nome_completo ASC')
  end
end