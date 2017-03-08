require "test_helper"

describe Terminal do
  let(:terminal) { Terminal.new }

  it "must be valid" do
    value(terminal).must_be :valid?
  end
end
