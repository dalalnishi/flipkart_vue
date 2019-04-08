import axios from 'axios';

const state = {
    categories: []
}

const actions = {
    getCategories({commit}) {
        axios.get('/category/all')
            .then((res) => {
                commit('setCategories', res.data)
            })
            .catch(err => {
                console.log(err.res.data.error);
            })
    }
}

const mutations = {
    setCategories(state, payload) {
        state.categories = payload;
    }
}

const getters = {

}

export default {
    state, actions, mutations, getters
}