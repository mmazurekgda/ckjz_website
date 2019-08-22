Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sensors#index'

  get '/t/sensors/top_bar_status' => 'sensors#top_bar_status'
  post '/t/sensors/:id',
      to: 'sensors#change_mode',
      constraints: lambda { |request| [0, 1].include? request.params[:mode] }
end
