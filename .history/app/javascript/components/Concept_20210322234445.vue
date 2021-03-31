<template>
<article id="concept">
  <div class="cnt1 effect" style="height: 400.95px">
    <div class="l-box" style="height: 400.95px;">
      <div class="text-box">
        <div class="cap ac-t0" style="opacity: 1;">
          <div class="line"></div>
          <h2>CONCEPT</h2>
        </div>
        <h3 class="ac-t1">女の子のステキと、<br>女性の素敵をデザインする。</h3>
        <p class="ac-t2">美容は、人を笑顔にし、人の心を豊かにする。美容は、人を幸せにし、人が美しく生きる、女性が生きる。美容は、人としての在り方、生き方につながる。そんな「美容のチカラ」を全てのお客様に、ご提案致します。</p>
      </div>
      <br><img class="concept-image" v-bind:src="conceptImage">
      <!--<a href="" class="link"><p>CONCEPT</p></a>-->
    </div><!-- / .l-box -->
  </div><!-- / .cnt1 -->

  <div class="cnt2 effect">
    <div class="l-box">
      <div class="text-box">
        <h3 class="ac-t3">人の数だけ、個性の数だけ、<br>“髪質”がある。</h3>
        <p class="ac-t4">人それぞれの個性があるように、その人特有の髪質もあります。ROSEでは、すべてのお客様の個性を生かすべく、オージュアソムリエの資格を持ったスペシャリストが、お客様一人一人の髪質に合わせたヘアケアを親身になってご対応させていただきます。カットやカラー、パーマだけでなく、髪そのものに対し妥協することなく向き合います。</p>
      </div>
      <br><img class="concept-image" v-bind:src="conceptImage2">
      <!--<a href="" class="link"><p>CONCEPT</p></a>-->
    </div><!-- / .l-box -->
  </div><!-- / .cnt1 -->
</article>
</template>

<script>
export default {
  el: "conCeptGroup",
  data: function () {
    return {
      conceptImage: require('../../assets/images/image_concept1.jpg'),
      conceptImage2: require('../../assets/images/image_concept2.jpg')
    }
  }
}
</script>>

<style scoped>
article {
  background: red;
}

#concept {
  width: 100%;
  overflow-x: hidden;
  font-family: "Sawarabi Mincho" , YuMincho, "游明朝", "Hiragino Mincho ProN", "ヒラギノ明朝 ProN W3", Honoka, Meiryo, "メイリオ", serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  font-size: 14px;
  box-sizing: border-box;
}

/* @media screen and (max-width: 930px), (max-device-width: 930px) { */
#concept .cnt1 {
  min-height: 450px;
}

.line {
  border: 1px solid #4f7594;
  width: 30px;
  margin: 22px 22px 22px 0;
  display: table;
}

#concept .cnt1, #concept .cnt2 {
  /* width: 80%; */
  padding: 0 100px;
  /* margin: 180px auto; */
  max-width: 1600px;
  display: flex;
}

.cnt2 {
  /* width: 80%; */
  margin: 180px auto;
  max-width: 1600px;
  display: flex;
  background: blue;
}

#concept .cnt1 .l-box .text-box h3 {
  font-weight: 200;
  font-size: 1.45em;
  line-height: 1.5;
  margin: 50px 0 20px;
}

.ac-t3 {
  font-weight: 200;
  font-size: 1.45em;
  line-height: 1.5;
  margin-bottom: 20px;
}

.concept-image {
  width:100%;
  height:65%;
}
/* } */

</style>
