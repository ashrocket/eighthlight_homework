require 'rails_helper'

RSpec.describe StringCleanService, type: :model do
  describe '#call' do
    it 'cleans a string and removes all non' do
      result = StringCleanService.new("Rc!bxX2M46EMnCfXeqm*6").call
      expect(result).to be_a_kind_of(Numeric)
    end
  end
end
