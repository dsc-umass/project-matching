require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  
  context 'associations' do
    should have_many(:positions)
    should belong_to(:organization)
  end

  context 'validations' do
    should validate_length_of(:title).
      is_at_least(3).is_at_most(20)
    should validate_presence_of(:organization_id)
  end
end
