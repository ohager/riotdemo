import './cartitem.tag'

<order>
    <div class="card">
        <div class="card__content card__content--divider heading">Order #{opts.order.id} from {opts.order.date.toLocaleString()} </div>
        <div class="card__content">
            <ul>
                <cartitem each="{opts.order.products}" product="{this}"></cartitem>
            </ul>
        </div>

        <div class="card__content card__content--divider">
            <b class="total">Total: $ {total}</b>
        </div>

    </div>

    <style scoped>
        .center {
            text-align: center;
        }
    </style>

    <script>

        this.total =  0.00;

        this.on('mount', ()=>{
           this.total = opts.order.products.reduce(function(p,c){
                return p + (c.cart*c.price);
            },0);
            this.update();
        });
    </script>
</order>