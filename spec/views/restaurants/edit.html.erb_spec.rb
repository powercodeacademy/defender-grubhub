require 'rails_helper'

RSpec.describe "restaurants/edit", type: :view do
  before(:each) do
    @restaurant = assign(:restaurant, Restaurant.create!(
      name: "MyString",
      description: "MyString",
      city: "MyString",
      star_rating: 1,
      cuisine: "MyString"
    ))
  end

  it "renders the edit restaurant form" do
    render

    assert_select "form[action=?][method=?]", restaurant_path(@restaurant), "post" do

      assert_select "input[name=?]", "restaurant[name]"

      assert_select "input[name=?]", "restaurant[description]"

      assert_select "input[name=?]", "restaurant[city]"

      assert_select "input[name=?]", "restaurant[star_rating]"

      assert_select "input[name=?]", "restaurant[cuisine]"
    end
  end
end
