Food.destroy_all
User.destroy_all
Meal.destroy_all
Nutrition.destroy_all

u1 = User.create(:name => 'Luke', :gender => 'male', :activity_level => 'very high', :weight => '74', :height => '173')
u2 = User.create(:name => 'Adam', :gender => 'male', :activity_level => 'high', :weight => '86', :height => '181')
u3 = User.create(:name => 'Chad', :gender => 'male', :activity_level => 'very high', :weight => '99', :height => '184')
u4 = User.create(:name => 'Kate', :gender => 'male', :activity_level => 'moderate', :weight => '55', :height => '163')

f1 = Food.create(:name => 'chicken', :serving_size => 'cup', :quantity => '1.5')
f2 = Food.create(:name => 'beef', :serving_size => 'cup', :quantity => '2')
f3 = Food.create(:name => 'sweet potato', :serving_size => 'cup', :quantity => '0.5')
f4 = Food.create(:name => 'apple', :serving_size => 'cup', :quantity => '1')

n1 = Nutrition.create(:name => 'paleo', :daily_carb => '150', :daily_fat => '35', :daily_protein => '130')
n2 = Nutrition.create(:name => 'government', :daily_carb => '250', :daily_fat => '20', :daily_protein => '60')
n3 = Nutrition.create(:name => 'cyclist', :daily_carb => '350', :daily_fat => '35', :daily_protein => '90')
n4 = Nutrition.create(:name => 'ketone', :daily_carb => '100', :daily_fat => '60', :daily_protein => '120')

