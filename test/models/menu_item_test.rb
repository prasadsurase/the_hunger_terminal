require "test_helper"

describe MenuItem do
  let(:menu_item) { MenuItem.new }

  it "must be valid" do
    value(menu_item).must_be :valid?
  end
end
