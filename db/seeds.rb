

Recipe.destroy_all
Comment.destroy_all


first_recipe = Recipe.create(title:"PBJ Sandwich", ingredients:"Peanut Butter, Jelly, Two slices of your favorite Bread", directions:"Lather one side of a piece of bread with Peanut Butter, then lather the other piece of bread of Jelly on one of its sides.  Stick the two lathered pieces of bread together and enjoy!!!", photo_url:"http://dosemarket.com/wp-content/uploads/2012/06/pbj-580x386.jpg")
second_recipe = Recipe.create(title:"Turkey Sandwich", ingredients:"Sliced turkey, mayo, lettuce and sliced tomatoe", directions:"Spread mayo on one side of each piece of bread, put rest of ingredients in middle of two pieces of bread and enjoy!!!", photo_url:"http://cdn.sheknows.com/articles/2011/05/turkey-sandwich.jpg")
Comment.create(content:"This is an amazing sandwich", recipe: first_recipe )
Comment.create(content:"I wish the description, was more descriptive", recipe: second_recipe )
