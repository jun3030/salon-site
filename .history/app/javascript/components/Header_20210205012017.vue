<template>
  <div class="header1">
    <div class="wrap">
        <!-- logo -->
        <a :href="url" class="rose-logo">
          <p id="logo-main"></p>
        </a>
        <nav>
          <div class="nav-ol">
            <ul class="nav">
              <li><a :href="url" class="nav-about"><span class="in"><span class="hr"></span><span><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">概念</font></font></span></span></a></li>
              <li><a :href="url" class="nav-style"><span class="in"><span class="hr"></span><span><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">ギャラリー</font></font></span></span></a></li>
              <li><a :href="url" class="nav-item"><span class="in"><span class="hr"></span><span><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">メニュー</font></font></span></span></a></li>
              <li><a :href="url" class="nav-catalog"><span class="in"><span class="hr"></span><span><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">スタッフ</font></font></span></span></a></li>
              <li><a :href="url" class="nav-shop"><span class="in"><span class="hr"></span><span><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">アクセス</font></font></span></span></a></li>
              <li><a :href="url" class="nav-shop"><span class="in"><span class="hr"></span><span><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">INFOMARION</font></font></span></span></a></li>
              <li class="reserve"><a :href="url" target="_blank" class="nav-shop"><span class="in"><span class="hr"></span><span><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">予約する</font></font></span></span></a></li>
            </ul><!-- .nav -->
          </div>
          <div class="nav-sp">
            <div class="inner">
              <a class="btn-erea"></a>
              <div class="menu-trigger">
                <span></span>
                <span></span>
                <span></span>
              </div>
            </div><!-- / .inner -->
            <div id="sp-menu">
              <ul class="nav">
                <li><a :href="url" class="nav-home"><span class="in"><span class="hr"></span><span><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">ホームホーム</font></font></span></span></a></li>
                <li><a :href="url" class="nav-about"><span class="in"><span class="hr"></span><span><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">概念</font></font></span></span></a></li>
                <li><a :href="url" class="nav-style"><span class="in"><span class="hr"></span><span><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">ギャラリー</font></font></span></span></a></li>
                <li><a :href="url" class="nav-item"><span class="in"><span class="hr"></span><span><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">メニュー</font></font></span></span></a></li>
                <li><a :href="url" class="nav-catalog"><span class="in"><span class="hr"></span><span><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">スタッフ</font></font></span></span></a></li>
                <li><a :href="url" class="nav-shop"><span class="in"><span class="hr"></span><span><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">アクセス</font></font></span></span></a></li>
                <li><a :href="url" class="nav-shop"><span class="in"><span class="hr"></span><span><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">INFOMARION</font></font></span></span></a></li>
                <li class="reserve"><a :href="url" target="_blank" class="nav-shop"><span class="in"><span class="hr"></span><span><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">予約する</font></font></span></span></a></li>
              </ul><!-- .nav -->
            </div><!-- / #sp-menu -->
          </div><!-- / .nav-sp -->
        </nav>
    </div>
</div>
</template>

<script>
  export default {
    name: 'Header',
    data: function() {
      return {
        url: "yahoo.co.jp"
      }
    }
  }
</script>

<style scoped>

div {
    display: block;
}

.header1 {
    position: relative;
    width: 100%;
    z-index: 200;
    font-weight: 700;
    font-size: 13px;
    box-sizing: border-box;
}

.header1 .rose-logo {
    display: block;
    width: 90px;
    margin: 50px 50px 20px;
}

</style>