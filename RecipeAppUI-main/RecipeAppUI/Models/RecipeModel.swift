//
//  RecipeModel.swift
//  RecipeAppUI
//
//  Created by Gregorius on 21/12/22.
//

import Foundation


enum CategoryType : String, CaseIterable, Identifiable {
    var id: String {self.rawValue}
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe: Identifiable {
    let id: UUID = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: CategoryType.RawValue
    let datePublished: String
    let url: String
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe(
            name: "Sakura Cookies",
            image: "https://img.youtube.com/vi/Ego5Wcnk_cE/maxresdefault.jpg",
            description: "(Snack)",
            ingredients: " 120g pastry flour\n 30g almond flour\n 60g avocado oil\n 75g sugar\n 6g pickled sakura cherry blossoms\n 10g Sakura for garnish",
            directions: " 1. soak sakura blossoms for garnish for a few hours, then squeeze and drain.\n 2. mix all the ingredients for the dough in a bowl.\n 3. divide the dough into equal pieces, (20g each makes about 15 cookies) and shape them into flat and round cookie shape.\n 4. put sakura blossoms on top of the cookies.\n 5. bake at 160C/320F for 18 minutes.\n 6. Enjoy!",
            category: "Snack",
            datePublished: "2020-04-06",
            url: "https://peacefulcuisine.com/2020/04/sakura-cookies/"
           ),
               
        Recipe(name: "Tomato Bread",
               image: "https://img.youtube.com/vi/yMjtzaFywyk/maxresdefault.jpg",
               description: "(Breakfast)",
               ingredients: " 400g all purpose flour\n 500g fresh tomatoes\n 100g olive oil\n 50g dried tomatoes\n 30g basil leaves\n 30g pine nuts\n \n 1 tbsp baking powder\n 1 1/2 tsp salt",
               directions: " 1. put fresh tomatoes into a blender container and blend.\n 2. add dried tomato and let them soak for an hour.\n 3. combine all the ingredients in a bowl and mix.\n 4. bake at 356F/180C for 45 minutes.\n 5. Enjoy!!!",
               category: "Breakfast",
               datePublished: "2020-08-10",
               url: "https://peacefulcuisine.com/2020/08/tomato-bread/"),
        Recipe(
               name: "Pad Thai",
               image: "https://img.youtube.com/vi/UP0jYMLfAtY/maxresdefault.jpg",
               description: "(Main)",
               ingredients: " 100g rice noodles(soak 10 – 30 minutes beforehand)\n 50g onion\n a clove of garlic\n 200g firm tofu or deep fried tofu\n 20g garlic chives\n \n 3 tbsp oil\n 20g tamarind paste\n 4 – 6 tbsp soy sauce\n 1 – 2 palm sugar\n \n water as needed\n 50g bean sprouts\n roasted peanuts\n lime wedges\n",
               directions: " 1. soak rice noodles for 10 – 30 minutes.\n 2. fry garlic and onion. add tofu and seasonings.\n 3. put rice noodles into the pan and gently keep heating until the noodles get softens. add water as needed.\n 4. add bean sprouts and garlic chives.\n 5. garnish with peanuts and lime wedges.",
               category: "Main",
               datePublished: "2016-11-25",
               url: "https://peacefulcuisine.com/2016/11/pad-thai/"
              ),
        Recipe(name: "Sushi Bowl",
               image: "https://img.youtube.com/vi/A7pQMRHDwK0/maxresdefault.jpg",
               description: "Appetizer",
               ingredients: " 450g rice\n 60g rice vinegar\n 1 tsp salt\n 40g soy sauce\n \n 200g mushroom\n 400g tempeh\n 200g asparagus\n 400g avocado\n \n olive oil\n salt and pepper\n 2 sheets nori",
               directions: " 1. make sushi rice. in a small cup, combine rice vinegar, beet sugar and salt then set aside until it dissolves. cook rice and then pour sushi vinegar over the rice and mix well.\n 2. in a blender, mix all the ingredients for the orange sesame sauce. pour some of it over tempeh.\n 3. cut vegetables in a bite size and drizzle olive oil and sprinkle salt and pepper. put them with tempeh in an oven and bake at 356F/180C for 30 minutes.\n 4.Plate sushi rice, nori sheets, avocado, vegetables, tempeh, winter cherries, sesame seeds. drizzle orange sesame sauce or soy sauce as you like.\n 5.Enjoy!",
               category: "Appetizer",
               datePublished: "2020-10-02",
               url: "https://peacefulcuisine.com/2020/10/buddha-sushi-bowl-with-orange-sesame-sauce/"),
        Recipe(
            name: "Bubur Cha Cha",
            image: "https://img.youtube.com/vi/WkpVQwC0KIs/maxresdefault.jpg",
            description: "(Dessert)",
            ingredients: " 50g sago pearl\n 150g sweet potato\n 150g taro\n \n 10g beet root\n 80ml water\n 100g tapioca starch\n \n 1 can of coconut milk (400ml)\n 400ml water\n 60g palm sugar\n 3 pandan leaves\n",
            directions: " 1. soak sago pearl for 30 minutes.\n 2. steam sweet potato and taro for 10 minutes.\n 3. make beet juice with beet and water. then strain.\n 4. bring beet juice to a boil and mix it with tapioca starch. knead well.\n 5. boil tapioca jelly until it starts to float. transfer into water.\n 6. put coconut milk, water and palm sugar together in a pot. add pandan leaves then simmer for 5 – 10 minutes. remove pandan leaves.\n 7. add sago pearl, sweet potato, taro and tapioca jelly.\n 8. add banana and mango.\n 9. It can be served hot or cold. as you wish!",
            category: "Dessert",
            datePublished: "2019-10-7",
            url: "https://peacefulcuisine.com/2019/10/bubur-cha-cha/"
              ),
        Recipe(
            name: "Blueberry Cake",
            image: "https://img.youtube.com/vi/YlGsPQMo9zs/maxresdefault.jpg",
            description: "(Dessert)",
            ingredients: " 30g almond\n 40g rolled oats\n 30g oil\n 30g dates\n \n 150g cashew nuts\n 100g blueberry\n 130g sweetener\n 200g coconut milk\n 200g water\n 1 1/2 tsp agar powder\n 200g bluberry",
            directions: " 1. put all the ingredients of the base into a container of food processor and blend well.\n 2. put the mixture in a cake pan evenly. bake at 350F/180C for 15 min.\n 3. put all the ingredients of the filling together and blend with high powder blender.\n 4. gently heat the mixture up with low to medium heat until it thickens.\n 5. place another 200g blueberries on the base then pour the filling mixture.\n 6. leave in a fridge for a few hours.",
            category: "Dessert",
            datePublished: "2016-08-22",
            url: "https://peacefulcuisine.com/2016/08/blueberry-cake/"),
            
        Recipe(
               name: "Golden Milk Mochi",
               image: "https://img.youtube.com/vi/81go7GCDs6U/maxresdefault.jpg",
               description: "(Side)",
               ingredients: " 200g cashew nuts\n 150g beet sugar\n 650g oat milk\n 1 tbsp turmeric\n 1/2 tsp cinnamon\n 2 tsp vanilla extract\n \n 70g sticky rice flour\n 140g water\n 140g beet sugar",
               directions: " 1. blend all the ingredients for the ice cream in a high power blender.\n 2. put the mixture into an ice cream maker. it takes about 40 – 60 minutes.\n 3. put sticky rice flour, beet sugar and water into a sauce pan and keep heating until it thickens.\n 4. transfer the mochi mixture to a container and dust potato starch. place it in a fridge for a few hours.\n 5. shape the mochi into round shape then wrap the ice cream with it.\n 6. Enjoy!",
               category: "Side",
               datePublished: "2022-04-11",
               url: "https://peacefulcuisine.com/2022/04/golden-milk-mochi-ice-cream/"
              ),
        Recipe(
            name: "Lilikoi Cheese Cake",
               image: "https://img.youtube.com/vi/WI3OQQ1JkXw/maxresdefault.jpg",
               description: "(Dessert)",
               ingredients: " 120g almond\n 30g coconut flake\n 30g cacao powder\n 30g sweetener\n \n 200g cashew nuts\n 120g lilikoi juice\n 180g water\n 100g coconut oil\n 100g sweetener\n corn flower",
               directions: " 1. soak almonds at least 8 hours.\n 2. make lilikoi juice.\n 3. put all the ingredients for the filling in a blender and blend well.\n 4. put all the ingredients for the crust in a food processor and make them into small pieces.\n 5. press the crust mix into a tart pan.\n 6. pour the filling and sprinkle corn flowers.\n 7. leave it in a fridge for 4 hours.",
               category: "Dessert",
               datePublished: "2019-05-14",
               url: "https://peacefulcuisine.com/2019/05/lilikoi-cheese-cake/")
    ]
}
