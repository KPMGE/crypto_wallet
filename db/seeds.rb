# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'tty-spinner'

coins = [
  {
    description: 'Bitcoin',
    acronym: 'BTC',
    url_image: 'https://s2.coinmarketcap.com/static/img/coins/200x200/1.png'
  },
  {
    description: 'Etherium',
    acronym: 'ETC',
    url_image: 'https://avatars.githubusercontent.com/u/6250754?s=200&v=4'
  },
  {
    description: 'Dash',
    acronym: 'DSH',
    url_image: 'https://s2.coinmarketcap.com/static/img/coins/200x200/131.png'
  }
]

spinner = TTY::Spinner.new('[:spinner] Running seeds...')
spinner.auto_spin
coins.each { |coin| Coin.find_or_create_by!(coin) }
spinner.success('(Done)')
