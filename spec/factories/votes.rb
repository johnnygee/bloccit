FactoryGirl.define do
  factory :vote do
    body RandomNumber
    user
    post
  end
end
