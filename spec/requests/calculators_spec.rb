require 'rails_helper'

RSpec.describe "Calculators", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/calculators/new"
      expect(response).to render_template(:new)
    end
  end
  describe 'POST #calculate' do
    it 'assigns 0 as result when input is empty' do
      post "/calculators/calculate", params: { numbers: '' }
      expect(response.body).to include("0")
    end
    it 'result is present return html template' do
      get "/calculators/new"
      expect(response).to render_template(:new)
    end
  end
end
