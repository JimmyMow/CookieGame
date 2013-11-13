CookieGame::Application.routes.draw do
  root 'games#home'
  post '/add-sessions' => 'games#add_sessions', as: 'add_session'
  get '/new-game' => 'games#new_game', as: 'new_game'
end
