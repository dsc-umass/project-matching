require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  context 'associations' do
    should have_and_belong_to_many(:organizations)
  end
  
end
