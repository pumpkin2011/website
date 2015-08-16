require 'rails_helper'

RSpec.describe "m_roles/show", type: :view do
  before(:each) do
    @m_role = assign(:m_role, MRole.create!(
      :role_no => "",
      :role => "Role"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Role/)
  end
end
