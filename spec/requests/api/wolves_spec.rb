require 'spec_helper'

describe 'API' do
  describe 'Wolf index' do
    it 'uses an ActiveModel Serializer' do
      get api_wolves_path
      expect(response).to_not render_template(:index)
    end

    it 'paginates the results' do
      7.times { create(:wolf) }

      get api_wolves_path(page: 1, per_page: 5)
      expect(JSON.parse(response.body)['wolves'].count).to eq 5

      get api_wolves_path(page: 2, per_page: 5)
      expect(JSON.parse(response.body)['wolves'].count).to eq 2
    end

    it 'renders pagination data' do
      get api_wolves_path(page: 2, per_page: 5)

      response_hash = JSON.parse(response.body)

      expect(response_hash['page']).to eq 2
      expect(response_hash['per_page']).to eq 5
    end

    it 'generates a correctly structured JSON response' do
      wolves = (1..7).map { create(:sampled_wolf) }

      get api_wolves_path(page: 1, per_page: 3)

      expect(JSON.parse(response.body)).to eq({
        'page' => 1,
        'per_page' => 3,
        'wolves' => wolves.slice(0,3).map do |wolf|
        {
          'name' => wolf.name,
          'species' => wolf.species,
          'blood_samples' => wolf.blood_samples.map do |blood_sample|
            { 'taken_at' => blood_sample.taken_at.to_i }
          end
        }
        end
      })
    end
  end
end
