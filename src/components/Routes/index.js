import Login from '../Login/Login.vue';
import Registration from '../Registration/Registration.vue'
import Home from '../Home/Home.vue';
import ListView from '../ListView/ListView.vue'
import ProductDetails from '../ProductDetails/ProductDetails.vue'
import Cart from '../Cart/Cart.vue'

export const routes = [
    {
        path: '/',
        component: Home,
        name: 'Home' 
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
    },
    {
        path: '/listview/:id',
        component: ListView,
        name: 'ListView'
    },
    {
        path: '/details/:id',
        component: ProductDetails,
        name: 'Product_Details'
    },
    {
        path: '/cart',
        component: Cart,
        name: 'cart'
    }
]