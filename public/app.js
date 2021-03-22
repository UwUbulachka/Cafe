// добовление товаров в корзину

function add_to_cart(id)
{
	var key = 'product_' + id;

	var x = window.localStorage.getItem(key);
	x = x * 1 + 1;
	window.localStorage.setItem(key, x);
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