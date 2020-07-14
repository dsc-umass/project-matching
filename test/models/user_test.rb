require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  context 'associations' do
    # should have_and_belong_to_many(:organizations)
    should belong_to(:universities)
  end
  
  context 'validations' do
    should validate_presence_of(:name)
    should validate_presence_of(:email)
  end
end
