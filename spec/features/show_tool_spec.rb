describe "Viewing an individual tool" do
  it "shows the tool's details" do
    tool = Tool.create(tool_attributes(price:10.00, description:"This, that and the other..."))

    visit tool_url(tool)

    expect(page).to have_text(tool.name)
    expect(page).to have_text("$10.00")
    expect(page).to have_text("This, that and the other...")
    expect(page).to have_text(tool.comment)
    expect(page).to have_selector("img[src$='#{tool.image_file_name}']")
  end

  it "shows the price if the price is not $0" do
    tool = Tool.create(tool_attributes(price: 20.00))

    visit tool_url(tool)

    expect(page).to have_text("$20.00")
  end

  it "shows 'Free' if the price is $0" do
    tool = Tool.create(tool_attributes(price: 0.00))

    visit tool_url(tool)

    expect(page).to have_text("Free")
  end

  it "displays the footer partial" do
    tool = Tool.create(tool_attributes)

    visit tool_url(tool)

    expect(page).to have_text("IsmSkism")
  end
end

