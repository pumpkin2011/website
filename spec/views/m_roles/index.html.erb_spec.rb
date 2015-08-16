require 'rails_helper'

RSpec.describe "m_roles/index", type: :view do
  before(:each) do
    assign(:m_roles, [
      MRole.create!(
        :role_no => "",
        :role => "Role"
      ),
      MRole.create!(
        :role_no => "",
        :role => "Role"
      )
    ])
  end

  it "renders a list of m_roles" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Role".to_s, :count => 2
  end
end
