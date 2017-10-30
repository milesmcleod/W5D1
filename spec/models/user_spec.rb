require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:username) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_presence_of(:session_token) }
  it { should validate_length_of(:password).is_at_least(6) }

  describe '::find_by_credentials' do
    subject!(:user) do
      FactoryBot.create(:user)
    end

    context 'with valid credentials' do
      it 'successfuly finds the user' do
        expect(User.find_by_credentials('Ron Burgundy', 'password')).to eq(user)
      end
    end

    context 'with invalid credentials' do
      it 'should return nil if not found' do
        expect(User.find_by_credentials('Ron', 'pw')).to be nil
      end
    end
  end
end
