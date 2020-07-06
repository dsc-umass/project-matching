require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  # context 'associations' do
  #   should have_and_belong_to_many(:organizations)
  # end
  
  #validation test
  context 'validations' do
    should validate_presence_of(:name)
    should validate_confirmation_of(:email)
    should validate_presence_of(:confirmation)
  end
end
