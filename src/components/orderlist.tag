import './order.tag'

<orderlist>
    <ul if="{hasOrders}">
        <order each="{opts.orders}" order="{this}"></order>
    </ul>
    <p if="{!hasOrders()}" class="paragraph no-orders">
        <b>You have nothing ordered yet</b>
    </p>
    <style scoped>
        ul {
            margin: 0;
            padding: 0;
        }

        order {
            margin: 0.5em;
        }

        p.no-orders {
            color: #eee;
            text-align: center;
            font-size:  1.5em;
        }

    </style>

    <script>
        this.hasOrders = ()=>{
            return this.opts.orders.length > 0;
        }
    </script>
</orderlist>
