require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  
  context 'associations' do
    should have_many(:positions)
    should belong_to(:organization)
  end

  #validation test
  describe 'validations' do:
    it{ is_expeected.to validate_length_of(:title) }
    it{ is_expeected.to validate_presence_of(:organization_id) }
  end
end
