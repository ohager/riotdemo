import NanoFlux from '../../node_modules/nanoflux/dist/nanoflux';

<product>
    <div class="card">
        <div class="card__content card__content--divider heading">{opts.product.name}</div>
        <div class="card__item">
        <div class="card__item">
            <p class="paragraph">$ {opts.product.price}</p>
        </div>
        <div class="card__item">
            <button class="button" onclick="{this.addToCart}">Add</button>
        </div>
    </div>
        <script>
            this.addToCart = (e) => {
                var shopActions = NanoFlux.getActions('shopActions');
                shopActions.addProductToCart(opts.product.id);
            }
        </script>
</product>