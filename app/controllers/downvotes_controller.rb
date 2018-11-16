class DownvotesController < ApplicationController
  def index
    @q = Downvote.ransack(params[:q])
    @downvotes = @q.result(:distinct => true).page(params[:page]).per(10)

    render("downvote_templates/index.html.erb")
  end

  def show
    @downvote = Downvote.find(params.fetch("id_to_display"))

    render("downvote_templates/show.html.erb")
  end

  def new_form
    @downvote = Downvote.new

    render("downvote_templates/new_form.html.erb")
  end

  def create_row
    @downvote = Downvote.new

    @downvote.user_id = params.fetch("user_id")
    @downvote.stock_id = params.fetch("stock_id")

    if @downvote.valid?
      @downvote.save

      redirect_back(:fallback_location => "/downvotes", :notice => "Downvote created successfully.")
    else
      render("downvote_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @downvote = Downvote.find(params.fetch("prefill_with_id"))

    render("downvote_templates/edit_form.html.erb")
  end

  def update_row
    @downvote = Downvote.find(params.fetch("id_to_modify"))

    @downvote.user_id = params.fetch("user_id")
    @downvote.stock_id = params.fetch("stock_id")

    if @downvote.valid?
      @downvote.save

      redirect_to("/downvotes/#{@downvote.id}", :notice => "Downvote updated successfully.")
    else
      render("downvote_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @downvote = Downvote.find(params.fetch("id_to_remove"))

    @downvote.destroy

    redirect_to("/downvotes", :notice => "Downvote deleted successfully.")
  end
end
