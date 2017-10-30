require 'rails_helper'

RSpec.describe GoalsController, type: :controller do

  # describe "GET #index" do
  # 
  #   it "returns http success" do
  #     get :index
  #     expect(response).to have_http_status(:success)
  #   end
  #
  #   it "renders the index page" do
  #     get :index
  #     expect(response).to render_template(:index)
  #   end
  #
  # end
  #
  # describe "GET #show" do
  #
  #   before(:each) do
  #     User.create!(username: 'user', password: 'password')
  #     Goal.create!(body: 'testing', user_id: 1, private: false)
  #   end
  #
  #   it "renders the show page" do
  #     get :show, params: {id: 1}
  #     expect(response).to render_template(:show)
  #   end
  #
  #   it "returns http success" do
  #     get :show
  #     expect(response).to have_http_status(:success)
  #   end
  #
  # end
  #
  # describe "GET #new" do
  #
  #   it "renders the new template" do
  #     get :new
  #     expect(response).to render_template(:new)
  #   end
  #
  #   it "returns http success" do
  #     get :new
  #     expect(response).to have_http_status(:success)
  #   end
  # end
  #
  # describe "POST #create" do
  #   context 'with valid params'
  #     it 'redirects to the goal show page' do
  #       post goals_url, params: { goal: { body: 'test' } }
  #       expect(response).to redirect_to(goals_url)
  #     end
  #
  #   context 'with invalid params' do
  #     it 'renders the new goal page' do
  #       post goals_url, params: { }
  #       expect(response).to render_template new_goal_url
  #     end
  #   end
  # end
  #
  # describe "GET #edit" do
  #   it "returns http success" do
  #     get :edit
  #     expect(response).to have_http_status(:success)
  #   end
  # end
  #
  # describe "PATCH #update" do
  #
  #   before(:each) do
  #     User.create!(username: 'user', password: 'password')
  #     Goal.create!(body: 'testing', user_id: 1, private: false)
  #   end
  #
  #   context 'with valid params'
  #     it 'redirects to the goal show page' do
  #       patch edit_goal_url(Goal.last), params: { goal: { body: 'test2' } }
  #       expect(response).to redirect_to(goals_url)
  #     end
  #
  #   context 'with invalid params' do
  #     it 'renders the new goal page' do
  #       patch edit_goal_url(Goal.last), params: nil
  #       expect(response).to render_template edit_goal_url(Goal.last)
  #     end
  #   end
  # end
  #
  # describe "DELETE #destroy" do
  #   it "returns http success" do
  #     get :destroy
  #     expect(response).to have_http_status(:success)
  #   end
  # end
  #
  #

end
