require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  
  context 'associations' do
    should have_many(:positions)
    should belong_to(:organization)
  end

  #validation test
  context 'validations' do
    should validate_length_of(:title)
    should validate_presence_of(:organization_id)
  end
end
