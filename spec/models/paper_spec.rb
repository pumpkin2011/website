require "rails_helper"

RSpec.describe Paper, :type => :model do
  it "orders by last name" do
    lindeman = Paper.create!(title: "Andy", description: "Lindeman")
    chelimsky = Paper.create!(title: "David", description: "Chelimsky")

    expect(Paper.order(:title)).to eq([lindeman, chelimsky])
  end
end