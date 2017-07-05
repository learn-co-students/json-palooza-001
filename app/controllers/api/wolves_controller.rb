class Api::WolvesController < ApiController
  def index
    page = params[:page].to_i
    page = 1 unless page > 0

    per_page = params[:per_page].to_i
    per_page = 10 unless per_page > 0

    wolves = Wolf.page(page).per(per_page)

    render json: wolves, meta: {page: page, per_page: per_page}
  end
end
