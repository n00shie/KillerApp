KillerApp::Application.routes.draw do
  
  resources :palindromes

  match "/validate" => "palindromes#validate"

  root :to => 'palindromes#new'
end
