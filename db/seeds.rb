Food.destroy_all
User.destroy_all
Meal.destroy_all
Nutrition.destroy_all

# u1 = User.create(:name => 'Luke', :dob => '1982/07/12', :gender => 'Male', :activity_level => '11', :weight => '74', :height => '173', :password => 'food', :password_confirmation => 'food')
# u2 = User.create(:name => 'Adam', :dob => '1985/01/03', :gender => 'Male', :activity_level => '7', :weight => '86', :height => '181', :password => 'food', :password_confirmation => 'food')
# u3 = User.create(:name => 'Chad', :dob => '1981/03/09', :gender => 'Male', :activity_level => '14', :weight => '99', :height => '184', :password => 'food', :password_confirmation => 'food')
# u4 = User.create(:name => 'Kate', :dob => '1987/10/02', :gender => 'Female', :activity_level => '5', :weight => '55', :height => '163', :password => 'food', :password_confirmation => 'food')

# f1 = Food.create(:name => 'chicken', :serving_size => 'cup', :quantity => '1.5')
# f2 = Food.create(:name => 'beef', :serving_size => 'cup', :quantity => '2')
# f3 = Food.create(:name => 'sweet potato', :serving_size => 'cup', :quantity => '0.5')
# f4 = Food.create(:name => 'apple', :serving_size => 'cup', :quantity => '1')

