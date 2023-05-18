# Write your code for the 'Bob' exercise in this file. Make the tests in
# `bob_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/bob` directory.
# "Sure." This is his response if you ask him a question, such as "How are you?" The convention used for questions is that it ends with a question mark.
# "Whoa, chill out!" This is his answer if you YELL AT HIM. The convention used for yelling is ALL CAPITAL LETTERS.
# "Calm down, I know what I'm doing!" This is what he says if you yell a question at him.
# "Fine. Be that way!" This is how he responds to silence. The convention used for silence is nothing, or various combinations of whitespace characters.
# "Whatever." This is what he answers to anything else.
module Bob
  module_function

  def hey(remark)
    remark = remark.strip
    question = remark.chars.last == '?'
    yelling = remark == remark.upcase && remark.count("A-Z").positive?
    silence = remark.empty?

    if yelling && question
      "Calm down, I know what I'm doing!"
    elsif yelling && !silence
      'Whoa, chill out!'
    elsif question
      'Sure.'
    elsif silence
      'Fine. Be that way!'
    else
      'Whatever.'
    end
  end
end
