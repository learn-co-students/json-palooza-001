class Api::BirdsController < ApplicationController
  def index
    @page = params[:page].to_i
    @page = 1 unless @page > 0

    @per_page = params[:per_page].to_i
    @per_page = 10 unless @per_page > 0

    @birds = Bird.page(@page).per(@per_page)
  end
end
