require 'rails_helper'

RSpec.describe "restaurants/new", type: :view do
  before(:each) do
    assign(:restaurant, Restaurant.new(
      name: "MyString",
      description: "MyString",
      city: "MyString",
      star_rating: 1,
      cuisine: "MyString"
    ))
  end

  it "renders new restaurant form" do
    render

    assert_select "form[action=?][method=?]", restaurants_path, "post" do

      assert_select "input[name=?]", "restaurant[name]"

      assert_select "input[name=?]", "restaurant[description]"

      assert_select "input[name=?]", "restaurant[city]"

      assert_select "input[name=?]", "restaurant[star_rating]"

      assert_select "input[name=?]", "restaurant[cuisine]"
    end
  end
end
