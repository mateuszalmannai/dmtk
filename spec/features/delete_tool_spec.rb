describe 'Deleting a tool' do
  it "destroys the tool and shows the tool listing without the tool" do
    tool = Tool.create(tool_attributes)

    visit tool_path(tool)

    click_link 'Delete'

    expect(current_path).to eq(tools_path)
    expect(page).not_to have_text(tool.name)
  end
end


