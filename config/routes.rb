Rails.application.routes.draw do

  get '/' => 'lyrics#home'
  get '/search' => 'lyrics#search'
end
