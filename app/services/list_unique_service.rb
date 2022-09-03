class ListUniqueService < ApplicationService
  #https://bugs.ruby-lang.org/issues/11323
  # Ruby arry uniq preserves order
  attr_accessor :new_list, :old_list
  def initialize(input)
    @old_list = input
    @new_list  = @old_list.chars.to_a.uniq.join
  end

  def call
    begin
      return new_list
    rescue ArgumentError => e
      return nil
    end
  end
end