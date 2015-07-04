require 'rails_helper'

describe "Viewing the list of tools" do
  it "shows the tools" do
    visit 'http://example.com/tools'

    expect(page).to have_text("3 Tools")
  end
end
