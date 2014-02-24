class Api::MoosesController < ApiController
  def show
    @moose = Moose.find(params[:id])
  end
end
