require 'rails_helper'

RSpec.describe ItemController, :type => :controller do

  describe 'get #index' do
    let(:retro_item) { FactoryGirl.create(:retro_item) }

    it 'assigns retro items' do
      get :index
      expect(assigns(:retro_items)).to eq([retro_item])
    end

    it 'returns http success' do
      get :index
      expect(response.status).to eq(200)
    end

    it 'renders the index template' do
      get :index
      expect(response).to render_template(:index)
    end
  end

  # describe "GET create," do
  #   it "returns http success" do
  #     get :create,
  #     expect(response).to be_success
  #   end
  # end
  #
  # describe "GET update," do
  #   it "returns http success" do
  #     get :update,
  #     expect(response).to be_success
  #   end
  # end
  #
  # describe "GET delete," do
  #   it "returns http success" do
  #     get :delete,
  #     expect(response).to be_success
  #   end
  # end

end