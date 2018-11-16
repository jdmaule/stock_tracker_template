Rails.application.routes.draw do
  # Routes for the Stock resource:

  # CREATE
  get("/stocks/new", { :controller => "stocks", :action => "new_form" })
  post("/create_stock", { :controller => "stocks", :action => "create_row" })

  # READ
  get("/stocks", { :controller => "stocks", :action => "index" })
  get("/stocks/:id_to_display", { :controller => "stocks", :action => "show" })

  # UPDATE
  get("/stocks/:prefill_with_id/edit", { :controller => "stocks", :action => "edit_form" })
  post("/update_stock/:id_to_modify", { :controller => "stocks", :action => "update_row" })

  # DELETE
  get("/delete_stock/:id_to_remove", { :controller => "stocks", :action => "destroy_row" })

  #------------------------------

  devise_for :users
  # Routes for the User resource:

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
