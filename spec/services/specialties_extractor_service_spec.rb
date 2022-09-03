#
# and this list of specialties (the first item being a canonical ID):
# [[1381, "front-end web development”],
# [8235, "data engineering"],
# [3434, "API design"],
# [7623, "security"],
# [9153, “UX"]]
require 'rails_helper'

RSpec.describe SpecialtiesExtractorService, type: :model do
  describe '#call' do

    let!(:specialties) { [[1381, "front-end web development"],
                         [8235, "data engineering"],
                         [3434, "API design"],
                         [7623, "security"],
                         [9153, "UX"]] }
    it 'maps specialties based on canonical ids' do
      ids = ["7-623", "8235", "8-235"]
      result = SpecialtiesExtractorService.new(ids, specialties).call
      expect(result).to eq ["security", "data engineering"]
    end
    it 'returns an empty array when no ids match' do
      ids =["22d-623", "8f9235", "8-223235"]
      result = SpecialtiesExtractorService.new(ids, specialties).call
      expect(result).to be_empty
    end

  end
end
