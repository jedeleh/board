FactoryBot.define do 
  factory :user do 
    sequence(:email) { |n| "test-#{n.to_s.rjust(3, "0")}@sample.com" }
    sequence(:name) { |n| "user_name_#{n.to_s}" }
    password { "password1" }
  end

  factory :post do 
    user
    title { "A title" }
    body  { "This is the message itself" }
  end

  factory :comment do
    user
    post
    body  { "This is a comment" }
  end
end