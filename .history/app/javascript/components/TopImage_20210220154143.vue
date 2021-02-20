<template>
  <div class="topImage">
    <div class="imageContainer">
      <div class="slider-outer">
      <transition name="fade">
        <div class="slider-inner" :key="idx" v-for="(slide, idx) in slides" v-if="current_slide == idx">
          <img class="slide-img" v-bind:src="slide.img">
        </div>
      </transition>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  el: 'topImage',
  data: function () {
    return {
      current_slide: 1,
      slides: [
        {img: require('../../assets/images/image_gallery1.jpg')},
        {img: require('../../assets/images/image_gallery4.jpg')},
        {img: require('../../assets/images/top_main4.jpg')}
      ],
    }
  },
  mounted() {
　　setInterval(() => {
      this.current_slide = this.current_slide < this.slides.length -1 ? this.current_slide +1 : 0
    }, 3000)
  }
}
</script>

<style scoped>

/* 900px以外で適用するもの */
@media screen and (min-width: 900px) {
.imageContainer {
  width: 100%;
  padding-left: 48px;
  margin-right: auto;
  margin-left: auto;
}
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