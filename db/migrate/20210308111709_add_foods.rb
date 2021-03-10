class AddFoods < ActiveRecord::Migration[5.2]
  def change
  
  	Food.create ({
  		:title => 'Бургер'
  		:description => 'Бургер из ломтика солата, сыра, сочной котлеты и любви',
  		:price => 125,
  		:size => 200,
  		:burger => false,
  		:path_to_image => '/images/burger.jpg'
  	}) 

Food.create ({
  		:title => 'Картошка frie'
  		:description => 'Хрустящий картофель',
  		:price => 70,
  		:size => 100,
  		:fries => false,
  		:path_to_image => '/images/fries.jpg'
  	}) 

Food.create ({
  		:title => 'Нагетсы'
  		:description => 'в хрустящей панировке',
  		:price => 70,
  		:size => 100,
  		:nuggets => false,
  		:path_to_image => '/images/nuggets.jpg'
  	}) 

Food.create ({
  		:title => 'Сырный соус'
  		:description => 'Очень сырный',
  		:price => 70,
  		:size => 100,
  		:sauce => false,
  		:path_to_image => '/images/sauce.jpg'
  	})


  end
end
