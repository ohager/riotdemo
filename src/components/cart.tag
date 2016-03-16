import NanoFlux from '../../node_modules/nanoflux/dist/nanoflux';
import './cartitem.tag'
<cart>
    <ul>
        <cartitem each="{products}" product="{this}"></cartitem>
    </ul>

    <script>
        this.products = [];


        this.on('mount', () => {
            this._shopStore = NanoFlux.getStore('shopStore');
            this._subscription = this._shopStore.subscribe(this, ()=>{
                this.products = this._shopStore.getProductsInCart();
                this.update();
            });
        });

        this.on('unmount', ()=> {
            this._subscription.unsubscribe();
        });

    </script>

</cart>