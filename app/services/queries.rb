class Queries
  def self.question3
    especialidade = Especialidade.find_by(descricao: 'Analista programador')
    funcionarios = especialidade.funcionarios.where('data_dispensa IS NULL')
    order_funcionarios = funcionarios.order('nome_completo ASC')
    order_funcionarios
  end

  def self.question4
    Funcionario.joins(:especialidade).where(especialidades: {localidade: 'Curitiba'})
  end

  def self.question5
    # Melhor peformance para ter apenas o maior custo: Custo.where(ordem: 325).maximum(:cost_value)
    # Melhor código para obter o registro com o maior custo: Custo.where(ordem: 325).order('cost_value DESC').first
    Custo.where(ordem: 325).order('cost_value DESC').first
  end

  def self.question6
    Custo.where(:created_at => '2016-08-01'.to_datetime..'2016-08-31'.to_datetime).sum('cost_value')
  end

  # @param [] ar
  def self.question22(arr)
    arr.sum(0.0) / arr.size
  end
end