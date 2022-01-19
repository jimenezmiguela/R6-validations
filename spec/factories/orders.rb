# FactoryBot.define do
#   factory :order do
#     product_name { "MyString" }
#     product_count { 1 }
#     customer { "" }
#   end
# end

FactoryBot.define do
  factory :order do
    product_name { Faker::Lorem.word }
    product_count { Faker::Number.number(digits: 3).to_i }
    association :customer
  end
end
