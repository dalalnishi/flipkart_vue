<template>
<div class="div-main">
    <div class="container">
        <nav class="navbar navbar-expand-sm navbar-light" >                
            <router-link to="/" class="navbar-brand">
                <img alt="Flipcart Logo" src="../../assets/flipkart-plus.png" class="img"/>
                <p><font style="color: white;">Explore</font>&nbsp;<font style="color:yellow;">Plus</font>&nbsp;<img class="plus" alt="plus" src="../../assets/plus.png" /></p>
            </router-link>

            <div>
                <!-- Search Component -->
                <search />
            </div>  

            <ul class="navbar-nav">
                <li class="nav-item active">
                <router-link to="/signin" tag="li" class="nav-link">Login &</router-link>
                </li>
                <li class="nav-item">
                <router-link to="/signup" tag="li" class="nav-link">&nbsp;Signup</router-link>
                </li>
                <li class="nav-item">
                <router-link to="/" tag="li" class="nav-link">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-shopping-cart" aria-hidden="true"></i>&nbsp;Cart</router-link>
                </li>
            </ul>
        </nav>
    </div>
    
    <!-- Categories Listing Dropdown -->
    <div class="div-category">
    <a-dropdown class="a-category" v-for="category in categories" :key="category.id">
        <a class="ant-dropdown-link" href="#">
            {{ category.category_name }} <a-icon type="down" />
        </a>
        
        <a-menu slot="overlay">
        <a-menu-item v-for="subcat in category.tbl_subcategories" :key="subcat.id">
            {{ subcat.subcat_name }}
        </a-menu-item>
        <!-- <a-menu-item>{{ subcat.subcat_name }}</a-menu-item> -->

        <!-- <a-menu-item>2nd menu item</a-menu-item>
        <a-sub-menu title="sub menu" key="test">
            <a-menu-item>3rd menu item</a-menu-item>
            <a-menu-item>4th menu item</a-menu-item>
        </a-sub-menu>
        <a-sub-menu title="disabled sub menu" disabled>
            <a-menu-item>5d menu item</a-menu-item>
            <a-menu-item>6th menu item</a-menu-item>
        </a-sub-menu> -->
        </a-menu>
    </a-dropdown>
    </div>  
    
    <!-- Carousel -->
    <div>
        <carousel :per-page="1" :mouse-drag="false" :autoplay="true" :loop="true" :autoplayHoverPause="true" :autoplayTimeout="4500">
            <slide>
                <img src="../../assets/b449a2cbe3218e7d.jpg" alt="img1" class="ca-img"/>
            </slide>
            <slide>
                <img src="../../assets/ce425625e412dfd6.jpg" alt="img2" class="ca-img"/>
            </slide>
            <slide>
                <img src="../../assets/f0c72858992901b7.jpg" alt="img3" class="ca-img"/>
            </slide>
        </carousel>
    </div>
</div>  
</template>

<script>

import Search from '../../components/Search/Search.vue';
import { Carousel, Slide } from 'vue-carousel';

export default {
    components: {
        Search,
        Carousel,
        Slide
    },

    computed: {
        categories() {
            return this.$store.state.HeaderStore.categories ;
        }
    }, 

    created() {
        this.$store.dispatch('getCategories');
    }
}
</script>

<style scoped>

    .img {
        height: 90%;
        width: 75px;
    }

    .plus {
        width: 10px;
    }

    .ca-img  {
        height: 350px;
        width: 100%;
    }

    ul {
        float: right;
        color: white;
        list-style: none;
        margin-top: 15px;
        margin-right: -30px;
    }

    li {
        font-size: 18px;
    }

    .container {
        height: 56%;
    }

    p {
        font-size: 11px;
        font-style: italic;
        margin-top: -1px;
    }

    .div-main {
        background-color:#2874f0;
        height: 100px;
    }

    input {
        float: left;
        height: 36px;
        width: 40%;
        margin-top: 10px;
    }

    .div-category {
        height: 40%;
        background-color: white;
        padding-top: 9px;
    }

    .a-category {
        padding-right: 3%;
        color: black;
        font-weight: 600;
    }

</style>


