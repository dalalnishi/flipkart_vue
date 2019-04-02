<template>
  <carousel>
  <slide>
    <img src="../../assets/b449a2cbe3218e7d.jpg" alt="img1" />
  </slide>
  <slide>
    <img src="../../assets/ce425625e412dfd6.jpg" alt="img2"/>
  </slide>
  <slide>
    <img src="../../assets/f0c72858992901b7.jpg" alt="img3"/>
  </slide>
</carousel>
</template>

<script>

import { Carousel, Slide } from 'vue-carousel';

export default {
    name: 'Carousel',
    components: {
        Carousel,
        Slide
  }
}   
</script>

<style scoped>

</style>

