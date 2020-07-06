require 'test_helper'

class OrganizationTest < ActiveSupport::TestCase
  
  context 'associations' do
    should have_many(:projects)
    # should have_and_belong_to_many(:users)
  end
  
  #validation test
  context 'validations' do
    should validate_presence_of(:name)
    should validate_confirmation_of(:email)
    should validate_presence_of(:confirmation)
  end
end
