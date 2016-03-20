import '../cart.tag';

<cartcontainer>
    <cart products={products}></cart>

    <script>
        this.shopActions = NanoFlux.getActions('shopActions');
        this.shopStore = NanoFlux.getStore('shopStore');
        this.products = [];

        this.onShopUpdated = ()=>{
            this.products = this.shopStore.getProductsInCart();
            this.update();
        }
        
        this.on('mount', ()=>{
            this.subscription = this.shopStore.subscribe(this, this.onShopUpdated);
            this.shopActions.loadProducts();
        });

        this.on('unmount', ()=>{
            this.subscription.unsubscribe();
        });

    </script>

</cartcontainer>