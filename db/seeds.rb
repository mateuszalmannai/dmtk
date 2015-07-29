# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Tool.create!([
                 {
                     name: "Pros and Cons",
                     description: "Weighing up pros and cons can speed up the decision-making process, improve your understanding of the situation and help you avoid decsion-making paralysis.",
                 },
                 {
                     name: "PMI",
                     description: "An acronym for Plus, Minus, Intersting. It takes the Scored Pro & Con a step further by forcing us to think about what's interesting about the choice."
                 },
                 {
                     name: "Pareto Analysis",
                     description: "Using the 80:20 Rule to Prioritize"
                 },
                 {
                     name: "Paired Comparison",
                     description: "Comparing apples with oranges. Paired Comparison Analysis helps you to work oiut the relative importance of a number of different options."
                 },
                 {
                     name: "Decision Matrix Analysis",
                     description: "Particularly powerful when you have a number of good alternatives to choose from and many different factors to take into account."
                 },
                 {
                     name: "Decision Tree Analysis",
                     description: "Provides a highly effective structure within which you can lay out options and investigate the possible outcomes of choosing these options. They also help you to form a balanced picture of the risks and rewards associated with each possible course of action."
                 }
             ])