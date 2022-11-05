namespace :dev do
  desc 'Set development environment up'
  task setup: :environment do
    puts 'start...'
    puts %x(rails db:drop)
    puts %x(rails db:create)
    puts %x(rails db:migrate)
    puts %x(rails db:seed)
    puts 'end'
  end
end
