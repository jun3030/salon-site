<template>
  <div>
    <b-navbar toggleable="lg" type="dark" variant="info">
      <b-navbar-brand href="#">NavBar</b-navbar-brand>

      <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>

      <b-collapse id="nav-collapse" is-nav>
        <b-navbar-nav>
          <b-nav-item href="#">Link</b-nav-item>
          <b-nav-item href="#" disabled>Disabled</b-nav-item>
        </b-navbar-nav>

        <!-- Right aligned nav items -->
        <b-navbar-nav class="ml-auto">
          <b-nav-form>
            <b-form-input size="sm" class="mr-sm-2" placeholder="Search"></b-form-input>
            <b-button size="sm" class="my-2 my-sm-0" type="submit">Search</b-button>
          </b-nav-form>

          <b-nav-item-dropdown text="Lang" right>
            <b-dropdown-item href="#">EN</b-dropdown-item>
            <b-dropdown-item href="#">ES</b-dropdown-item>
            <b-dropdown-item href="#">RU</b-dropdown-item>
            <b-dropdown-item href="#">FA</b-dropdown-item>
          </b-nav-item-dropdown>

          <b-nav-item-dropdown right>
            <!-- Using 'button-content' slot -->
            <template v-slot:button-content>
              <em>User</em>
            </template>
            <b-dropdown-item href="#">Profile</b-dropdown-item>
            <b-dropdown-item href="#">Sign Out</b-dropdown-item>
          </b-nav-item-dropdown>
        </b-navbar-nav>
      </b-collapse>
    </b-navbar>
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
    <div id="sp-menu" style="display: none; left: 0px; opacity: 0;">
      <ul class="nav">
            <li style="opacity: 0;"><a href="https://rose-hair.jp#top" class="nav-home"><span class="in"><span class="hr"></span><span>HOME</span></span></a></li>
            <li style="opacity: 0;"><a href="https://rose-hair.jp#concept" class="nav-about"><span class="in"><span class="hr"></span><span>CONCEPT</span></span></a></li>
            <li style="opacity: 0;"><a href="https://rose-hair.jp#gallery" class="nav-style"><span class="in"><span class="hr"></span><span>GALLERY</span></span></a></li>
            <li style="opacity: 0;"><a href="https://rose-hair.jp#menu" class="nav-item"><span class="in"><span class="hr"></span><span>MENU</span></span></a></li>
            <li style="opacity: 0;"><a href="https://rose-hair.jp#staff" class="nav-catalog"><span class="in"><span class="hr"></span><span>STAFF</span></span></a></li>
            <li style="opacity: 0;"><a href="https://rose-hair.jp#access" class="nav-shop"><span class="in"><span class="hr"></span><span>ACCESS</span></span></a></li>
  <li style="opacity: 0;"><a href="https://rose-hair.jp/information/" class="nav-shop"><span class="in"><span class="hr"></span><span>INFOMARION</span></span></a></li>
            <li class="reserve" style="opacity: 0;"><a href="https://h78nyd.b-merit.jp/b2qtw9/web/" target="_blank" class="nav-shop"><span class="in"><span class="hr"></span><span>RESERVE</span></span></a></li>
      </ul><!-- .nav -->
    </div><!-- / #sp-menu -->
  </div>
</template>

<script>
export default {

}
</script>

<style scoped>

</style>