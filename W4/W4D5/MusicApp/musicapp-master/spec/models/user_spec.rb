require 'rails_helper'
require 'spec_helper'
require 'factory_girl'

describe User do
  let(:user) do
    User.new(
    email: "test@test.com",
    password: "good_password")
  end

  describe 'validations' do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password_digest) }
    it { should validate_length_of(:password).is_at_least(6)}
  end

  describe 'associations' do

  end

  describe '#is_password?' do
    it 'verifies a password is correct' do
      expect(user.is_password?("good_password")).to be true
    end

    it 'verifies a password is not correct' do
      expect(user.is_password?("password")).to be false
    end
  end

  describe '#reset_session_token' do
    it 'sets a new session token for user' do
      old = user.session_token
      user.reset_session_token!
      expect(old).to_not eq(user.session_token)
    end

  end
  describe '::find_by_credentials' do
    before { user.save! }
    it 'returns nil if user doesn\'t exist or gave wrong credentials' do
      expect(User.find_by_credentials("test@test.com", "wrong_password")).to eq(nil)
    end

    it 'returns the user if the the user gave the right credentials' do
      expect(User.find_by_credentials("test@test.com", "good_password")).to eq(user)
    end
  end
end
