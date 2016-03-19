
<menu class="left-side-menu" >

    <div class="drawer drawer--left {drawer--visible : menuOpen}">
        <h4 class="heading heading--xsmall">Riot Demo</h4>
        <ul class="menu">
            <li each={ navItems } onclick={parent.route} class="menu__item { active : parent.currentView === this.view}">{ this.title }</li>
        </ul>
    </div>

    <style scoped>
        .drawer {
            padding: 0.5em;
            -webkit-box-shadow: 5px 0px 5px 0px #a0a0a0;
            -moz-box-shadow: 5px 0px 5px 0px #a0a0a0;
            box-shadow: 5px 0px 5px 0px #a0a0a0;
        }
        .left-side-menu{
        }
    </style>

    <script>

    this.currentView = riot.routeState.view;
    this.menuOpen = true;

    this.navItems = [
      //{ title : 'Home', view : 'home'},
      //{ title : 'Demo', view : 'demo'},
      { title : 'Shop Demo', view : 'shop'},
      //{ title : 'Projects', view : 'projects' }
    ];

    this.route = (evt) => {
      riot.route(evt.item.view)
    };
  </script>
</menu>