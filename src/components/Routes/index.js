import Header from '../Header/Header.vue';
import Login from '../Login/Login.vue';
import Registration from '../Registration/Registration.vue'

export const routes = [
    {
        path: '/',
        component: Header,
        name: 'Header' 
    },
    {
        path: '/signin',
        component: Login,
        name: 'Login'
    },
    {
        path: '/signup',
        component: Registration,
        name: 'signup'
    }
]