Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get("/", {:controller => "main", :action => "main"})

  get("/forex", {:controller => "main", :action => "forex"})

  get("/forex/:from_curreny", {:controller => "main", :action => "symbolscomplete"})

  get("/forex/:from_currency/:to_currency", {:controller => "main", :action => "currency_conversion" })
end
