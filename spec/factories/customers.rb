

# rspec,This provides a means of generating as many sample
# customer entries as we want.
require 'faker'
FactoryBot.define do
  factory :customer do |f|
    f.first_name { Faker::Name.first_name }
    f.last_name { Faker::Name.last_name }
    f.phone { Faker::Number.number(digits: 10) }
    f.email { Faker::Internet.email }
  end
end


# FactoryBot.define do
#   factory :customer do
#
#   end
# end