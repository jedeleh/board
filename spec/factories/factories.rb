FactoryBot.define do 
  factory :user do 
    sequence(:email) { |n| "test-#{n.to_s.rjust(3, "0")}@sample.com" }
    sequence(:name) { |n| "user_name_#{n.to_s}" }
end