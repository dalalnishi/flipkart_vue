import axios from 'axios';

const state = {
    productDetail: []
}

const actions = {
    getProductById({commit}, id) {

        axios.get('/product/getById/'+id)
            .then((res) => {

                var files = [];
                res.data.map((item, i) => {
                    files[i] = JSON.parse(item.product_img);
                    res.data[i].product_img = files[i];
                    return item.files;
                })
                commit('setProductDetails', res.data)
            })
            .catch(err => {
                console.log(err.res.data.error);
            })
    }
}

const mutations = {
    setProductDetails(state, payload) {
        state.productDetail = payload;
    }
}

const getters = {

}

export default {
    state, actions, mutations, getters
}