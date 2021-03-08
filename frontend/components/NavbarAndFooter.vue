<template>
<div>
    <div>
         <header>
            <div class="row  justify-content-center center" >
                 <div class="col-lg-4 mr-4 mb-2"> Государственное автономное профессиональное<br>
                    образовательное учреждение<br>
                    Республики Башкортостан<br>
                    «Салаватский медицинский колледж»<br></div>
                <div class="col-lg-3 mb-2">
                     453261 Республика Башкортостан <br>
                    г.Салават, ул. Фурманова, д. 4 <br>
                    Телефон/факс:&nbsp;(3476)-38-78-83<br>
                    e-mail: <a href="mailto:slv.mk@doctorrb.ru">slv.mk@doctorrb.ru</a></div>
            </div>
         </header>
 <!-- A grey horizontal navbar that becomes vertical on small screens -->
 
<nav class="navbar navbar-expand-lg navbar-light bg-light mb-2">
      <nuxt-link class="navbar-brand" to="/" title="На главную">
      <img src="/logo-removebg-preview.png" width="25" height="25" class="d-inline-block align-top" alt="">
      CMK</nuxt-link>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto"></ul>
    <ul class="navbar-nav mr-auto">
    <template v-for="article in max_tab">
    <div :key="article.url">
      <li class="nav-item dropdown">
          <a class="nav-link" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  {{article.title}}
            </a>
              <div  class="dropdown-menu size-navbar-text">
                <a v-for="item in tab" :key="item.url" >
                  <nuxt-link class="dropdown-item" v-if="item.name_tab.title===article.title" :to="`/${item.name_tab.sections}/${item.slug}`">{{item.title}}</nuxt-link>
                </a>
                <nuxt-link v-if="article.title==='Дистанционное обучение'" class="dropdown-item" to="/predmets">Домашнее задание</nuxt-link>
              </div>
        </li>
    </div>
    </template>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Введите запрос.." aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Поиск</button>
    </form>
  </div>
</nav>
<nuxt />
    <footer>
    <hr>
    <div class="center">
        <p>©{{new Date().getFullYear() }}.Государственное автономное профессиональное
        образовательное учреждение <br>
        Республики Башкортостан
        «Салаватский медицинский колледж»</p>
    <div><nuxt-link to="/sitemap" target="_blank">Карта сайта</nuxt-link></div>
    <br>
    <div>Мы в соцсетях:</div>
    <div>
      <a target="_blank" href="https://vk.com/slv_mk"><img src="https://vk.com/images/icons/pwa/apple/default.png?11" style="border-radius: 5px; margin-right: 5px;" witdh="35px" height="35px" alt="VK"></a> <!--src="/YWVaQgf9JkQ.jpg"-->
      <a target="_blank" href="https://www.instagram.com/salavatmedcollege/?igshid=uqq47wy5ebw3"><img src="https://www.instagram.com/static/images/ico/favicon-192.png/68d99ba29cc8.png" alt="Instagram" witdh="35px" height="35px"></a>
  </div>
  <br>
  <a href="#">Вернуться наверх</a>
  </div>
</footer>
    </div>
</div>
</template>
<script>
  //import axios from "~/plugins/axios";
  export default {
  
  data (){
    return{
      tabs: [],
      tab: [],
      max_tabs: [],
      max_tab: [],
      }
  },
  created(){
    this.loadTabs()
    this.loadTab()
  },
  methods:{
    async loadTabs ($axios, params){
    this.tabs = await this.$axios.get( `/tabs_name/`)
    this.tab = this.tabs.data
    },
    async loadTab ($axios, params){
    this.max_tabs = await this.$axios.get( `/tab/`)
    this.max_tab = this.max_tabs.data
    }
  }
  }
