require 'rails_helper'

RSpec.describe EventsController, type: :controller do
=begin DON'T test controller in unit test
describe "EventsController should get index" do
  it "should get index" do
      get :index
      expect(response).to be_success
      expect(assigns(:events)).not_to eq(nil)
    end
end
=end
end
