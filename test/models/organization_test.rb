require 'test_helper'

class OrganizationTest < ActiveSupport::TestCase
  
  context 'associations' do
    should have_many(:projects)
    should have_and_belong_to_many(:users)
  end
  
end
