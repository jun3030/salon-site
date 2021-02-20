<template>
  <div class="topImage">
    <div class="slider-outer">
      <div class="slider-inner" v-for="slide in slides">
        <img class="slide-img" v-bind:src="slide.img" width="450" height="300">
      </div>
    </div>
  </div>
</template>

<script>
export default {
  el: 'topImage',
  data: function () {
    return {
      slides: [
        {img: require('../../assets/images/image_gallery1.jpg')},
        {img: require('../../assets/images/image_gallery4.jpg')},
        {img: require('../../assets/images/top_main4.jpg')}
      ],
    }
  }
}
</script>

<style scoped>
html,body{
  height: 100%;
  width: 90%;
  margin: 0;
  padding: 0;
}
.slider-outer{
  position: relative;
  width: 90%;
  height: 500px;
  overflow: hidden;
  margin: 0 auto 20px;
}
.slider-inner{
  position: absolute;
  width: 90%;
  height: 500px;
}
.slide-img {
  width: 90%;
  height: 500px;
  object-fit: cover;
}
</style>