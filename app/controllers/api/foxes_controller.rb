class Api::FoxesController < ApiController
  def show
    @fox = Fox.find(params[:id])

    render json: @fox, root: false
  end
end
