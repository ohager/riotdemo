import '../components/container/ordercontainer.tag';

<shopmenu>

    <ul class="horizontal-menu">
        <li each="{menuItems}" onclick="{parent.route}">{this.title}</li>
    </ul>

    <style scoped>
        .horizontal-menu {
            border-bottom: solid 1px #aaa;
            padding: 0.1em;
        }

        .horizontal-menu > li {
            display: inline-block;
            padding: 0.1em 0.5em;
        }

        li:hover{
            background-color: #eee;
        }
    </style>

    <script>

        this.menuItems = [
            {title: "Shop", view: "productcontainer"},
            {title: "My Orders", view: "ordercontainer"},
        ];

        this.route = (evt) => {
            riot.mount(opts.mountto, evt.item.view);
        };

    </script>
</shopmenu>