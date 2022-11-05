# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Coin.create!(
  description: 'Bitcoin',
  acronym: 'BTC',
  url_image: 'https://s2.coinmarketcap.com/static/img/coins/200x200/1.png'
)

Coin.create!(
  description: 'Etherium',
  acronym: 'ETC',
  url_image: 'https://avatars.githubusercontent.com/u/6250754?s=200&v=4'
)

Coin.create!(
  description: 'Dash',
  acronym: 'DSH',
  url_image: 'https://s2.coinmarketcap.com/static/img/coins/200x200/131.png'
)
