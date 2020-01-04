binding.pry
class PigLatinizer
  attr_reader :input
  def initialize(input)
    @input = input
  end

  def piglatinizer
    binding.pry
    ^/[aeioui]/i.match(@input)
  end
end