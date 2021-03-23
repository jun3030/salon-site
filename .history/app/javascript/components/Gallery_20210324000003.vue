<template>
  <article id="gallery" class="effect">
    <div class="r-box">
      <div class="text-box-gallery">
        <div class="cap ac-t0" style="opacity: 1;">
            <div class="line"></div>
            <h2>GALLERY</h2>
        </div>
        <h3 style="opacity: 1;" class="ac-t1">365日、ステキな自分と、素敵な私。</h3>
        <p style="opacity: 1;" class="ac-t2">いつもの自分を、いつも以上に華やかに、愛らしく。自分をもっと好きになる、気づかなかった新しい“私”の発見をお手伝い。</p>
      </div>
      <!--<a href="" class="link bg-ny"><p>GALLERY</p></a>-->
    </div><!-- / .r-box -->
    <Carousel
      @next="next"
      @prev="prev"
    >
      <CarouselSlide v-for="(slide, index) in slides"
        :key="slide"
        :index="index"
        :visibleSlide = "visibleSlide"
        >
        <img :src="slide.img" style="width:100%;">
      </CarouselSlide>
    </Carousel>
  </article>
</template>

<script>
import Carousel from "./Carousel.vue"; //追記
import CarouselSlide from "./CarouselSlide.vue"; //追記

export default {
  data: function () {
    return {
      slides: [
        {img: require('../../assets/images/image_gallery4.jpg')},
        {img: require('../../assets/images/style-image.jpg')},
        {img: require('../../assets/images/top_main1.jpg')},
        {img: require('../../assets/images/image_gallery5.jpg')}
      ],
      visibleSlide: 0,
    }
  },
  components: {
    Carousel, //追記
    CarouselSlide
  },
  computed: {
    slidesLen() {
      return this.slides.length;
    }
  },
  methods: {
    next() {
      if(this.visibleSlide >= this.slidesLen - 1) {
        this.visibleSlide = 0;
      }else {
        this.visibleSlide++;
      }
    },
    prev() {
      if(this.visibleSlide <= 0) {
        this.visibleSlide = this.slidesLen - 1;
      }else {
        this.visibleSlide--;
      }
    }
  }
}
</script>

<style>
@media screen and (max-width: 930px), (max-device-width: 930px) {
#gallery {
  font-family: "Sawarabi Mincho" , YuMincho, "游明朝", "Hiragino Mincho ProN", "ヒラギノ明朝 ProN W3", Honoka, Meiryo, "メイリオ", serif;
  display: block;
  height: auto;
  /* margin: 100px auto; */
}

.r-box {
  width: 100%;
  min-width: 100%;
  order: 1;
  /* width: 35%; */
  /* min-width: 400px; */
  /* height: 700px; */
  background: #212736;
  color: #fff;
  box-sizing: border-box;
  height: 100%;
  position: relative;
}

.text-box-gallery {
  top: 0;
  transform: translateY(0);
  /* padding: 0; */
  width: 80%;
  margin: 0 auto;
  padding: 60px 0 100px;
}

.ac-t0 {
  opacity: 0;
  margin-top: -25px;
  /* -webkit-animation: fadein-t0 1.5s 1 ease forwards; */
  animation: fadein-t0 1.5s 1 ease forwards;
}

.cap .line {
  border: 1px solid #4f7594;
  width: 30px;
  margin: 22px 22px 22px 0;
  display: table;
}

#gallery .r-box .text-box-gallery h3 {
    font-weight: 200;
    font-size: 1.45em;
    color: #bbb;
    line-height: 1.5;
    margin: 60px 0 20px;
}
}

@media screen and (min-width: 931px) {
#gallery {
  font-family: "Sawarabi Mincho" , YuMincho, "游明朝", "Hiragino Mincho ProN", "ヒラギノ明朝 ProN W3", Honoka, Meiryo, "メイリオ", serif;
  width: 100%;
  height: 700px;
  /* margin: 180px auto; */
  display: flex;
}

#gallery .r-box {
  order: 1;
  width: 35%;
  min-width: 400px;
  height: 700px;
  background: #212736;
  color: #fff;
  box-sizing: border-box;
  height: 100%;
  position: relative;
  padding:70px;
}

.cap .line {
  border: 1px solid #4f7594;
  width: 30px;
  margin: 22px 22px 22px 0;
  display: table;
}
}

</style>