Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#display'

  # get 'home/display'

  # get 'view/book'

  # get 'view/user'

  # get 'view/course'

  # get 'view/listing'

  # get 'list/course'
  # get 'list/book'
  # 
  # post 'home/search'

  # get 'home/show'

  get ':controller(/:action(/:id))'
  post ':controller(/:action(/:id))'

end
