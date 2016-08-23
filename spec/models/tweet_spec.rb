require 'rails_helper'

RSpec.describe Tweet, type: :model do
  let(:tweet) {Tweet.new(status:"active")}

  it "should increment the count" do
    expect {tweet.save}.to change{Tweet.count}
  end

  it "should have status" do
    t = Tweet.new(status:  "Active")
    expect(t.status).to  eq("Active")
  end

  it "should be public" do
    t = Tweet.new(status: "public")

    expect(t.public?).to eq(true)
  end

   it "should not be public" do
    t = Tweet.new

    expect(t.public?).to eq(false)
  end



end
