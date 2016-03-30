import shopService from '../services/shopservice';

export default {
	_products : [],
	_orders : [],

	getOrders : function(){
		// TODO: use true immutable
		return this._orders.slice(); // shallow copy
	},

	getProducts : function(){
		return this._products.filter( (p)=>{
			return p.stock > 0;
		});
	},

	getProductsInCart : function(){
		return this._products.filter( (p)=>{
			return p.cart > 0;
		});
	},

	onLoadProducts : function(){
		shopService.loadProducts().then( (products) => {
			this._products = products;
			this.notify();
		});
	},

	onLoadOrders : function(){

		shopService.loadOrders().then( (orders) => {
			this._orders = orders;
			this.notify();
		});
	},

	onAddProductToCart : function(productId){
		var product = _.findWhere(this._products, {id:productId});
		if(!product) return;

		product.cart++;
		this.notify();
	},

	onCreateOrder : function(){
		var orderedProducts = this.getProductsInCart();
		shopService.createOrder(orderedProducts).then( ()=> {
			this.onLoadOrders();
			this.onLoadProducts();
		});
	}
};
