// добовление товаров в корзину

function add_to_cart(id)
{
	var key = 'product_' + id;

	var x = window.localStorage.getItem(key);
	x = x * 1 + 1;
	window.localStorage.setItem(key, x);

	update_orders_input();
	update_orders_button();
}

// добовляет в input строку product_ = ..., для отправки данных

function update_orders_input()
{
	var orders = cart_get_orders(); // к orders присваивается функция cart_get_orders()
	$('#orders_input').val(orders);// к id добовляеться значение orders
}

// добовляет в  button общее кол во продуктов в корзину 

function update_orders_button()
{
	var text =  'В корзине (' + cart_get_number_of_items() + ')'; 
	$('#orders_button').val(text);// / к id добовляеться значение text
}


// подсчет товаров в корзине

function cart_get_number_of_items()
{
	var cnt = 0 

	for(var i = 0; i < window.localStorage.length; i++) //бесконеный цикл 
	{
		var key = window.localStorage.key(i);
		var value = window.localStorage.getItem(key);
	
		if(key.indexOf('product_') == 0)
		{
			cnt = cnt + value * 1;
		}

	}
	return cnt;
}

// для строки product

function cart_get_orders()
{
	var orders = ''

	for(var i = 0; i < window.localStorage.length; i++) //бесконеный цикл 
	{
		var key = window.localStorage.key(i);
		var value = window.localStorage.getItem(key);
	
		if(key.indexOf('product_') == 0)
		{
			orders = orders + key + '=' + value + ',';
		}

	}
	return orders;
}