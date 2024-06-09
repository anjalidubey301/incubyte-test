require 'rails_helper'

RSpec.describe "Calculators", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/calculators/new"
      expect(response).to render_template(:new)
    end
  end
end
