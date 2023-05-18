# Write your code for the 'Tournament' exercise in this file. Make the tests in
# `tournament_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/tournament` directory.
module Tournament
  extend self

  DEF_POINTS = { win: 3, loss: 0, draw: 1 }.freeze

  def tally(input)
    table_temp = "Team                           | MP |  W |  D |  L |  P\n"
    return table_temp if input.strip.empty?

    matches = []
    input.lines.map do |line|
      matches << line.split(';')[0..2]
    end
    finals = score_calculations(matches).sort_by { |final| [-final[5], final[0]] }
    table_temp += finals.map { |final| "%-30s | %2d | %2d | %2d | %2d | %2d\n" %[final[0], final[1], final[2], final[3], final[4], final[5]]}.join
  end

  private

  def score_calculations(matches)
    scores = []
    matches.map do |match|
      if DEF_POINTS[match[2].strip.to_sym] == DEF_POINTS[:win]
        scores.concat([[match[0], (DEF_POINTS[:win])], [match[1], (DEF_POINTS[:loss])]])
      elsif DEF_POINTS[match[2].strip.to_sym] == DEF_POINTS[:draw]
        scores.concat([[match[1], (DEF_POINTS[match[2].strip.to_sym])], [match[0], (DEF_POINTS[match[2].strip.to_sym])]])
      else
        scores.concat([[match[0], (DEF_POINTS[:loss])], [match[1], (DEF_POINTS[:win])]])
      end
    end
    grouping_teams(scores)

  end

  def grouping_teams(scores)
    scores.group_by(&:first).map do |team_name, results|
      [team_name,                                                                # Team Name
       results.count { |_, points| points },                                     # matches played
       results.count { |_, points| points == DEF_POINTS[:win] },                 # winning times
       results.count { |_, points| points == DEF_POINTS[:draw] },                # drawing times
       results.count { |_, points| points == DEF_POINTS[:loss] },                # losing times
       results.sum { |_, points| points }]                                       # total points
    end

  end
end
