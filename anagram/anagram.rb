# frozen_string_literal: true
# Write your code for the 'Anagram' exercise in this file. Make the tests in
# `anagram_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/anagram` directory.
class Anagram

  def initialize(target)
    @target = target.downcase
  end

  def match(candidates)
    matched = []
    candidates.map do |candidate|
      candidate_chars = candidate.downcase.chars.sort
      target_chars = @target.chars.sort
      matched << candidate if target_chars == candidate_chars && @target != candidate.downcase
    end
    matched
  end
end
