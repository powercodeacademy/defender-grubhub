require 'rails_helper'

RSpec.describe "restaurants/index", type: :view do
  before(:each) do
    assign(:restaurants, [
      Restaurant.create!(
        name: "Name",
        description: "Description",
        city: "City",
        star_rating: 2,
        cuisine: "Cuisine"
      ),
      Restaurant.create!(
        name: "Name",
        description: "Description",
        city: "City",
        star_rating: 2,
        cuisine: "Cuisine"
      )
    ])
  end

  it "renders a list of restaurants" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Description".to_s, count: 2
    assert_select "tr>td", text: "City".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Cuisine".to_s, count: 2
  end
end
