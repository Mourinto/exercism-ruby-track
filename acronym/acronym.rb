class Acronym
  def self.abbreviate(phrase)
    acronym = ''
    phrase.scan(/[a-z]+/i).each { |word| acronym << word[0].upcase }
    acronym
  end
end