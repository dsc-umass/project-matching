require 'test_helper'

class OrganizationTest < ActiveSupport::TestCase
  
  context 'associations' do
    should have_many(:projects)
    should belong_to(:universities)
    # should have_and_belong_to_many(:users)
  end
  
  context 'validations' do
    should validate_presence_of(:name)
    should validate_presence_of(:email)
  end
end
