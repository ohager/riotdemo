import '../components/basepage.tag';
import '../components/shopmenu.tag';
import '../components/container/productcontainer.tag';
import '../components/container/cartcontainer.tag';


<shop>
    <basepage>
        <div class="grid">
            <div class="grid__cell grid__cell">
                <shopmenu mountto="#shopcanvas"/>
            </div>
        </div>
        <div class="grid">
            <div class="grid__cell grid__cell--width-70">
                <div id="shopcanvas">
                    <productcontainer/>
                </div>
            </div>
            <div class="grid__cell grid__cell">
                <cartcontainer/>
            </div>
        </div>
    </basepage>


    <style scoped>
        cart {
            margin: 1em;
        }
    </style>

</shop>

