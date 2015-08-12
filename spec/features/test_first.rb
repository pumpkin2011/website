require "spec_helper.rb"

RSpec.describe "HomePage" do 
	it "should have content '123'" do
		visit "/"
		page.should have_content "123"
	end
	
end