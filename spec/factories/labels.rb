FactoryGirl.define do
  factory :label do
    body RandomData.random_paragraph
    topic
    post
  end
end
