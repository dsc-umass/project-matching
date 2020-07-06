require 'test_helper'

class PositionTest < ActiveSupport::TestCase
  
  context 'associations' do
    should belong_to(:project)
  end  
  
  #validation test
  context 'validations' do
    should validate_length_of(:title)
    should validate_presence_of(:project_id)
    should validate_presence_of(:user_id)
    should validate_presence_of(:integer)
  end
end
