<template>
  <article id="menu" class="effect">
    <div class="in">
      <div class="text-box">
        <div class="cap ac-t0" style="opacity: 1;">
          <div class="line"></div>
          <h2>MENU</h2>
        </div>
        <p style="opacity: 1;" class="ac-t2">カットはもちろん、シャンプーやカラー、パーマ全てに気を配っています。<br>髪のこと、頭皮のことを考慮し、厳選したオーガニックな薬剤を揃えています。<br>髪や頭皮でお悩みのお客様に合わせた最適な施術を行います。</p>
      </div>
    </div>
    <!--<a href="" class="link"><p>MENU</p></a>-->
    <div class="in2">
      <div class="menu-box">
        <div class="l-box">
          <section class="item ac-t1" style="opacity: 1;">
            <h3>CUT<span>（カット）</span></h3>
            <dl>
              <dt>Stylist / Top Stylist</dt>
              <dd>¥ 4,400 / ¥ 4,700</dd>
            </dl>
            <dl>
              <dt>Director</dt>
              <dd>¥ 5,000</dd>
            </dl>
            <dl>
              <dt>TAKAGI<span>（新規指名のお客様）</span></dt>
              <dd>¥ 10,000</dd>
            </dl>
          </section>
          <section class="item ac-t1" style="opacity: 1;">
              <h3>COLOR<span>（カラー）</span></h3>
              <dl>
                  <dt>リタッチ</dt>
                  <dd>¥ 4,500 〜</dd>
              </dl>
              <dl>
                  <dt>ワンタッチ</dt>
                  <dd>¥ 5,000 〜</dd>
              </dl>
              <dl>
                  <dt>ツータッチ</dt>
                  <dd>¥ 7,000 〜</dd>
              </dl>
              <dl>
                  <dt>ダブルカラー</dt>
                  <dd>¥ 9,000 〜</dd>
              </dl>
              <dl>
                  <dt>AVEDAカラー</dt>
                  <dd>+ ¥ 1,500</dd>
              </dl>
          </section>
          <section class="item ac-t1" style="opacity: 1;">
              <h3>PERM<span>（パーマ）</span></h3>
              <dl>
                  <dt>ベーシックパーマ</dt>
                  <dd>¥ 6,600 〜</dd>
              </dl>
              <dl>
                  <dt>デジタルパーマ</dt>
                  <dd>¥ 11,600 〜</dd>
              </dl>
              <dl>
                  <dt>ストレートパーマ</dt>
                  <dd>¥ 17,000 〜</dd>
              </dl>
          </section>
          </div><!-- / .l-box -->

          <div class="r-box">
            <section class="item ac-t1" style="opacity: 1;">
              <h3>HAIR CARE<span>（ヘアケア）</span></h3>
              <dl>
                <dt>トリートメント各種<br><span>（AVEDA／MILBON／Aujua）</span></dt>
                <dd class="snd">¥ 2,500 〜 ¥ 5,000</dd>
              </dl>
              <dl>
                <dt>ヘッドスパ各種<br><span>（AVEDA／MILBON／Aujua）</span></dt>
                <dd class="snd">¥ 500 〜 ¥ 4,000</dd>
              </dl>
              <dl>
                <dt>個室スパ　60min / 90min<br><span>（AVEDA）</span></dt>
                <dd class="snd">¥ 8,640 〜 ¥ 10,800</dd>
              </dl>
            </section>
            <section class="item" style="opacity: 0;">
              <h3>OTHER<span>（その他）</span></h3>
              <dl>
                <dt>シャンプー&amp;ブロー</dt>
                <dd>¥ 2,500</dd>
              </dl>
              <dl>
                <dt>シャンプー&amp;ブロー<span>（TAKAGI）</span></dt>
                <dd>¥ 3,000</dd>
              </dl>
              <dl>
                <dt>セット / アップ</dt>
                <dd>¥ 4,000 / ¥ 5,000</dd>
              </dl>
              <dl>
                <dt>ポイントメイク / フルメイク</dt>
                <dd>¥ 2,000 / ¥ 4,000</dd>
              </dl>
              <dl>
                <dt>TAKAGIメイク</dt>
                <dd>¥ 10,000</dd>
              </dl>
              <dl>
                <dt>時間外料金<span>（1時間毎）</span></dt>
                <dd>+ ¥ 1,500</dd>
              </dl>
            </section>
              <ul>
                <li>表示価格はすべて税込です（H29年7月1日現在）</li>
                <li>カット料金以外は、シャンプー・ブローは含まれておりません。</li>
                <li>スタイリストやデザインによって料金が異なる場合がございますので予めご確認ください。</li>
                <li>各種カードでのお支払いも可能です。</li>
                <li>詳細などお問い合わせはお電話にてご確認ください。</li>
              </ul>
          </div><!-- / .r-box -->
        </div><!-- / .menu-box -->
      </div>
    </div><!-- / .in -->
    <ul>
      <li v-for="(taskCourse) in taskCourses" :key="taskCourse.id">
        {{ taskCourse.id }}
        {{ taskCourse.title }}
        {{ taskCourse.description }}
      </li>
    </ul>
  </article>
</template>

<script>
import axios from "axios"

export default {
  data: function () {
    return {
　　　 //todoリスト
      taskCourses: [],
      //テキストボックスの値
      body: "",
    }
  },
  //一覧読み込み
  mounted () {
    axios.get('api/v1/task_courses').then((response) => {
      this.taskCourses = response.data
      }).catch(() => {
        alert("エラー");
      });
    }
  }
</script>

<style scoped>

@media screen and (max-width: 1050px) {
#menu {
  width: 100%;
  background: #f5f5f5;
  margin: 0 auto;
  position: relative;
  font-family: "Sawarabi Mincho" , YuMincho, "游明朝", "Hiragino Mincho ProN", "ヒラギノ明朝 ProN W3", Honoka, Meiryo, "メイリオ", serif;
}

#menu .in {
  padding-top: 100px;
  max-width: 1180px;
  width: 80%;
  margin: 0 auto;
}

.text-box {
  margin-left: 0;
  display: block;
  position: relative;
  width: 100%;
}
}

</style>