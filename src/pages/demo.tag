import '../components/basepage.tag';

<demo>
    <basepage>
        <h2 class="heading--medium">Body</h2>
        <button onclick="{parent.toggleMenu}">Yield Button</button>
    </basepage>

    <script>
        this.toggleMenu = () =>{
            console.log("Hello");
        }
    </script>

</demo>

