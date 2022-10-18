module ApplicationHelper
  def br_date(us_date)
    us_date.strftime('%d/%m/%Y')
  end

  def rails_environment
    if Rails.env.environment?
      'ENVIRONMENT'
    elsif Rails.env.production?
      'PRODUCTION'
    else
      'TEST'
    end
  end
end
