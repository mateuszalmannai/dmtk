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
                     price: 100.00,
                     comment: "The standard. Make sure to also try the weighted version.",
                     image_file_name: "pros_and_cons.jpg"
                 },
                 {
                     name: "PMI",
                     description: "An acronym for Plus, Minus, Intersting. It takes the Scored Pro & Con a step further by forcing us to think about what's interesting about the choice.",
                     price: 100.00,
                     comment: "List all the pluses, minuses and implications behind the decision. Then assign a + or -
                               numerical value to each based on the positive or negative impact. Tally up the columns
                               and your better option emerges. Takes the emotion and guesswork out of complex decisions,
                               with the side benefit of forcing a brain dump.",
                     image_file_name: "pmi.png"
                 },
                 {
                     name: "Pareto Analysis",
                     description: "Using the 80:20 Rule to Prioritize",
                     price: 100.00,
                     comment: "Often better known as the 80/20 Rule, Pareto helps you locate where you can derive the
                               greatest benefit by expending the least relative effort (or cost or resources or what
                               have you). In the go-go dotcom days, the bizdev guys used to call this 'low hanging
                               fruit'. Once you learn about the 80/20 rule, you start seeing instances of it everywhere.",
                     image_file_name: "pareto.jpg"
                 },
                 {
                     name: "Paired Comparison",
                     description: "Comparing apples with oranges. Paired Comparison Analysis helps you to work oiut the relative importance of a number of different options.",
                     price: 100.00,
                     comment: "Compose a table that pits each option directly against each other option, mano a mano,
                               cage-match-style, and weighing each for relative importance. It's a fast and bloodless
                               way to plow through what would otherwise be a huge mess to evaluate",
                     image_file_name: "paired_comparison.jpg"
                 },
                 {
                     name: "Decision Matrix Analysis",
                     description: "Particularly powerful when you have a number of good alternatives to choose from and many different factors to take into account.",
                     price: 100.00,
                     comment: "Also known as Grid Analysis. Evaluate a large set of options based on numerous criteria,
                               then weight the importance of each criterion to derive the best choice. Give the
                               complexity and arithmetic required, this one really benefits from good old Excel",
                     image_file_name: "decision_matrix.png"
                 },
                 {
                     name: "Decision Tree Analysis",
                     description: "Provides a highly effective structure within which you can lay out options and investigate the possible outcomes of choosing these options. They also help you to form a balanced picture of the risks and rewards associated with each possible course of action.",
                     price: 100.00,
                     comment: "Basically build a set of 'what-ifs' based on a tree of possible options, assigning the
                               estimated value, cost or savings associated with each choice.",
                     image_file_name: "decision_tree.png"
                 },
                 {
                     name: "Cost/Benefit Analysis",
                     description: "A systematic approach to estimating the strengths and weaknesses of alternatives that
                                   satisfy transactions, activities or functional requirements.",
                     price: 100.00,
                     comment: "Estimate the costs and the benefits and decide if the delta is worth the hassle. As ever,
                               be sure to to account for for all the costs of a change, including the meta stuff. Related
                               to pros and cons in a way...",
                     image_file_name: "cost_benefit.jpg"
                 },
                 {
                     name: "Eisenhower Decision Matrix",
                     description: "A time management technique based on an unverified quote often ascribed to Dwight
                                   Eisenhower: 'What is important is seldom urgent and what is urgent is seldom
                                   important.' Some tasks are urgent and others are not. When you organize those, you
                                   make better use of your time. The matrix consists of a square divided into four
                                   quadrants:
                                   1. Important/Urgent quadrants are done immediately and personally
                                   2. Important/Not Urgent quadrants get an end date and are done personally
                                   3. Unimportant/Urgent quadrants are delegated
                                   4. Unimportant/Not Urgent quadrants are dropped",
                     price: 40.00,
                     comment: "The end goal of the matrix is to help you filter the noise from your decisions and
                               concnetrate on what really matters.",
                     image_file_name: "eisenhower.jpg"
                 }
             ])