describe "Viewing an individual tool" do
  it "shows the tool's details" do
    tool = Tool.create(name: "Pros and Cons",
                        description: "Weighing up pros and cons can speed up the decision-making process,
                        improve your understanding of the situation and help you avoid decision-making
                        paralysis.")

    visit tool_url(tool)

    expect(page).to have_text(tool.name)
    expect(page).to have_text(tool.description)
  end
end

