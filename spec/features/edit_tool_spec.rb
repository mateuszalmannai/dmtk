describe 'Editing a tool' do

  it "updates the tool and shows the tool's update details" do
    tool = Tool.create(tool_attributes)

    visit tool_url(tool)

    click_link 'Edit'

    expect(current_path).to eq(edit_tool_path(tool))

    expect(find_field('Name').value).to eq(tool.name)
    expect(find_field('Description').value).to eq(tool.description)

  end
end