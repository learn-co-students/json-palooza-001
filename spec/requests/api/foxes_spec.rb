require 'spec_helper'

describe 'API' do
  describe 'Fox index' do
    # https://github.com/rails-api/active_model_serializers
    it 'uses an ActiveModel serializer' do
      get api_foxes_path
      expect(response).to_not render_template(:index)
    end

    it 'generates a correctly structured JSON response' do
      foxes = [create(:fox), create(:fox)]

      get api_foxes_path

      expect(JSON.parse(response.body)).to match_array(
        foxes.map do |fox|
          {
            'name' => fox.name,
            'variety' => fox.variety,
            'coloration' => fox.coloration,
            'saying' => fox.saying
          }
        end
      )
    end
  end
end
