import './product.tag'
<productlist>
    <ul>
        <product each="{opts.products}" product="{this}" ></product>
    </ul>

    <style scoped>
        ul {
            margin: 0;
            padding: 0;
        }
        product {
            margin: 0.5em;
        }
    </style>
</productlist>