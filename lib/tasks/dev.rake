require 'tty-spinner'

namespace :dev do
  desc 'Set development environment up'
  task setup: :environment do
    if Rails.env.development?
      show_spinner('Drop database...') { `rails db:drop` }
      show_spinner('Create database...') { `rails db:create` }
      show_spinner('Migrate database...') { `rails db:migrate` }
      show_spinner('Apply seeds...') { `rails db:seed` }
      `rails dev:add_coins`
      `rails dev:add_mining_types`
    end
  end

  desc 'add initial coins to the database'
  task add_coins: :environment do
    show_spinner('Add coins to the database...') do
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
      coins.each { |coin| Coin.find_or_create_by!(coin) }
    end
  end

  desc 'add initial mining types to the database'
  task add_mining_types: :environment do
    show_spinner('Add MiningTypes to the database...') do
      mining_types = [
        {
          description: 'Proof of Work',
          acronym: 'PoW'
        },
        {
          description: 'Proof of Stake',
          acronym: 'PoS'
        },
        {
          description: 'Proof of Capacity',
          acronym: 'PoC'
        }
      ]
      mining_types.each { |mining_type| MiningType.find_or_create_by!(mining_type) }
    end
  end

  def show_spinner(start_msg, end_msg = 'Done') 
    spinner = TTY::Spinner.new("[:spinner] #{start_msg}")
    spinner.auto_spin
    yield
    spinner.success("(#{end_msg})")
  end
end
