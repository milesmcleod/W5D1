require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe '#new' do
    it 'renders the new template' do
      get :new
      expect(response).to render_template(:new)
    end
  end

  describe '#create' do
    context 'with valid params' do
      it 'redirects to the goals index' do
        post :create, params: { user: { username: 'ron', password: 'password' } }
        expect(response).to redirect_to goals_url
      end

    end

    context 'with invalid params' do
      it 'validates the presence of username and password' do
        post :create, params: { user: { username: 'ron' } }
        expect(response).to render_template('new')
        expect(flash[:errors]).to be_present
      end
    end
  end

end
