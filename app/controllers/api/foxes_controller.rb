class Api::FoxController < ApiController
  def index
    @foxes = Fox.all

    render json: @foxes
  end
end
