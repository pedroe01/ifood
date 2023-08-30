require 'Oj'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# Produtos
Oj.load(File.read("#{Rails.root}/resources/produtos.json")).each do |prod|
  item = Produtos.where(
    nome: prod['nome'],
    img:  prod['img'],
    qtd:  prod['qtd'],
  ).first_or_initialize
  item.save!
end
