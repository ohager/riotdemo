
<shopmenu>

    <p>TODO MENU</p>

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
</shopmenu>