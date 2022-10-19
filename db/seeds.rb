# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

parent_array = [
  {name: "文学・小説"},
  {name: "ノンフィクション"},
  {name: "社会・ビジネス"},
  {name: "思想・社会"},
  {name: "歴史・地理・旅行記"},
  {name: "科学"},
  {name: "事件・犯罪"},
  {name: "自伝・伝記"},
  {name: "旅行・地図"},
  {name: "趣味"},
  {name: "実用・教育"},
  {name: "アート・教養・エンタメ"},
  {name: "事典・図鑑・語学・辞書"},
]
parent_array.length.times do |i|
  Category.create!(parent_array[i])
end

