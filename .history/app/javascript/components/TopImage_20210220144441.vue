<template>
  <div class="topImage">
    <div class="container">
      <div class="slider-outer">
        <div class="slider-inner" v-for="slide in slides">
          <img class="slide-img" v-bind:src="slide.img" width="1000">
        </div>
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
.container {
  width: 100%;
  padding-right: 15px;
  padding-left: 15px;
  margin-right: auto;
  margin-left: auto;
}

html,body{
  height: 100%;
  width: 100%;
  margin: 0;
  padding: 0;
}
.slider-outer{
  position: relative;
  width: 100%;
  height: 500px;
  overflow: hidden;
  margin: 0 auto 20px;
}
.slider-inner{
  position: absolute;
  width: 100%;
  height: 500px;
}
.slide-img {
  width: 100%;
  height: 500px;
  object-fit: cover;
}
</style>