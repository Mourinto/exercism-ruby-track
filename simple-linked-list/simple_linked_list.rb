# frozen_string_literal: true

# Write your code for the 'Simple Linked List' exercise in this file. Make the tests in
# `simple_linked_list_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/simple-linked-list` directory.

class SimpleLinkedList
  attr_reader :list

  def initialize(array = [])
    @list = array.map { |ele| Element.new(ele) }
  end

  def push(new_ele)
    list.push(new_ele)
    self
  end

  def pop
    list.pop
  end

  def to_a
    list.map(&:datum).reverse
  end

  def reverse!
    @list = @list.reverse
    self
  end

end

class Element
  attr_reader :datum
  attr_accessor :next

  def initialize(datum)
    @datum = datum
    @next = nil
  end

end
