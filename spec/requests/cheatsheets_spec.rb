require 'rails_helper'

RSpec.describe "Cheatsheets", type: :request do
  describe "GET /cheatsheets" do
    it "works! (now write some real specs)" do
      get cheatsheets_path
      expect(response).to have_http_status(200)
    end
  end
end
