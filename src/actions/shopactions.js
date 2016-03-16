export default {

	loadProducts: function() {

		// mocking here!
		var products = [{
				id: 1,
				name: "Product 1",
				price: 12.99,
				img: "",
				stock: 10,
				cart: 0
			},
			{
				id: 2,
				name: "Test 2",
				price: 10.99,
				img: "",
				stock: 20,
				cart: 0
			}];

			setTimeout( ()=>{
				this.dispatch('loadProducts',products);
			}.bind(this), 1000);

	},

	addProductToCart: function(productId){
		this.dispatch('addProductToCart', productId);
	}
};

