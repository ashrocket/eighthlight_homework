class SpecialtiesExtractorService < ApplicationService
  attr_accessor :ids, :specialties
  def initialize(ids,specialties)
    @ids = ids
    @specialties = specialties.to_h
  end
  def call
    begin
      cleaned_ids = ids.map{|id| StringCleanService.new(id).call.to_i}
      uniq_ids = ListUniqueService.new(cleaned_ids).call
      return uniq_ids.map{|id| specialties[id]}.compact
    rescue ArgumentError => e
      return nil
    end
  end
end