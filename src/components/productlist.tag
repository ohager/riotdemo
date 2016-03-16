import './product.tag'
<productlist>
    <h3>{ opts.title }</h3>

    <ul>
        <product each="{products}" product="{this}" ></product>
    </ul>

    <style scoped>
        product {
            margin: 0.5em;
        }
    </style>

    <script>
        this.products = opts.products;

        this.on('update', (e)=> {
            this.products = opts.products;
        });

    </script>
</productlist>