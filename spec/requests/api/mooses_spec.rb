require 'spec_helper'

describe Api::MoosesController, type: :request do
  describe 'Moose show' do
    # https://github.com/rails/jbuilder
    it 'renders a jbuilder template' do
      moose = create(:moose)
      get api_moose_path(moose.id)

      expect(response).to render_template(:show)
    end

    it 'generates a correctly structured JSON response' do
      moose = create(:moose)

      get api_moose_path(moose)

      expect(JSON.parse(response.body)).to eq({
        'name' => moose.name,
        'variety' => moose.variety,
        'coloration' => moose.coloration
      })
    end
  end
end
