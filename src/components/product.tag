<product>
    <div class="card">
        <div class="card__content card__content--divider heading">{opts.product.name}</div>
        <div class="card__item">
            <div class="card__item">
            <div class="grid">
                <div class="grid__cell grid__cell--width-20">
                    <img class="image" src={opts.product.img}>
                </div>
                <div class="grid__cell grid__cell">
                    <p class="paragraph">{opts.product.description}</p>
                </div>
            </div>

            </div>
            <div class="card__item">
                <div class="grid">
                    <div class="grid__cell grid__cell--width-40">
                        <p class="paragraph">$ {opts.product.price}</p>
                    </div>
                    <div class="grid__cell grid__cell--width-40 center">
                        <p class="paragraph">In Stock: {opts.product.stock}</p>
                    </div>
                    <div class="grid__cell grid__cell--width-20 center">
                        <button if="{opts.product.stock - opts.product.cart>0}" class="button button--primary" onclick="{this.addToCart}">Add to cart</button>
                    </div>
                </div>
            </div>
        </div>


        <style scoped>
            .center {
                text-align: center;
            }
        </style>

        <script>
            this.addToCart = (e) =>
            {
                var shopActions = NanoFlux.getActions('shopActions');
                shopActions.addProductToCart(opts.product.id);
            }

        </script>
</product>