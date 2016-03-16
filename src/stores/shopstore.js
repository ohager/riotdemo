export default {
	_products : [],

	__findProductById: function(id){
		var products = this._products;
		for(var i=0; i<products.length;++i){
			if(products[i].id===id) return i;
		}
		return undefined;
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

	onLoadProducts : function(products){
		this._products = products;
		this.notify();
	},

	onAddProductToCart : function(productId){
		var index = this.__findProductById(productId);
		if(index===undefined) return;

		this._products[index].cart++;
		this.notify();
	}
};
