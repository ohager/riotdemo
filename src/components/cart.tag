import './cartitem.tag'

<cart>
    <div class="card card--higher">
        <div class="card__content card__content--divider heading">
            <span>
                <i class="fa fa-shopping-cart"></i>
                Your Shopping Cart
            </span>
        </div>
        <div class="card__content">
            <ul if="{hasProducts()}">
                <cartitem each="{opts.products}" product="{this}"></cartitem>
            </ul>
            <p if="{!hasProducts()}" class="paragraph grey-text center">Your cart is empty</p>
        </div>
        <div class="card__content card__content--divider">
            <div class="grid">
                <div class="grid__cell grid__cell--width-70">
                    <b class="total">Total: $ {total}</b>
                </div>
                <div class="grid__cell center">
                    <button if={hasProducts() && !hasBought} class="button button--secondary" onclick={buy}>Buy</button>
                </div>
            </div>
        </div>
    </div>

    <style scoped>
        .card__content > ul {
            margin: 0;
            padding: 0;
        }

        .total {
            font-size: 1em;
            text-align: right;
        }

        .center {
            text-align: center;
        }

        .grey-text {
            color: #DDD;
        }

    </style>

    <script>
        this.total = 0.00;

        this.buy = () =>{
            NanoFlux.getActions('shopActions').createOrder();
        };

        this.hasProducts = () =>{
            return opts.products.length > 0;
        }

        this.on('update', () => {
            this.total = opts.products.reduce((p, c) => {
                    return p + (c.cart * c.price);
            },0);
        });

    </script>

</cart>