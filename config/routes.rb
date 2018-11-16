Rails.application.routes.draw do
  # Routes for the Follow request resource:

  # CREATE
  get("/follow_requests/new", { :controller => "follow_requests", :action => "new_form" })
  post("/create_follow_request", { :controller => "follow_requests", :action => "create_row" })

  # READ
  get("/follow_requests", { :controller => "follow_requests", :action => "index" })
  get("/follow_requests/:id_to_display", { :controller => "follow_requests", :action => "show" })

  # UPDATE
  get("/follow_requests/:prefill_with_id/edit", { :controller => "follow_requests", :action => "edit_form" })
  post("/update_follow_request/:id_to_modify", { :controller => "follow_requests", :action => "update_row" })

  # DELETE
  get("/delete_follow_request/:id_to_remove", { :controller => "follow_requests", :action => "destroy_row" })

  #------------------------------

  # Routes for the Upvote resource:

  # CREATE
  get("/upvotes/new", { :controller => "upvotes", :action => "new_form" })
  post("/create_upvote", { :controller => "upvotes", :action => "create_row" })

  # READ
  get("/upvotes", { :controller => "upvotes", :action => "index" })
  get("/upvotes/:id_to_display", { :controller => "upvotes", :action => "show" })

  # UPDATE
  get("/upvotes/:prefill_with_id/edit", { :controller => "upvotes", :action => "edit_form" })
  post("/update_upvote/:id_to_modify", { :controller => "upvotes", :action => "update_row" })

  # DELETE
  get("/delete_upvote/:id_to_remove", { :controller => "upvotes", :action => "destroy_row" })

  #------------------------------

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
