<template>
<article id="concept">
    <section class="cnt1 effect" style="height: 400.95px;">
          <div class="l-box" style="height: 400.95px;">
              <div class="text-box">
                  <div class="cap ac-t0" style="opacity: 1;">
                      <div class="line"></div>
                      <h2>CONCEPT</h2>
                  </div>
                  <h3 class="ac-t1" style="opacity: 1;">女の子のステキと、<br>女性の素敵をデザインする。</h3>
                  <p class="ac-t2" style="opacity: 1;">美容は、人を笑顔にし、人の心を豊かにする。美容は、人を幸せにし、人が美しく生きる、女性が生きる。美容は、人としての在り方、生き方につながる。そんな「美容のチカラ」を全てのお客様に、ご提案致します。</p>
              </div>
              <!--<a href="" class="link"><p>CONCEPT</p></a>-->
          </div><!-- / .l-box -->
          <div class="image in1 ac-end" style="opacity: 1; height: 400.95px;"><div class="bg"></div></div>
      </section><!-- / .cnt1 -->
      <section class="cnt2 effect" style="height: 400.95px;">
        <div class="r-box" style="height: 400.95px;">
              <div class="text-box">
                  <h3 style="opacity: 1;" class="ac-t1">人の数だけ、個性の数だけ、<br>“髪質”がある。</h3>
                  <p style="opacity: 1;" class="ac-t2">人それぞれの個性があるように、その人特有の髪質もあります。ROSEでは、すべてのお客様の個性を生かすべく、オージュアソムリエの資格を持ったスペシャリストが、お客様一人一人の髪質に合わせたヘアケアを親身になってご対応させていただきます。カットやカラー、パーマだけでなく、髪そのものに対し妥協することなく向き合います。</p>
              </div>
          </div><!-- / .r-box -->
          <div class="image-box">
            <div class="image in2 ac-end" style="opacity: 1; height: 400.95px;"><div class="bg"></div></div>
              <div class="image in3 ac-end" style="opacity: 1; height: 400.95px;"><div class="bg"></div></div>
          </div>
      </section><!-- / .cnt2 -->
  </article>
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
  box-sizing: border-box;
}

@media screen and (max-width: 930px), (max-device-width: 930px) {
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
  /* max-width: 1600px; */
  display: flex;
}

#concept .cnt1 .l-box .text-box h3 {
  font-weight: 200;
  font-size: 1.45em;
  line-height: 1.5;
  margin: 50px 0 20px;
}
}

</style>
