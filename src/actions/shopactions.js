export default {

	loadProducts: function() {
		this.dispatch('loadProducts');
	},

	addProductToCart: function(productId){
		this.dispatch('addProductToCart', productId);
	},
	
	createOrder: function(){
		this.dispatch('createOrder');
	}
};

