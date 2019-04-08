import Vue from 'vue';
import Vuex from 'vuex';

Vue.use(Vuex);

import HeaderStore from '../Store/Modules/HeaderStore/HeaderStore.js'
import ListViewStore from '../Store/Modules/ListViewStore/ListViewStore.js'
import AppStore from '../Store/app.js'
import HomeStore from '../Store/Modules/HomeStore/HomeStore.js'
import DetailsStore from '../Store/Modules/DetailsStore/DetailsStore.js'

export const store = new Vuex.Store({
    modules: {
        AppStore,
        HeaderStore,
        ListViewStore,
        HomeStore,
        DetailsStore
    }
})