import axios from 'axios'

const state = {
    subcategories: [],
    brands: []
}

const actions = {
    getBySubcategory ({commit}, id) {
        
        axios.get ('/product/getBySId/'+id)
            .then((res) => {
                
                var files = [];
                res.data.map((item, i) => {
                    files[i] = JSON.parse(item.product_img);
                    res.data[i].product_img = files[i];
                    return item.files;
                })
                commit('setSubcategories', res.data);
            })
            .catch(err => {
                console.log(err.res.data.error);
            })
    },

    getByBrand ({commit}, id) {
        
        axios.get ('/product/getByBId/'+id)
            .then((res) => {
                
                var files = [];
                res.data.map((item, i) => {
                    files[i] = JSON.parse(item.product_img);
                    res.data[i].product_img = files[i];
                    return item.files;
                })
                commit('setBrands', res.data);
            })
            .catch(err => {
                console.log(err.res.data.error);
            })
    }
}

const mutations = {
    setSubcategories (state, payload) {
        state.subcategories = payload;
    },

    setBrands (state, payload) {
        state.brands = payload;
    }
}

const getters = {

} 

export default {
    state, actions, mutations, getters
}