# spec/requests/verticals_spec.rb
require 'rails_helper'

RSpec.describe 'Vertical API', type: :request do
  # initialize test data
  let!(:verticals) {create_list(:vertical, 10)}
  let(:vertical_id) {verticals.first.id}

  # Test suite for GET /verticals
  describe 'GET /verticals' do
    # make HTTP get request before each example
    before {get '/verticals'}

    it 'returns verticals' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /verticals/:id
  describe 'GET /verticals/:id' do
    before {get "/verticals/#{vertical_id}"}

    context 'when the record exists' do
      it 'returns the vertical' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(vertical_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:vertical_id) {100}

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Vertical/)
      end
    end
  end

  # Test suite for POST /verticals
  describe 'POST /verticals' do
    # valid payload
    let(:valid_attributes) {{name: 'Learn Elm'}}

    context 'when the request is valid' do
      before {post '/verticals', params: valid_attributes}

      it 'creates a vertical' do
        expect(json['name']).to eq('Learn Elm')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before {post '/verticals', params: {}}

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response.body)
            .to match(/Validation failed: Name can't be blank/)
      end
    end
  end

  # Test suite for PUT /verticals/:id
  describe 'PUT /verticals/:id' do
    let(:valid_attributes) {{name: 'Shopping'}}

    context 'when the record exists' do
      before {put "/verticals/#{vertical_id}", params: valid_attributes}

      it 'updates the record' do
        expect(response.body).to be_empty
      end

      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
    end
  end

  # Test suite for DELETE /verticals/:id
  describe 'DELETE /verticals/:id' do
    before {delete "/verticals/#{vertical_id}"}

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end