</script>
<style>
@font-face {
    src: url(https://code.s3.yandex.net/web-code/fonts/SuisseIntl-Book.woff);
    font-family: 'Suisse';
    font-weight: normal;
  }
  
  @font-face {
    src: url(https://code.s3.yandex.net/web-code/fonts/SuisseIntl-Bold.woff
  );
    font-family: 'Suisse';
    font-weight: bold;
   
  }
  html {
    height: 100%;
    margin: 0;
    -webkit-font-smoothing: antialiased;
  }
  body{
  width: 100%;
  height: 100%;
  padding-left: 50px;
  padding-right: 50px;
  font-family: 'Suisse';
  }
  @media (max-width: 1200px){
   body{
    width: 100%;
  height: 100%;
  padding-left: 50px;
  padding-right: 50px;
   }
  }
   iframe{
   width: 500px;
 }
  @media (max-width: 992px){
   body{
    width: 100%;
  height: 100%;
  padding-left: 50px;
  padding-right: 50px;
   }
  }
  @media (max-width: 767px){
   body{
    width: 100%;
  height: 100%;
  padding-left: 5%;
  padding-right: 5%;
  
   }
   .container table td {
    display: flex !important;
    justify-content: center !important;
}
 .mobile-article{
   text-align: center;
 }
 iframe{
   width: 100%;
 }
   .footer{
    width: 55% !important;
   }
   .textcols {
      white-space: nowrap;
      font-size: 0;
  }
  .textcols-item {
      white-space: normal;	
      display: inline-block;
      width: 30%;
      vertical-align: top;
    font-size: 13px !important;
  }
  .textcols .textcols-item:last-child {
      margin-right: 0 ;
  }
  .item{
    margin-left: 5px;
  }
  .left{
    margin-left: -20px;
  }
  .left-left{
    margin-left: -20px;
  }
  .size-navbar-text{
    font-size:  30px;
  }

  }
  
    @media screen and(min-width: 600px) {
    .bottom{
      margin-right: 30px;
    }

    header{
      margin-bottom: 10px;
    }
    .test{
       margin-top: 25px;

     }
     .carousel-size {
      height: 55%;
  }
    }
    @media (max-width: 530px) {
      .size-navbar-text{
        font-size:  12px;
      }
      .show{
        padding-left: 0 !important;
        padding-right: 0 !important;
      }
    }
    @media (max-width: 340px) {
      .size-navbar-text{
        font-size:  10px !important;
      }
    }
    .vector{
      width: 100%;
    }
    .center{
      text-align: center;
      margin-bottom: 5px;
    }
     .width{
       width: 75%;
     }
     .test{
       overflow: auto;
      padding-bottom: 0;
     }
  .h-75{
    height: 85%!important;
  }
  .map {
      padding: 20px 0;
      text-align: center;
  }
  .cont {
      max-width: 1000px;
      margin: 0 auto;
  }
  h2 {
      font-size: 25px;
      font-family: 'Arial Narrow Bold', sans-serif;
      margin-bottom: 10px;
  }
  .footer{
  
    width: 55%;
  }
  .textcols {
      white-space: nowrap;
      font-size: 0;
  }
  .textcols-item {
      white-space: normal;	
      display: inline-block;
      width: 100%;
      vertical-align: top;
      font-size: 16px;
  }
  .textcols .textcols-item:last-child {
      margin-right: 0 ;
  }
  .item{
    margin-left: 50px;
  }
  .news{
       box-sizing: border-box;
    }
    .list-group-item{
      padding: .50rem !important;
    }
  .icon{
    margin-top: -6px !important;
}
 .container {
     min-width: 320px;
     max-width: 100%;
     box-sizing: border-box;
}

table {
    border-collapse: collapse;
    width: 70%;
}

table td, table th {
    border: 1px solid #cbbdbd;
}


 @media (max-width: 720px) {
     .container table thead {
     display: none;
}
.container table tr {

     display: block;

}
 .container table td {
     display: flex;
     justify-content: space-between;
}
 .container table td::before {
     content: attr(data-label);
     font-weight: bold;
}
}
</style>