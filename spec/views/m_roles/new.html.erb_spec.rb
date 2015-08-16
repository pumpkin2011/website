require 'rails_helper'

RSpec.describe "m_roles/new", type: :view do
  before(:each) do
    assign(:m_role, MRole.new(
      :role_no => "",
      :role => "MyString"
    ))
  end

  it "renders new m_role form" do
    render

    assert_select "form[action=?][method=?]", m_roles_path, "post" do

      assert_select "input#m_role_role_no[name=?]", "m_role[role_no]"

      assert_select "input#m_role_role[name=?]", "m_role[role]"
    end
  end
end
