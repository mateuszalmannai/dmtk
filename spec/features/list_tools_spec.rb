require 'rails_helper'

describe "Viewing the list of tools" do
  it "shows the tools" do
    tool1 = Tool.create(name: "Pros and Cons",
                        description: "Weighing up pros and cons can speed up the decision-making process,
                        improve your understanding of the situation and help you avoid decision-making
                        paralysis.")
    tool2 = Tool.create(name: "PMI",
                        description: "An acronym for Plus, Minus, Interesting. It takes the Scored Pro &
                        Con a step further by forcing us to think about what's interesting about the
                        choice.")
    tool3 = Tool.create(name: "Pareto Analysis",
                        description: "Using the 80:20 Rule to Prioritize.")
    tool4 = Tool.create(name: "Paired Comparison",
                        description: "Comparing apples with oranges. Paired Comparison Analysis helps you
                        to work out the relative importance of a number of different options.")
    tool5 = Tool.create(name: "Decision Matrix Analysis",
                        description: "Particularly powerful when you have a number of good alternatives to
                        choose from and many different factors to take into account.")
    tool6 = Tool.create(name: "Decision Tree Analysis",
                        description: "Provides a highly effective structure within which you can lay out
                        options and investigate the possible outcomes of choosing these options. They also
                        help you to form a balanced picture of the risks and rewards associated with each
                        possible course of action.")
    visit tools_url

    expect(page).to have_text("6 Tools")
    expect(page).to have_text(tool1.name)
    expect(page).to have_text(tool2.name)
    expect(page).to have_text(tool3.name)
    expect(page).to have_text(tool4.name)
    expect(page).to have_text(tool5.name)
    expect(page).to have_text(tool6.name)

    expect(page).to have_text(tool1.description)
    expect(page).to have_text(tool2.description)
    expect(page).to have_text(tool3.description)
    expect(page).to have_text(tool4.description)
    expect(page).to have_text(tool5.description)
    expect(page).to have_text(tool6.description)
  end
end
