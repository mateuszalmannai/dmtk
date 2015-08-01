describe 'Creating a new tool' do

  it "saves the tool and shows the new tool's details" do
    visit tools_url

    click_link 'Add New Tool'

    expect(current_path).to eq(new_tool_path)

    fill_in "tool_name", with: "New Tool Name"
    fill_in "tool_description", with: "A very useful tool you should definitely know about"
    fill_in "tool_price", with: "10.00"

    click_button 'Create Tool'

    expect(current_path).to eq(tool_path(Tool.last))

    expect(page).to have_text('New Tool Name')
  end
end