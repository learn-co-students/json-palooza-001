class Api::MoosesController < ApiController
  def index
    @mooses = Moose.all
  end
end
