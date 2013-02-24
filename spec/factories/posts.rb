# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    title "Awesome post"
    content "An awesome post"
    user
  end
end
