require 'rails_helper'

RSpec.describe StringCleanService, type: :model do
  describe '#call' do
    it 'cleans a string and removes all non ints' do
      result = StringCleanService.new("Rc!bxX2M46EMnCfXeqm*6").call
      expect(result.to_i).to be_a_kind_of(Numeric)
    end
    it 'cleans a string and returns and empty string when there are no ints' do
      # "", and nil are both produce the integer 0 when converted using to_i
      result = StringCleanService.new("Rc!bxXMEMnCfXeqm*").call
      expect(result.to_i).to be_a_kind_of(Numeric)
    end
    it 'cleans a string and removes all non ints when there is white space' do
      result = StringCleanService.new("Rc!bxX2M46   EMnCfXeqm*   6").call
      expect(result.to_i).to be_a_kind_of(Numeric)
    end
  end
end
