class AddFoods < ActiveRecord::Migration[5.2]
  def change
     Food.create ({
      :title => 'Бургер',
      :description => 'Вкусный бургер',
      :price => 125,
      :size => 200,
      :burger => false,
      :path_to_image => '/images/burger.jpg'
    }) 

Food.create ({
      :title => 'Картошка frie',
      :description => 'Картофель',
      :price => 70,
      :size => 100,
      :fries => false,
      :path_to_image => '/images/fries.jpg'
    }) 

Food.create ({
      :title => 'Нагетсы',
      :description => 'Сочные нагетсы',
      :price => 100,
      :size => 150,
      :nuggets => false,
      :path_to_image => '/images/nuggets.jpg'
    }) 

Food.create ({
      :title => 'Сырный соус',
      :description => 'Очень сырный сосус',
      :price => 35,
      :size => 20,
      :sauce => false,
      :path_to_image => '/images/sauce.jpg'
    })


Food.create ({
      :title => 'Сок',
      :description => 'Наисвежайший сок',
      :price => 99,
      :size => 250,
      :sauce => false,
      :path_to_image => '/images/juice.jpg'
    })

  end
end
