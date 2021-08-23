# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Inserting Especialidades...'.colorize(:green)
e1 = Especialidade.create(descricao: 'Analista programador', ativo: true, localidade: 'Curitiba')
e2 = Especialidade.create(descricao: 'Gestor de projetos', ativo: true, localidade: 'São Paulo')
e3 = Especialidade.create(descricao: 'Programador', ativo: false, localidade: 'Curitiba')
puts 'Especialidades Inserted...'.colorize(:light_blue)

puts 'Inserting Funcionarios...'.colorize(:green)
f1 = Funcionario.create(nome_completo: 'João Neto Sicado', endereco: 'Rua Fran Rocha, 122', especialidade_id: 2, data_admissao: '2016-01-20'.to_date, data_dispensa: '2016-01-26'.to_date)
f2 = Funcionario.create(nome_completo: 'Felipe Souza', endereco: 'Rua XY, 1223', especialidade_id: 1, data_admissao: '2003-01-09'.to_date, data_dispensa: nil)
f3 = Funcionario.create(nome_completo: 'Joãozinho Jr', endereco: 'Rua Godofredo II, 998', especialidade_id: 1, data_admissao: '2001-12-12'.to_date, data_dispensa: '2013-03-01')
f4 = Funcionario.create(nome_completo: 'Henrique Silva', endereco: 'Rua Rachel, 133', especialidade_id: 2, data_admissao: '1999-07-09'.to_date, data_dispensa: '2004-01-22')
puts 'Funcionarios Inserted...'.colorize(:light_blue)