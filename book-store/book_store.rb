# Write your code for the 'Book Store' exercise in this file. Make the tests in
# `book_store_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/book-store` directory.
class BookStore
  DISCOUNT = {
    1 => 0.00,
    2 => 0.05,
    3 => 0.10,
    4 => 0.20,
    5 => 0.25
  }.freeze
  PRICE = 8.00

  def self.calculate_price(basket)
    return (PRICE * 0) if basket.empty?

    books_count = basket.tally
    divisions = []
    while books_count.count.positive?
      divisions << books_count.count
      books_count.keys.map { |num| books_count[num] = books_count[num] - 1 }
      books_count.delete_if { |_k, v| v.zero? }
    end

    while divisions.include?(3) && divisions.include?(5)
      divisions.slice!(divisions.index(3))
      divisions.slice!(divisions.index(5))
      divisions.push(4, 4)
    end
    divisions.sum { |division| division * PRICE - (DISCOUNT[division] * PRICE * division) }
  end

end
