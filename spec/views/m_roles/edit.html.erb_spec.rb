require 'rails_helper'

RSpec.describe "m_roles/edit", type: :view do
  before(:each) do
    @m_role = assign(:m_role, MRole.create!(
      :role_no => "",
      :role => "MyString"
    ))
  end

  it "renders the edit m_role form" do
    render

    assert_select "form[action=?][method=?]", m_role_path(@m_role), "post" do

      assert_select "input#m_role_role_no[name=?]", "m_role[role_no]"

      assert_select "input#m_role_role[name=?]", "m_role[role]"
    end
  end
end