n1 = Nutrition.create(:name => 'Paleo', :daily_carb => '100', :daily_fat => '120', :daily_protein => '160', :description => "The Paleolithic dietis a modern nutritional diet that considers 'the environment of evolutionary adaptedness for our species and to view it as the shaper of the latest draft of our genome' Proponents of the diet therefore recommend avoiding any food categories that were not available to humans at that time, such as refined sugar, processed grains, and processed oils.

The diet is based on several premises. Proponents of the diet posit that during the Paleolithic era — a period lasting around 2.5 million years that ended about 10,000 years ago with the advent of agriculture and domestication of animals — humans evolved nutritional needs specific to the foods available at that time, and that the nutritional needs of modern humans remain best adapted to the diet of their Paleolithic ancestors. Proponents also claim that human metabolism has been unable to adapt fast enough to handle many of the foods that have become available since the advent of agriculture. Thus, modern humans are said to be maladapted to eating foods such as grain, legumes, and dairy, and in particular the high-calorie processed foods that are a staple part of most modern diets. Proponents claim that modern humans' inability to properly metabolize these comparatively new types of food has led to modern-day problems such as obesity, heart disease, and diabetes. They claim that followers of the Paleolithic diet may enjoy a longer, healthier, more active life.

Critics of the Paleolithic diet have pointed out a number of flaws with its underlying logic, including the fact that there is abundant evidence that paleolithic humans did in fact eat grains and legumes, that humans are much more nutritionally flexible than previously thought, that the hypothesis that Paleolithic humans were genetically adapted to specific local diets remains to be proven, that the Paleolithic period was extremely long and saw a variety of forms of human settlement and subsistence in a wide variety of changing nutritional landscapes, and that currently very little is known for certain about what Paleolithic humans ate. Average life expectancy was significantly lower than the one found in subsequent ages, and food and diet composition are among the main reasons for its increase, adding additional questions about the effectiveness of the Paleo Diet in terms of longevity and health.")

n2 = Nutrition.create(:name => 'Low Fat', :daily_carb => '150', :daily_fat => '20', :daily_protein => '80', :description => "A low-fat diet is one that restricts fat and often saturated fat and cholesterol as well. Low-fat diets are intended to reduce diseases such as heart disease and obesity. Reducing fat in the diet can make it easier to cut calories. Fat provides nine calories per gram while carbohydrates and protein each provide four calories per gram, so choosing low-fat foods makes it possible to eat a larger volume of food for the same number of calories. The Institute of Medicine recommends limiting fat intake to 35% of total calories to help prevent obesity and to help control saturated fat intake.

Reducing total fat intake leads to reductions in caloric intake, resulting in weight loss or less weight gain.[2] The overall benefit is small but beneficial. With respect to weight loss low-fat diets do not appear to differ from other diets that also reduce overall calories.

Low-fat diets have been promoted for the prevention of heart disease. Lowering fat intake from 35-40% of total calories to 15-20% of total calories has been shown to decrease total and LDL cholesterol by 10 to 20%; however, most of this decrease is due to a reduction in saturated fat intake. Saturated fat has been shown to raise total and LDL cholesterol in a large number of studies and has also been correlated with a higher risk of heart disease.")
n3 = Nutrition.create(:name => 'Atkins', :daily_carb => '50', :daily_fat => '120', :daily_protein => '150', :description => "The diet involves limited consumption of carbohydrates to switch the body's metabolism from metabolizing glucose as energy over to converting stored body fat to energy. This process, called ketosis, begins when insulin levels are low; in normal humans, insulin is lowest when blood glucose levels are low (mostly before eating). Reduced insulin levels induce lipolysis, which consumes fat to produce ketone bodies. On the other hand, caloric carbohydrates (for example, glucose or starch, the latter made of chains of glucose) affect the body by increasing blood sugar after consumption (in the treatment of diabetes, blood sugar levels are used.) Fiber, because of its low digestibility, provides little or no food energy and does not significantly affect glucose and insulin levels.

In his early books such as Dr Atkins' New Diet Revolution, Atkins made the controversial argument that the low-carbohydrate diet produces a metabolic advantage because 'burning fat takes more calories so you expend more calories'. He cited one study where he estimated this advantage to be 950 Calories (4.0 MJ) per day. A review study published in Lancet[4] concluded that there was no such metabolic advantage and dieters were simply eating fewer calories due to boredom. Astrup stated, 'The monotony and simplicity of the diet could inhibit appetite and food intake'.

In the most recent book by Westman, Phinney, and Volek, the authors suggest optimal levels of protein, fat, and calorie intake, and have moved away from the metabolic advantage theory.

The diet restricts 'net carbs' (digestible carbohydrate grams that affect blood sugar less fiber grams). One effect is a tendency to decrease the onset of hunger, perhaps because of longer duration of digestion (fats and proteins take longer to digest than carbohydrates). The 2002 book New Diet Revolution states that hunger is the number one reason that low-fat diets fail, and that the diet is easier because one is satisfied with adequate protein, fat and fiber.

Net carbohydrates can be calculated from a food source by subtracting fiber and sugar alcohols from total carbohydrates. Sugar alcohols contain about two calories per gram, although the American Diabetes Association recommends that diabetics not count alcohol as carbohydrates. Fructose (for example, as found in many industrial sweeteners) has four calories per gram but has a very low glycemic index and does not cause insulin production, probably because β cells have low levels of GLUT5. Leptin, an appetite regulating hormone, is not triggered following consumption of fructose. This may for some create an unsatisfying feeling after consumption which might promote binge behavior that culminates in an increased blood triglyceride level arising from fructose conversion by the liver.

Preferred foods in all categories are whole, unprocessed foods with a low glycemic index, although restrictions for low glycemic carbohydrates (black rice, vegetables, etc.) are the same as those for high glycemic carbohydrates (sugar, white bread). Atkins Nutritionals, the company formed to market foods that work with the diet, recommends that no more than 20% of calories eaten while on the diet come from saturated fat.

The Atkins Diabetes Revolution book states that, for people whose blood sugar is abnormally high or who have Type 2 diabetes mellitus, the Atkins Diet decreases or eliminates the need for drugs to treat these conditions. The Atkins Blood Sugar Control Program (ABSCP) is said to be an individualized approach to weight control and permanent management of the risk factors for diabetes and cardiovascular disease.[citation needed] The Atkins Diet is not accepted in conventional therapy for diabetes.")

n4 = Nutrition.create(:name => 'Ketogenic', :daily_carb => '50', :daily_fat => '400', :daily_protein => '145', :description => "The ketogenic diet is a high-fat, adequate-protein, low-carbohydrate diet that in medicine is used primarily to treat difficult-to-control (refractory) epilepsy in children. The diet forces the body to burn fats rather than carbohydrates. Normally, the carbohydrates contained in food are converted into glucose, which is then transported around the body and is particularly important in fuelling brain function. However, if there is very little carbohydrate in the diet, the liver converts fat into fatty acids and ketone bodies. The ketone bodies pass into the brain and replace glucose as an energy source. An elevated level of ketone bodies in the blood, a state known as ketosis, leads to a reduction in the frequency of epileptic seizures.

The original therapeutic diet for paediatric epilepsy provides just enough protein for body growth and repair, and sufficient calories[Note 1] to maintain the correct weight for age and height. This classic ketogenic diet contains a 4:1 ratio (although a 3:1 ratio has also been used) by weight of fat to combined protein and carbohydrate. This is achieved by excluding high-carbohydrate foods such as starchy fruits and vegetables, bread, pasta, grains and sugar, while increasing the consumption of foods high in fat such as nuts, cream and butter. Thus, an individual's diet is composed of 90% and 86% of calories coming from fat, respectively.

Most dietary fat is made of molecules called long-chain triglycerides (LCTs). However, medium-chain triglycerides (MCTs)—made from fatty acids with shorter carbon chains than LCTs—are more ketogenic. A variant of the classic diet known as the MCT ketogenic diet uses a form of coconut oil, which is rich in MCTs, to provide around half the calories. As less overall fat is needed in this variant of the diet, a greater proportion of carbohydrate and protein can be consumed, allowing a greater variety of food choices.

The classic therapeutic ketogenic diet was developed for treatment of paediatric epilepsy in the 1920s and was widely used into the next decade, but its popularity waned with the introduction of effective anticonvulsant drugs. In the mid-1990s, Hollywood producer Jim Abrahams, whose son's severe epilepsy was effectively controlled by the diet, created the Charlie Foundation to promote it. Publicity included an appearance on NBC's Dateline programme and ...First Do No Harm (1997), a made-for-television film starring Meryl Streep. The foundation sponsored a multicentre research study, the results of which—announced in 1996—marked the beginning of renewed scientific interest in the diet.")

n5 = Nutrition.create(:name => 'Healthy Food Guide', :daily_carb => '310', :daily_fat => '70', :daily_protein => '80', :description => "Food
Variety
Eat a variety of foods, including vegetables; wholegrains; lean meats; oily fish; fruit; low,
reduced or no fat dairy; and vegetable and seed oils. Remember to also include nuts,
seeds and legumes.
Plant- based foods
Make plant-based foods the main part of each meal. Include vegetables, wholegrains,
fruit, nuts and seeds every day.
Include five serves of vegetables and two serves of fruit every day.
Choose wholegrain breads and breakfast cereals, and include pasta, noodles
and rice.
Try to include legumes and pulses in at least two meals a week. Legumes and pulses
include canned beans (e.g. baked beans, kidney beans and three bean mix), dried
peas (e.g. split peas), dried beans (e.g. butter beans and broad beans), chickpeas
or lentils.
Fats and oils
1. Fats are an important part of a healthy balanced diet and you should not exclude them.
However the type of fats you include in your diet is important. Choosing the healthier
unsaturated fats instead of saturated and trans fats will reduce your risk of heart disease.
Use spreads and margarines made from canola, sunflower or olive oil and dairy
blends that have earned the Heart Foundation Tick instead of butter. You can use
other foods, such as avocado or hommus, as an alternative to spreads and
margarines two to three times a week.
Choose from a variety of vegetable and seed oils when you are preparing food.
Healthier choices include canola, sunflower, soybean, olive, sesame and peanut oils.
Use salad dressings and mayonnaise made from canola, sunflower, soybean, olive,
sesame and peanut oils.
Eat two to three serves of oily fish a week. A serving size of fish is 150 grams or
approximately the size of your whole hand. Use fish oil capsules and omega-3
enriched foods and drinks to supplement your intake of omega-3 fats.
Select lean meat and poultry (meat trimmed of all visible fat and chicken without skin).
Try to limit processed meats (e.g. sausages) and deli meats (e.g. salami). Choose
deli meats that have earned the Heart Foundation Tick where available. Limit foods
such as liver, kidneys and pâté. Try to limit take-away foods, such as pastries, pies, pizza, fried fish, hamburgers, hot
chips and creamy pasta dishes to once a week. Healthier take-away choices include
sushi or sashimi, Asian stir-fries, tomato-based pasta dishes, grilled fish, chicken and
lean meat.
2. Blood cholesterol levels are more influenced by the saturated and trans fat we eat than
the cholesterol in foods. Therefore it is alright to include eggs as part of a healthy
balanced diet. 2 Healthy eating and drinking
INF-055-C
A healthy balanced diet can include a serve of eggs (two eggs) in two to three meals
a week.
3. An easy way to reduce saturated and trans fat intake is to choose reduced, low or no fat
dairy foods or calcium added non-dairy foods every day.
Consume reduced, low or no fat milk, yoghurt, custard and desserts.
Include small portions of cheese (one to two slices or 20 40 grams) up to four times
a week. Lower fat cheeses, such as light tasty cheddar, ricotta, cottage and light
mozzarella, are healthier choices.
A healthy balanced diet can include a serve of plain ice cream (1½ scoops or 50
grams) up to three times a week. Lower fat plain varieties are healthier choices.
Salt
It s better not to add salt to food. If you want to add flavour use herbs and spices. When
shopping choose foods labelled no added salt , low salt or salt reduced where possible. Snacks
Healthy snacks include sliced raw vegetables with hommus, a piece of fresh fruit, a
handful of dried fruit, up to a cup of canned fruit or a handful (30 grams) of plain, unsalted
nuts. Other choices can be rice cakes and non-confectionery bars, such plain nut bars,
seed bars and cereal bars that have earned the Heart Foundation Tick.
Try to limit sugary, fatty and salty snack foods, such as crisps, cakes, pastries, biscuits,
lollies and chocolate, to once a week. ")


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