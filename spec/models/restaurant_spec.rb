require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  describe "attributes" do
    it { is_expected.to have_db_column(:id).of_type(:integer) }
    it { is_expected.to have_db_column(:name).of_type(:string) }
    it { is_expected.to have_db_column(:description).of_type(:string) }
    it { is_expected.to have_db_column(:city).of_type(:string) }
    it { is_expected.to have_db_column(:star_rating).of_type(:integer) }
    it { is_expected.to have_db_column(:cuisine).of_type(:string) }
  end

  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
    it { is_expected.to validate_numericality_of(:star_rating).is_greater_than_or_equal_to(1) }
    it { is_expected.to validate_numericality_of(:star_rating).is_less_than_or_equal_to(5) }
  end
end