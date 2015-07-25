describe "Viewing an individual tool" do
  it "shows the tool's details" do
    tool = Tool.create(tool_attributes(description:"This, that and the other..."))

    visit tool_url(tool)

    expect(page).to have_text(tool.name)
    expect(page).to have_text("This, that and the other...")
  end
end

