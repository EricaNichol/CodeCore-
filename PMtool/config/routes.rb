Rails.application.routes.draw do

 get  "/about" => "home#about"

 root "home#index"

 resource :comments 

end
