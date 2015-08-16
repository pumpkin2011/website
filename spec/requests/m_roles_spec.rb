require 'rails_helper'

RSpec.describe "MRoles", type: :request do
  describe "GET /m_roles" do
    it "works! (now write some real specs)" do
      get m_roles_path
      expect(response).to have_http_status(200)
    end
  end
end
