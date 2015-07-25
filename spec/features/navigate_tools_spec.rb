describe "Navigating tools" do
  it "allows navigation from the detail page to the listing page" do
    tool = Tool.create(tool_attributes)

    visit tool_url(tool)

    click_link "All Tools"

    expect(current_path).to eq(tools_path)
  end

  it "allows navigation from the listing page to the detail page" do
    tool = Tool.create(tool_attributes)

    visit tools_url

    click_link tool.name

    expect(current_path).to eq(tool_path(tool))
  end
end
