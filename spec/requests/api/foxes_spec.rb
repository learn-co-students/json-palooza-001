require 'spec_helper'

describe Api::FoxesController, type: :request do
  describe 'Fox show' do
    # https://github.com/rails-api/active_model_serializers
    it 'uses an ActiveModel Serializer' do
      fox = create(:fox)
      get api_fox_path(fox)
      expect(response).to_not render_template(:show)
    end

    it 'generates a correctly structured JSON response' do
      fox = create(:fox)

      get api_fox_path(fox)

      expect(JSON.parse(response.body)).to eq({
          'name' => fox.name,
          'variety' => fox.variety,
          'coloration' => fox.coloration,
          'saying' => fox.saying
       })
    end
  end
end
