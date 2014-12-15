require 'spec_helper'

describe Api::BirdsController, type: :request do
  describe 'Birds index' do
    it 'uses a jbuilder template' do
      get api_birds_path, render: :json
      expect(response).to render_template(:index)
    end

    it 'paginates the results' do
      7.times { create(:bird) }
      get api_birds_path(page: 1, per_page: 5)

      expect(JSON.parse(response.body)['birds'].count).to eq 5

      get api_birds_path(page: 2, per_page: 5)

      expect(JSON.parse(response.body)['birds'].count).to eq 2
    end

    it 'renders pagination data' do
      get api_birds_path(page: 2, per_page: 5)

      response_hash = JSON.parse(response.body)

      expect(response_hash['page']).to eq 2
      expect(response_hash['per_page']).to eq 5
    end

    it 'generates a correctly structured JSON response' do
      birds = (1..7).map { create(:sighted_bird) }

      get api_birds_path(page: 1, per_page: 3)

      expect(JSON.parse(response.body)).to eq({
        'page' => 1,
        'per_page' => 3,
        'birds' => birds.slice(0,3).map do |bird|
        {
          'name' => bird.name,
          'species' => bird.species,
          'sightings' => bird.sightings.map do |sighting|
            { 'sighted_at' => sighting.sighted_at.to_i }
          end
        }
        end
      })
    end
  end
end
