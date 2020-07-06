require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  # context 'associations' do
  #   should have_and_belong_to_many(:organizations)
  # end
  
  #validation test
  describe 'validations' do:
    it{ is_expected.to validate_presence_of(:name) }
    it{ is_expected.to validate_confirmation_of(:email) }
    it{ is_expected.to validate_presence_of(:confirmation) }
  end
end
