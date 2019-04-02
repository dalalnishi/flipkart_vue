import Vue from 'vue';
import Vuex from 'vuex';

Vue.use(Vuex);

import HeaderStore from '../Store/Modules/HeaderStore/HeaderStore.js'

export const store = new Vuex.Store({
    modules: {
        HeaderStore
    }
})