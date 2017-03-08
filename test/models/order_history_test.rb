require "test_helper"

describe OrderHistory do
  let(:order_history) { OrderHistory.new }

  it "must be valid" do
    value(order_history).must_be :valid?
  end
end
