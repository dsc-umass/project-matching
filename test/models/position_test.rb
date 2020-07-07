require 'test_helper'

class PositionTest < ActiveSupport::TestCase
  
  context 'associations' do
    should belong_to(:project)
  end  
  
  context 'validations' do
    should validate_length_of(:title).
      is_at_least(3).is_at_most(20)
    should validate_presence_of(:project_id)
    should validate_presence_of(:user_id)
    should validate_presence_of(:integer)
  end
end
