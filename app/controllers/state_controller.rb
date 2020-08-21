
class StateController < ApplicationController
  def index
    permitted = permitted_params
    word = permitted["filter"].downcase unless permitted.blank?
    render json: State.where("name like '%#{word}%'")
  end

  private

  def permitted_params
    params.permit(:filter)
  end
end
