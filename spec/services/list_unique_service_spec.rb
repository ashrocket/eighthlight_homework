require 'rails_helper'

RSpec.describe ListUniqueService, type: :model do
  describe '#call' do
    it 'removes all dups and preserves order' do
      result = ListUniqueService.new("11223344ffgghhjjmississippi").call
      expect(result).to eql? "1234fghjmisp"
    end
    it 'returns an empty list when given and empty list' do
      result = ListUniqueService.new("").call
      expect(result).to eql? ""
    end
    it 'returns original list when given a list with no duplicastes' do
      no_dups = "12345690aghjioebm<%"
      result = ListUniqueService.new(no_dups).call
      expect(result).to eql? no_dups
    end
  end
end
