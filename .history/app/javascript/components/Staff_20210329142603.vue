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
    <div v-for="(staff) in Staffs" :key="staff.id">
      <li class="item fst image ac-end" style="opacity: 1; height: 291px;">
        <img class="bg" :src=staff.picture.url style="width:260px; height:260px;" :alt=staff.name>
      </li>
    </div>
  </ul>
</article>
</template>

<script>
import axios from "axios"

export default {
  data: function () {
    return {
      Staffs: [],
      body: "",
    }
  },
  //一覧読み込み
  mounted () {
    axios.get('/api/v1/staffs').then((response) => {
      this.Staffs = response.data
      }).catch(() => {
        alert("エラー");
      });
    }
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
  display: flex;
  flex-wrap: wrap;
  list-style: none;
}

.bg {
  padding:10px;
  flex: auto;
  min-width:110px;
  height: 50px;
  background:#999;
  border-radius: 2px;
  margin:3px;
}


}

</style>