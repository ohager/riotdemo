import NanoFlux from '../node_modules/nanoflux/dist/nanoflux';
import shopStore from './stores/shopstore';
import shopActions from './actions/shopactions';

var dispatcher = NanoFlux.createDispatcher('dispatcher');

NanoFlux.createActions('shopActions', dispatcher, shopActions);
dispatcher.connectTo( NanoFlux.createStore('shopStore', shopStore) );

// set global
window.NanoFlux = NanoFlux;




