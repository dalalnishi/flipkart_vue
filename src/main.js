import Vue from 'vue'
import App from './App.vue'
import axios from 'axios'
import vueRouter from 'vue-router';
import Antd from 'ant-design-vue'
import 'ant-design-vue/dist/antd.css';
import VueCarousel from 'vue-carousel';
import imgHoverZoomIn from 'vue-img-hover-zoom-in';

import { routes }  from './components/Routes/index'
import { store } from './Store/Store.js'

Vue.use(vueRouter);
Vue.use(Antd);
Vue.use(VueCarousel);
Vue.use(imgHoverZoomIn, {
  offsetMouseX: 20,
  offsetMouseY: 20,
  imgSrcFormat(src) {
    let reg = /\.thb\.jpg$/;
    return reg.test(src) ? src.replace(reg, '') : src;
  }
});

Vue.config.productionTip = false
axios.defaults.baseURL = 'http://192.168.200.147:5001/';

const router = new vueRouter({
  routes,
  mode: 'history'
})

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
