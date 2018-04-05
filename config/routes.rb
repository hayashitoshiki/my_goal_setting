Rails.application.routes.draw do
  get 'list/top' => 'list#list_top'

  get 'setting/top' => 'setting#setting_top'

  get '/' => 'home#top'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
