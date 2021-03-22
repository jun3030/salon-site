<template>
<div class="conCeptGroup">
  <article id="concept">
    <section class="cnt1 effect" style="height: 400.95px;">
      <div class="l-box" style="height: 400.95px;">
        <div class="text-box">
          <div class="cap ac-t0" style="opacity: 1;">
            <div class="line"></div>
            <h2>-CONCEPT-</h2>
          </div>
          <h3 style="opacity: 1;" class="ac-t1">女の子のステキと、<br>女性の素敵をデザインする。</h3>
          <p style="opacity: 1;" class="ac-t2">美容は、人を笑顔にし、人の心を豊かにする。美容は、人を幸せにし、人が美しく生きる、女性が生きる。美容は、人としての在り方、生き方につながる。そんな「美容のチカラ」を全てのお客様に、ご提案致します。</p>
        </div>
        <!--<a href="" class="link"><p>CONCEPT</p></a>-->
      </div><!-- / .l-box -->
      <div class="image in1 ac-end">
        <div class="bg">
          <img class="slide-img" v-bind:src="image" style="height: 400.95px;">
        </div>
      </div>
    </section><!-- / .cnt1 -->
    <section class="cnt2 effect" style="height: 400.95px;">
      <div class="r-box" style="height: 400.95px;">
        <div class="text-box">
          <h3 style="opacity: 1;" class="ac-t1">人の数だけ、個性の数だけ、<br>“髪質”がある。</h3>
          <p style="opacity: 1;" class="ac-t2">人それぞれの個性があるように、その人特有の髪質もあります。ROSEでは、すべてのお客様の個性を生かすべく、オージュアソムリエの資格を持ったスペシャリストが、お客様一人一人の髪質に合わせたヘアケアを親身になってご対応させていただきます。カットやカラー、パーマだけでなく、髪そのものに対し妥協することなく向き合います。</p>
        </div>
      </div><!-- / .r-box -->
      <div class="image-box">
        <div class="image in2 ac-end">
          <div class="bg">
            <img class="slide-img" v-bind:src="image" style="opacity: 1; height: 400.95px;">
          </div>
        </div>
        <!-- <div class="image in3 ac-end">
          <div class="bg">
            <img class="slide-img" v-bind:src="image" style="opacity: 1; height: 400.95px;">
          </div>
        </div> -->
      </div>
    </section><!-- / .cnt2 -->
  </article>
</div>
</template>

<script>
export default {
  el: "conCeptGroup",
  data: function () {
    return {
      image: require('../../assets/images/image_gallery1.jpg')
    }
  }
}
</script>>

<style scoped>
#concept {
  width: 100%;
  overflow-x: hidden;
  font-family: "Sawarabi Mincho" , YuMincho, "游明朝", "Hiragino Mincho ProN", "ヒラギノ明朝 ProN W3", Honoka, Meiryo, "メイリオ", serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  font-size: 14px;
  line-height: 1.8;
  box-sizing: border-box;
}

#concept .cnt1, #concept .cnt2 {
  width: 80%;
  padding: 0 100px;
  margin: 180px auto;
  max-width: 1600px;
  display: flex;
}

#concept .cnt1 .l-box {
  width: 30%;
  min-width: 400px;
  min-height: 450px;
  height: 100%;
  position: relative;
}

#concept .cnt1 .l-box {
  width: 30%;
  min-width: 400px;
  min-height: 450px;
  height: 100%;
  position: relative;
}

#concept .cnt1 .l-box .text-box {
  padding-right: 100px;
  top: 50%;
  transform: translateY(-50%);
  position: relative;
}

#concept .cnt1 .in1 {
  width: 70%;
  max-width: 1100px;
  min-height: 450px;
}

#concept .cnt2 {
  margin-top: 180px;
}

#concept .cnt2 .r-box {
  width: 30%;
  min-width: 400px;
  height: 100%;
  position: relative;
  order: 1;
}

#concept .cnt2 .r-box .text-box h3 {
  font-weight: 200;
  font-size: 1.45em;
  line-height: 1.5;
  margin-bottom: 20px;
}

.ac-t1 {
  opacity: 0;
  padding-top: 40px;
  -webkit-animation: fadein-t1 2s 1 ease forwards;
  animation: fadein-t1 2s 1 ease forwards;
}

#concept .cnt2 .image-box .in2 .bg {
  width: 100%;
  height: 100%;
  background: url("../../assets/images/image_gallery1.jpg") no-repeat center center;
  /* background: url(../../assets/images/image_gallery1.jpg) no-repeat center center; */
  display: block;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}

#body-wrapper p {
  color: #666;
}

#concept .cnt2 .image-box {
    width: 70%;
    max-width: 1100px;
    order: 0;
    display: flex;
}
</style>
