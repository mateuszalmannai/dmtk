require 'rails_helper'

describe "Viewing the list of tools" do
  it "shows the tools" do
    visit tools_url

    expect(page).to have_text("3 Tools")
    expect(page).to have_text("Tool 1")
    expect(page).to have_text("Tool 2")
    expect(page).to have_text("Tool 3")
  end
end
