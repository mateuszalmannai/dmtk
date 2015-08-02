describe 'Editing a tool' do

  it "updates the tool and shows the tool's update details" do
    tool = setup_tool

    click_button 'Update Tool'

    expect(current_path).to eq(tool_path(tool))

    expect(page).to have_text('Updated Tool Name')
  end

  it "does not update the tool and goes back to the listings page when 'Cancel' is pressed" do
    tool = setup_tool

    click_link 'Cancel'


    expect(current_path).to eq(tools_path)

    expect(page).to_not have_text('Updated Tool Name')
  end

  it "displays the footer partial" do
    setup_tool

    expect(page).to have_text("The Pragmatic Studio")
  end
end

private

def setup_tool
  tool = Tool.create(tool_attributes(price: 19.95))

  visit tool_url(tool)

  click_link 'Edit'

  expect(current_path).to eq(edit_tool_path(tool))

  expect(find_field('Name').value).to eq(tool.name)
  expect(find_field('Description').value).to eq(tool.description)
  expect(find_field('Price').value).to eq("19.95")

  fill_in 'Name', with: "Updated Tool Name"
  tool
end
