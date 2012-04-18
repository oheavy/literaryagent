# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :version do
    content "MyString"
    document_id 1
    current_version_id 1
  end
end
