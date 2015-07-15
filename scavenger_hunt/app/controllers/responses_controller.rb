class ResponsesController < ApplicationController
  before_action :logged_in_user
  before_action :admin_user, only: [:index]

  def index
    @responses = Response.all.order(:created_at).reverse
  end

  def create
    @response = current_user.responses.build(response_params)
    @response.save
    if @response.check_answer
      flash[:success] = "Nice Job!! On to the next one"
      redirect_to user_path(current_user)
    else
      flash[:warning] = "Nope, try again"
      redirect_to user_path(current_user)
    end
  end


  private

    def response_params
      params.require(:response).permit(:guess, :round_number, :picture)
    end

    def logged_in_user
      unless user_signed_in?
        flash[:danger] = "Please log in."
        redirect_to new_user_session_path
      end
    end

    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end


end
