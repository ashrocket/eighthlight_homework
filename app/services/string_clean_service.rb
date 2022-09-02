class StringCleanService < ApplicationService
  attr_accessor :new_string, :old_string
  def initialize(input)
    @old_string = input
    @new_string  = input.chars.to_a.filter{|c| c =~ /\d/}.join
  end

  def call
    begin
      num = new_string.to_i
      return num
    rescue ArgumentError => e
      return nil
    end
  end
end