require 'rails_helper'

RSpec.describe SponsoredPost, type: :model do
  let(:sponsored_post){SponsoredPost.new}
  describe "attributes" do

    it { is_expected.to belong_to(:topic) }

    it "responds to title" do
      expect(sponsored_post).to respond_to(:title)
    end

    it "responds to body" do
      expect(sponsored_post).to respond_to(:body)
    end
      
  end
end
