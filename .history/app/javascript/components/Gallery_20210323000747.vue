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
    <div id="slide-box" class="image ac-end" style="opacity: 1;">
      <ul class="bg">
        <li class="slide prev" id="slide-1"></li>
        <li class="slide" id="slide-2"></li>
        <li class="slide next" id="slide-3"></li>
        <li class="slide future" id="slide-4"></li>
        <li class="slide future" id="slide-5"></li>
      </ul>
    <div class="controls"><a class="prev" href="Javascript:;"></a><span class="current">2/5</span><a class="next" href="Javascript:;"></a></div></div>
  </article>
</template>

<script>
export default {

}
</script>

<style>
@media screen and (max-width: 930px), (max-device-width: 930px) {
#gallery {
  display: block;
  height: auto;
  /* margin: 100px auto; */
  background:red;
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

#gallery .r-box .text-box h3 {
    font-weight: 200;
    font-size: 1.45em;
    color: #bbb;
    line-height: 1.5;
    margin: 60px 0 20px;
}
}

</style>