Rails.application.routes.draw do
  get 'list/top' => 'list#list_top'
  get 'list/goal_details/:id' => 'list#goal_details'
  post 'list/destroy/:id' => 'list#destroy'

  post 'setting/create' => 'setting#create'
  get 'setting/day' => 'setting#day_setting'
  get 'setting/set' => 'setting#goal_set'
  get 'setting/top' => 'setting#setting_top'

  get '/' => 'home#top'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
