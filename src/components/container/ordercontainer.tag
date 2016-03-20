import '../orderlist.tag';

<ordercontainer>
    <orderlist orders={orders}/>

    <script>
        this.shopActions = NanoFlux.getActions('shopActions');
        this.shopStore = NanoFlux.getStore('shopStore');
        this.orders = [];

        this.onShopUpdated = ()=>{
            this.orders = this.shopStore.getOrders();
            this.update();
        }

        this.on('mount', ()=>{
            this.subscription = this.shopStore.subscribe(this, this.onShopUpdated);
            this.shopActions.loadOrders();
        });


        this.on('unmount', ()=>{
            this.subscription.unsubscribe();
        });

    </script>

</ordercontainer>