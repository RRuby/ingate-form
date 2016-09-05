require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe 'GET #index' do
    let(:users){ 3.times.map{ create(:user) }}

    it 'assigns users to @users' do
      get :index
      expect(assigns(:users)).to match_array(users)
    end

    it do
      get :index
      should render_template(:index)
    end
  end

  describe 'POST #create' do
    context 'with valid attributes' do
      let(:user_attrs){ attributes_for(:user) }

      it 'creates user in database' do
        expect {
          post :create, user: user_attrs
        }.to change(User, :count).by(1)
      end

      it do
        post :create, user: user_attrs
        should redirect_to(users_path)
      end
    end

    context 'with invalid attributes' do
      let(:user_attrs){ attributes_for(:user, :invalid) }

      it 'does not create user in database' do
        expect {
          post :create, user: user_attrs
        }.not_to change { User.count }
      end

      it do
        post :create, user: user_attrs
        should redirect_to(users_path)
      end
    end
  end

end
