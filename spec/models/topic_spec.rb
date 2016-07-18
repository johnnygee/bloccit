require 'rails_helper'

RSpec.describe Topic, type: :model do
  let(:topic) { create(:topic) }
  it { is_expected.to have_many(:posts) }

  it { is_expected.to have_many(:labelings) }
 # #10
  it { is_expected.to have_many(:labels).through(:labelings) }
 # #1
   describe "attributes" do
     it "responds to name" do
       expect(topic).to respond_to(:name)
     end

     it "responds to name and description attributes" do
       expect(topic).to have_attributes(name: topic.name, description: topic.description)
     end

     it "responds to description" do
       expect(topic).to respond_to(:description)
     end

     it "responds to public" do
       expect(topic).to respond_to(:public)
     end

 # #2
     it "is public by default" do
       expect(topic.public).to be(true)
     end
   end
end
