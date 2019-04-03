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
        </carousel>
    </div>
</template>

<script>

import { Carousel, Slide } from 'vue-carousel';

export default {
    name: 'Home',
    components: {
        Carousel,
        Slide,
    }
}
</script>

<style scoped>
    .ca-img  {
        height: 350px;
        width: 100%;
    }
</style>

