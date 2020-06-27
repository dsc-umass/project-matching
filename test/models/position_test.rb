require 'test_helper'

class PositionTest < ActiveSupport::TestCase
  
  context 'associations' do
    should belong_to(:project)
  end  
  
end
