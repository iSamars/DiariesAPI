Rails.application.routes.draw do
  require 'sidekiq'
  require 'sidekiq/web'
  require 'sidekiq/cron/web'

  Sidekiq::Web.use Rack::Auth::Basic do |username, password|
    Rack::Utils.secure_compare(username, 'admin') &
      Rack::Utils.secure_compare(password, 'admin')
  end

  mount Sidekiq::Web, at: '/sidekiq'

  namespace 'api' do
    resources :diaries
    resources :notes
  end
end
