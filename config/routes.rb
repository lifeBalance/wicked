Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
        get 'graphs/(:category)', :to => 'graphs#show'
      end
  end

  namespace :api do
    namespace :v1 do
      get 'categories/(:category)', :to => 'categories#show'
    end
  end
end
