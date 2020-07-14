require 'test_helper'

class UniversityTest < ActiveSupport::TestCase
  context 'associations' do
    should have_many(:users)
    should have_many(:organizations)
  end

  context 'validations' do
    should validate_presence_of(:name)
  end
end
