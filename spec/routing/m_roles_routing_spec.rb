require "rails_helper"

RSpec.describe MRolesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/m_roles").to route_to("m_roles#index")
    end

    it "routes to #new" do
      expect(:get => "/m_roles/new").to route_to("m_roles#new")
    end

    it "routes to #show" do
      expect(:get => "/m_roles/1").to route_to("m_roles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/m_roles/1/edit").to route_to("m_roles#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/m_roles").to route_to("m_roles#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/m_roles/1").to route_to("m_roles#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/m_roles/1").to route_to("m_roles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/m_roles/1").to route_to("m_roles#destroy", :id => "1")
    end

  end
end
