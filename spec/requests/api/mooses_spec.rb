require 'spec_helper'

describe 'API' do
  describe 'Moose index' do
    # https://github.com/rails/jbuilder
    it 'renders a jbuilder template' do
      get api_mooses_path

      expect(response).to render_template(:index)
    end

    it 'generates a correctly structured JSON response' do
      mooses = [create(:moose), create(:moose)]

      get api_mooses_path

      expect(JSON.parse(response.body)).to match_array(
        mooses.map do |moose|
          {
            'name' => moose.name,
            'variety' => moose.variety,
            'coloration' => moose.coloration
          }
        end
      )
    end
  end
end
