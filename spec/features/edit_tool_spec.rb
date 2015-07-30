describe 'Editing a tool' do

  it "updates the tool and shows the tool's update details" do
    tool = Tool.create(tool_attributes(price:19.95))

    visit tool_url(tool)

    click_link 'Edit'

    expect(current_path).to eq(edit_tool_path(tool))

    expect(find_field('Name').value).to eq(tool.name)
    expect(find_field('Description').value).to eq(tool.description)
    expect(find_field('Price').value).to eq("19.95")

    fill_in 'Name', with: "Updated Tool Name"

    click_button 'Update Tool'

    expect(current_path).to eq(tool_path(tool))

    expect(page).to have_text('Updated Tool Name')

  end
end