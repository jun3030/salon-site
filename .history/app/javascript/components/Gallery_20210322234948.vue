<template>
<article id="gallery" class="effect">
  <div class="r-box">
    <div class="text-box">
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
@media screen and (max-width: 950px), (max-device-width: 950px) {
#gallery {
    background:red;
}
}
</style>