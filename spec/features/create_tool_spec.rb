describe 'Creating a new tool' do

  it "saves the tool and shows the new tool's details" do
    create_new_tool

    click_button 'Create Tool'

    expect(current_path).to eq(tool_path(Tool.last))

    expect(page).to have_text('New Tool Name')
  end

  it "does not save the tool and goes to the listing page when 'Cancel' is pressed" do
    create_new_tool

    click_link "Cancel"

    expect(current_path).to eq(tools_path)

    expect(page).to_not have_text('New Tool Name')
  end

  it "displays the footer partial" do
    setup_tool

    expect(page).to have_text("The Pragmatic Studio")
  end
end

private

def create_new_tool
  visit tools_url

  click_link 'Add New Tool'

  expect(current_path).to eq(new_tool_path)

  fill_in "tool_name", with: "New Tool Name"
  fill_in "tool_description", with: "A very useful tool you should definitely know about"
  fill_in "tool_price", with: "10.00"
end

