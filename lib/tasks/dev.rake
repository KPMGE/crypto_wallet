require 'tty-spinner'

namespace :dev do
  desc 'Set development environment up'
  task setup: :environment do
    if Rails.env.development?
      show_spinner('Drop database...') { `rails db:drop` }
      show_spinner('Create database...') { `rails db:create` }
      show_spinner('Migrate database...') { `rails db:migrate` }
      show_spinner('Apply seeds...') { `rails db:seed` }
    end
  end

  def show_spinner(start_msg, end_msg = 'Done') 
    spinner = TTY::Spinner.new("[:spinner] #{start_msg}")
    spinner.auto_spin
    yield
    spinner.success("(#{end_msg})")
  end
end
