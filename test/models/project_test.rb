require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  
  context 'associations' do
    should have_many(:positions)
    should belong_to(:organization)
  end
  
end
