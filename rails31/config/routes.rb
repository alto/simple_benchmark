Rails31::Application.routes.draw do
  match 'texts' => 'texts#index'
  match 'simple_page' => 'pages#simple'
  match 'page_with_partials' => 'pages#partials'
end
