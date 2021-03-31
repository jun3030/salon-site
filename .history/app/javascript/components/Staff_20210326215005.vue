<template>
<article id="staff" class="effect">
  <div class="in">
    <div class="text-box">
      <div class="cap ac-t0" style="opacity: 1;">
        <div class="line"></div>
        <h2>STAFF</h2>
      </div>
      <p style="opacity: 1;" class="ac-t2">一級の技術を持ったROSEのスタッフです。<br>カットの技術はもちろん、髪質や頭皮のこと、お客様の健康面も考慮したスペシャリストです。<br>どんなカットでもケアでも、ご相談に乗りますのでお気軽にどうぞ。</p>
    </div>
  </div>

  <ul class="staff-item">
    <li class="item fst image ac-end" style="opacity: 1; height: 291px;">
      <div class="bg-w" style="height: 0px;"><img class="bg" src="img/index/image_staff_takagi.jpg" alt="高木 達也"></div>
        <div class="profile">
          <div class="p-text">
            <h3><span>- BOSS -</span><br>高木 達也</h3>
            <p>ROSEのDNA。「カット1万円」から繰り広げられる「タカギマジック」は、多くのファッショニスタからも支持される。※高木の予約は混雑しますので、1～2週間前の予約をお勧めします。<br><span>【資生堂SABFA卒業】</span></p>
          </div>
        </div>
        <input id="modal-trigger-takagi" type="checkbox">
        <label for="modal-trigger-takagi" class="label-tr"></label>
        <div class="modal-overlay">
          <div class="modal-wrap" style="height: initial;">
            <label for="modal-trigger-takagi" class="label-close">CLOSE</label>
            <div class="image-label"><img src="img/index/image_staff_takagi.jpg" alt="高木 達也"></div>
            <div class="p-text">
              <h3><span>- BOSS -</span><br>高木 達也</h3>
              <p>ROSEのDNA。「カット1万円」から繰り広げられる「タカギマジック」は、多くのファッショニスタからも支持される。<br>※高木の予約は混雑しますので、1～2週間前の予約をお勧めします。<br><span>【資生堂SABFA卒業】</span></p>
            </div>
          </div>
        </div><!-- / .modal-overlay -->
    </li>
  </ul>
</article>
</template>

<script>
export default {

}
</script>

<style scoped>
@media screen and (max-width: 930px), (max-device-width: 930px) {
#staff {
  font-family: "Sawarabi Mincho" , YuMincho, "游明朝", "Hiragino Mincho ProN", "ヒラギノ明朝 ProN W3", Honoka, Meiryo, "メイリオ", serif;
  font-size: 14px;
  line-height: 1.8;
  padding: 100px 0;
  width: 100%;
  margin: 0 auto;
}

#staff .in {
  display: block;
  padding-bottom: 60px;
  max-width: 1180px;
  width: 80%;
  margin: 0 auto;
}

.cap .line {
  border: 1px solid #4f7594;
  width: 30px;
  margin: 22px 22px 22px 0;
  display: table;
}

.cap h2 {
  font-weight: 100;
  font-family: 'Abel', sans-serif;
  letter-spacing: 0.2em;
  font-size: 2rem;
}

.cap::after {
  content: "";
  display: block;
  clear: both;
}

#staff .text-box p {
  margin: 30px 0 0 0;
}

#body-wrapper p {
  color: #666;
}

.staff-item {
  width: 96%;
  margin: 0 auto;
  float: none;
}

.staff-item li {
  overflow: hidden;
  width: 33.333333333%;
  box-sizing: border-box;
  margin: 3px;
  position: relative;
  display: block;
}

li {
  list-style: none;
}

.staff-item li img.bg {
  width: 100%;
  height: auto;
  display: block;
  margin: auto;
  position: absolute;
  left: 50%;
  top: 50%;
  transform: translate(-50%,-50%);
}

.staff-item li .profile {
  width: 100%;
  height: 100%;
  display: block;
}

.staff-item li .profile .p-text {
  opacity: 0;
  -webkit-transform: scale(1.1);
  transform: scale(1.1);
  position: absolute;
  color: #fff !important;
  width: 100%;
  height: 100%;
  box-sizing: border-box;
  padding: 30px;
  display: block;
  background: rgba(33, 39, 54, 0.5);
  /* transition: all 0.7s ease; */
  -webkit-transition: all 0.7s ease;
  /* -moz-transition: all 0.7s ease; */
}

.staff-item li .profile h3 {
  text-align: center;
  letter-spacing: 0.1em;
  font-size: 15px;
  line-height: 1.4em;
}
}

</style>