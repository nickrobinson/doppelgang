FactoryGirl.define do
  factory :user do |user|
    user.name                   "Test User"
    user.email                  "user@example.com"
    user.password               "password"
    user.password_confirmation  "password"
    user.image                  "http://graph.facebook.com/v2.6/10209517378663646/picture"
  end
end
