import '../components/basepage.tag';
import '../components/shopmenu.tag';
import '../components/productlist.tag';
import '../components/cart.tag';

<shop>
    <basepage>
        <div class="grid">
            <div class="grid__cell grid__cell">
                <shopmenu/>
            </div>
        </div>
        <div class="grid">
            <div class="grid__cell grid__cell--width-70">
                <productlist products={parent.products}></productlist>
            </div>
            <div class="grid__cell grid__cell">
                <cart products="{parent.productsInCart}"></cart>
            </div>
        </div>
    </basepage>


    <style scoped>
        cart {
            margin: 1em;
        }
    </style>

    <script>
        this.shopActions = NanoFlux.getActions('shopActions');
        this.products = [];
        this.productsInCart = [];

        this.onShopUpdated = ()=>{
            this.products = this._shopStore.getProducts();
            this.productsInCart = this._shopStore.getProductsInCart();
            this.update();
        }

        this.on('mount', ()=>{
            this._shopStore = NanoFlux.getStore('shopStore');
            this._subscription = this._shopStore.subscribe(this, this.onShopUpdated);
            this.shopActions.loadProducts();
        });

        this.on('unmount', ()=>{
            this._subscription.unsubscribe();
        });
    </script>
</shop>

