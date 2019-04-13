import axios from 'axios';

const state = {
    error: ''
}

const actions = {
    // User Login
    logUser ({commit}, user) {
        axios.post('user/login', user)
            .then((response) => {
                console.log(response.data);
            })
            .catch(err => {
                commit('setError', err.response.data.message);
                console.log(err.response.data.message);
            })
    },

    // User Registration
    registerUser ({commit}, user) {
        axios.post('user/signUp', user)
            .then((response) => {
                console.log(response.data);
            })
            .catch(err => {
                // commit('setError', err.response.data.message);
                console.log(err.response.data.message);
            })
    }
}

const mutations = {
    setError(state, errorMsg) {
        state.error = errorMsg;
    }
}

const getters = {

}

export default {
    state, actions, mutations, getters
}
