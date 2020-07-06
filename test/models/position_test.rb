require 'test_helper'

class PositionTest < ActiveSupport::TestCase
  
  context 'associations' do
    should belong_to(:project)
  end  
  
  #validation test
  describe 'validations' do:
    it{ is_expeected.to validate_length_of(:title) }
    it{ is_expeected.to validate_presence_of(:project_id) }
    it{ is_expeected.to validate_presence_of(:user_id) }
    it{ is_expeected.to validate_presence_of(:integer) }
  end
end
