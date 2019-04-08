<template>
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
            <slide>
                <img src="../../assets/37e9e012b6e0f2a3edf47438f066958d.jpg" alt="img4" class="ca-img"/>
            </slide>
            <slide>
                <img src="../../assets/flipkart-festive-dhamaka.png" alt="img5" class="ca-img"/>
            </slide>
        </carousel>

        <div style="background-color: #ececec; padding: 20px;">
            <a-row :gutter="16">
            <a-col :span="8" v-for="pro in products" :key="pro.product_id">
                <a-card :title="pro.subcat_name" :bordered="true">
                <p><img :src="imgUrl+pro.product_img[0]" /></p>
                {{ pro.brand_name }}
                </a-card>
            </a-col>
            </a-row>
        </div>
    </div>
</template>

<script>

import { Carousel, Slide } from 'vue-carousel';

export default {
    name: 'Home',
    components: {
        Carousel,
        Slide,
    },
    created () {
        this.$store.dispatch('getProducts');
    },

    computed: {
        products () {
            return this.$store.state.HomeStore.products;
        },
        imgUrl () {
            return this.$store.state.AppStore.imageUrl;
        }
    }

}
</script>

<style scoped>
    .ca-img  {
        height: 350px;
        width: 100%;
    }

    img {
        height: 150px;
        width: 80px;
    }
</style>

