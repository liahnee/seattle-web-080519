# Test out your code here in console
require 'pry'
require 'require_all'
require_all '../05-code-challenge-review'

hamilton = Musical.new("Hamilton", "NYC")
cats = Musical.new("Cats", "NYC")
wicked = Musical.new("Wicked", "Seattle")

paramount = Theater.new("Paramount", "Seattle")
seattle_rep = Theater.new("Seattle Rep", "Seattle")
crocodile = Theater.new("Crocodile", "Seattle")
dizzys = Theater.new("Dizzys", "NYC")

performance1 = Performance.new("2019-09-09", hamilton, dizzys)
performance2 = Performance.new("2020-10-08", cats, paramount)
performance3 = Performance.new("2019-09-09", wicked, dizzys)
hamilton.theaters

# p "hi"
binding.pry
# Pry.start
0
