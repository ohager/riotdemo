<cartitem>
    <div class="card card--high">
        <div class="card__item">
            <p class="paragraph">{opts.product.name}</p>
            <p class="paragraph">
            <div class="grid">
                <div class="grid__cell--width-50">$ {opts.product.price}</div>
                <div class="grid__cell--width-50">{opts.product.cart} x</div>
            </div>
            </p>
        </div>
        <div class="card__item">
            <p class="paragraph">$ {opts.product.price * opts.product.cart}</p>
        </div>
    </div>

    <style scoped>
        .card { margin-top: 0.5em;}
    </style>
</cartitem>