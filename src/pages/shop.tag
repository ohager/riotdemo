import '../components/basepage.tag';
import '../components/productlist.tag';
import '../components/cart.tag';
import NanoFlux from '../../node_modules/nanoflux/dist/nanoflux';

<shop>
    <basepage>
        <div class="grid">
            <div class="grid__cell grid__cell--width-80">
                <productlist title="Products" products={parent.products}></productlist>
            </div>
            <div class="grid__cell grid__cell--width-20">
                <cart products="{parent.products}"></cart>
            </div>
        </div>
    </basepage>

    <script>
        this.shopActions = NanoFlux.getActions('shopActions');
        this.products = [];
        this.addedProducts = [];

        this.onProductsLoaded = ()=>{
            this.products = this._shopStore.getProducts();
            this.update();
        }

        this.on('mount', ()=>{
            this._shopStore = NanoFlux.getStore('shopStore');
            this._subscription = this._shopStore.subscribe(this, this.onProductsLoaded);
            this.shopActions.loadProducts();
        });

        this.on('unmount', ()=>{
            this._subscription.unsubscribe();
        });
    </script>
</shop>

