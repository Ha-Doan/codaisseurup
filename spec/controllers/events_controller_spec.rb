require 'rails_helper'

RSpec.describe EventsController, type: :controller do
describe "EentsController should get index" do
  it "should get index" do
      get :index
      expect(response).to be_success
      expect(assigns(:events)).not_to eq(nil)
    end
end
end
