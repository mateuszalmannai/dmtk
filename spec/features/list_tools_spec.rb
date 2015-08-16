describe "Viewing the list of tools" do
  it "shows the tools" do
    tool1 = Tool.create(name: "Pros and Cons",
                        price: 100.00,
                        description: "Weighing up pros and cons can speed up the decision-making process,
                        improve your understanding of the situation and help you avoid decision-making
                        paralysis.")
    tool2 = Tool.create(name: "PMI",
                        price: 200.00,
                        description: "An acronym for Plus, Minus, Interesting. It takes the Scored Pro &
                        Con a step further by forcing us to think about what's interesting about the
                        choice.")
    tool3 = Tool.create(name: "Pareto Analysis",
                        price: 300.00,
                        description: "Using the 80:20 Rule to Prioritize.")
    tool4 = Tool.create(name: "Paired Comparison",
                        price: 400.00,
                        description: "Comparing apples with oranges. Paired Comparison Analysis helps you
                        to work out the relative importance of a number of different options.")
    tool5 = Tool.create(name: "Decision Matrix Analysis",
                        price: 500.00,
                        description: "Particularly powerful when you have a number of good alternatives to
                        choose from and many different factors to take into account.")
    tool6 = Tool.create(name: "Decision Tree Analysis",
                        price: 600.00,
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

    expect(page).to have_text(tool1.description[0..10])
    expect(page).to have_text(tool2.description[0..10])
    expect(page).to have_text(tool3.description[0..10])
    expect(page).to have_text(tool4.description[0..10])
    expect(page).to have_text(tool5.description[0..10])
    expect(page).to have_text(tool6.description[0..10])

    expect(page).to have_text(tool1.comment)
    expect(page).to have_selector("img[src$='#{tool1.image_file_name}']")
  end

  it "displays the footer partial" do

    Tool.create(tool_attributes)

    visit tools_url

    expect(page).to have_text("IsmSkism")
  end


  it "does not show a tool that costs more than $1000" do
    tool = Tool.create(tool_attributes(price: 1001.00))

    visit tools_url

    expect(page).not_to have_text(tool.name)
  end
end
