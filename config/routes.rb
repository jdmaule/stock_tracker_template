Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "stocks#index"
  # Routes for the Comment resource:

  # CREATE
  get("/comments/new", { :controller => "comments", :action => "new_form" })
  post("/create_comment", { :controller => "comments", :action => "create_row" })
  post("/create_comment_from_stock", { :controller => "comments", :action => "create_row_from_stock" })

  # READ
  get("/comments", { :controller => "comments", :action => "index" })
  get("/comments/:id_to_display", { :controller => "comments", :action => "show" })

  # UPDATE
  get("/comments/:prefill_with_id/edit", { :controller => "comments", :action => "edit_form" })
  post("/update_comment/:id_to_modify", { :controller => "comments", :action => "update_row" })

  # DELETE
  get("/delete_comment/:id_to_remove", { :controller => "comments", :action => "destroy_row" })
  get("/delete_comment_from_stock/:id_to_remove", { :controller => "comments", :action => "destroy_row_from_stock" })
  get("/delete_comment_from_commenter/:id_to_remove", { :controller => "comments", :action => "destroy_row_from_commenter" })

  #------------------------------

  # Routes for the Follow resource:

  # CREATE
  get("/follows/new", { :controller => "follows", :action => "new_form" })
  post("/create_follow", { :controller => "follows", :action => "create_row" })
  post("/create_follow_from_stock", { :controller => "follows", :action => "create_row_from_stock" })

  # READ
  get("/follows", { :controller => "follows", :action => "index" })
  get("/follows/:id_to_display", { :controller => "follows", :action => "show" })

  # UPDATE
  get("/follows/:prefill_with_id/edit", { :controller => "follows", :action => "edit_form" })
  post("/update_follow/:id_to_modify", { :controller => "follows", :action => "update_row" })

  # DELETE
  get("/delete_follow/:id_to_remove", { :controller => "follows", :action => "destroy_row" })
  get("/delete_follow_from_stock/:id_to_remove", { :controller => "follows", :action => "destroy_row_from_stock" })
  get("/delete_follow_from_user/:id_to_remove", { :controller => "follows", :action => "destroy_row_from_user" })

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
