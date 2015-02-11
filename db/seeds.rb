Food.destroy_all
User.destroy_all
Meal.destroy_all
Nutrition.destroy_all

u1 = User.create(:name => 'Luke', :gender => 'male', :activity_level => 'very high', :weight => '74', :height => '173', :password => 'food', :password_confirmation => 'food')
u2 = User.create(:name => 'Adam', :gender => 'male', :activity_level => 'high', :weight => '86', :height => '181', :password => 'food', :password_confirmation => 'food')
u3 = User.create(:name => 'Chad', :gender => 'male', :activity_level => 'very high', :weight => '99', :height => '184', :password => 'food', :password_confirmation => 'food')
u4 = User.create(:name => 'Kate', :gender => 'male', :activity_level => 'moderate', :weight => '55', :height => '163', :password => 'food', :password_confirmation => 'food')

# f1 = Food.create(:name => 'chicken', :serving_size => 'cup', :quantity => '1.5')
# f2 = Food.create(:name => 'beef', :serving_size => 'cup', :quantity => '2')
# f3 = Food.create(:name => 'sweet potato', :serving_size => 'cup', :quantity => '0.5')
# f4 = Food.create(:name => 'apple', :serving_size => 'cup', :quantity => '1')

n1 = Nutrition.create(:name => 'Paleo', :daily_carb => '100', :daily_fat => '120', :daily_protein => '160')
n2 = Nutrition.create(:name => 'Low Fat', :daily_carb => '150', :daily_fat => '20', :daily_protein => '80')
n3 = Nutrition.create(:name => 'Atkins', :daily_carb => '50', :daily_fat => '10', :daily_protein => '150')
n4 = Nutrition.create(:name => 'Ketone', :daily_carb => '50', :daily_fat => '400', :daily_protein => '145')
n5 = Nutrition.create(:name => 'Healthy Food Guide', :daily_carb => '310', :daily_fat => '70', :daily_protein => '80')


# m1 = Meal.create(:meal_type => 'lunch', :meal_date => '2011/09/19', :protein_guess => '30', :carb_guess => '20', :fat_guess => '10')
# m2 = Meal.create(:meal_type => 'lunch', :meal_date => '2014/11,12', :protein_guess => '25', :carb_guess => '33', :fat_guess => '13')
# m3 = Meal.create(:meal_type => 'dinner', :meal_date => '2013/02,22', :protein_guess => '40', :carb_guess => '25', :fat_guess => '9')
# m4 = Meal.create(:meal_type => 'breakfast', :meal_date => '2015/05,05', :protein_guess => '31', :carb_guess => '24', :fat_guess => '10')

# Associate nutrition with user
n1.users << u1 << u2
n4.users << u3 << u4
# Associate meal with user
# u1.meals << m1
# u2.meals << m2
# u3.meals << m3
# u4.meals << m4
# Associate foods with meal
# m1.foods << f4
# m2.foods << f3
# m3.foods << f2
# m4.foods << f1