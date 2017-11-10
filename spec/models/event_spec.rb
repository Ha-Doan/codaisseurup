require 'rails_helper'

RSpec.describe Event, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  describe "association with user" do
    it { is_expected.to belong_to :user}
end
=begin
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
=end
  describe "association with booking" do
  let(:guest_user) { create :user, email: "guest@user.com" }
  let(:host_user) { create :user, email: "host@user.com" }

  let!(:event) { create :event, user: host_user }
  let!(:booking) { create :booking, event: event, user: guest_user }

  it "has guests" do
    expect(event.guests).to include(guest_user)
  end
end
end
