import axios from 'axios';

const state = {
    products: []
}

const actions = {
    getProducts({commit}) {
        axios.get('/product/getAll')
            .then((res) => {
                var files = [];
                res.data.map((item, i) => {
                    files[i] = JSON.parse(item.product_img);
                    res.data[i].product_img = files[i];
                    return item.files;
                })
                commit('setProducts', res.data)
            })
            .catch(err => {
                console.log(err.res.data.error);
            })
    }
}

const mutations = {
    setProducts(state, payload) {
        state.products = payload;
    }
}

const getters = {

}

export default {
    state, actions, mutations, getters
}