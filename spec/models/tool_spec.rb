describe "A tool" do
  it "is free if the price is $0" do
    tool = Tool.new(price: 0)

    expect(tool.free?).to eq(true)
  end

  it "is not free if the price is non-$0" do
    tool = Tool.new(price: 10.00)

    expect(tool.free?).to eq(false)
  end

  it "is free if the price is blank" do
    tool = Tool.new(price: nil)

    expect(tool.free?).to eq(true)
  end
end
