require 'rails_helper'

RSpec.describe Event, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  describe "association with user" do
    it { is_expected.to belong_to :user}
end
describe "validations" do
    it "is invalid without a name" do
      event = Event.new(name: "")
      event.valid?
      expect(event.errors).to have_key(:name)
    end

    it "is invalid without a location" do
      event = Event.new(location: nil)
      event.valid?
      expect(event.errors).to have_key(:location)
    end

    it "is invalid with a listing name longer than 50 characters" do
      event = Event.new(name: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. ")
      event.valid?
      expect(event.errors).to have_key(:name)
    end
  end
end
