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
  <img src="/logo-removebg-preview.png" width="25" height="25" class="d-inline-block align-top" alt="CMK">
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
              <div aria-labelledby="navbarDropdown" class="dropdown-menu">
                <a v-for="item in tab" :key="item.url" >
                  <nuxt-link class="dropdown-item text-wrap" v-if="item.name_tab.title===article.title" :to="`/${item.name_tab.sections}/${item.slug}`">{{item.title}}</nuxt-link>
                </a>
              </div>
        </li>
    </div>
    </template>
    </ul>
    <form class="form-inline my-2  my-lg-0 ">
    <div class="container">
      <div class="dropdown">
        <input class="form-control mr-sm-2 " type="search" v-model="searchText" placeholder="Введите запрос..." aria-label="Search">
        <button class="btn btn-outline-primary" type="submit" data-toggle="dropdown" v-on:click="loadSearch">Поиск
        <span class="caret"></span></button>
        <ul v-if="searchText.length > 2" class="dropdown-menu">
          <li class="dropdown-item text-wrap">Результат по запросу "{{searchText}}":</li>
          <div class="dropdown-divider"></div>
          <div v-if="searchData.length > 0">
            <li v-for="item in searchData" :key="item.url">
              <nuxt-link class="dropdown-item" :to="`/${item.name_tab.sections}/${item.slug}`">{{item.title}}</nuxt-link>
            </li>
            </div>
          <div v-else>
            <li class="dropdown-item" v-html="searchNull"></li>
          </div>
        </ul>
        <ul v-else class="dropdown-menu">
          <li class="dropdown-item" v-html="searchError"></li>
        </ul>
      </div>
    </div>
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
  export default {
  
  data (){
    return{
      tabs: [],
      tab: [],
      max_tabs: [],
      max_tab: [],
      search: [],
      searchData: [],
      searchText: "",
      searchNull: "",
      searchError: "",
      }
  },
  created(){
    this.loadTabs()
    this.loadTab()
    this.loadSearch()
  },
  methods:{
    async loadTabs($axios, params){
      this.tabs = await this.$axios.get( `/tabs_name/`)
      this.tab = this.tabs.data
    },
    async loadTab($axios, params){
      this.max_tabs = await this.$axios.get( `/tab/`)
      this.max_tab = this.max_tabs.data
    },
    async loadSearch($axios, params){
      if (this.searchText.length > 2){     
        this.search = await this.$axios.get( `/tabs_name/?search=${this.searchText}`,)
        if (this.search.data.length > 0){
          this.searchData = this.search.data
        } else {
          this.searchNull = 'Упсс...😔 Ничего не найдено'   
        }
      } else if (this.searchText.length > 0 && this.searchText.length < 3){
        this.searchError = 'Минимальная длина запроса<br>больше 3 символов'
      }
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

  .news{
       box-sizing: border-box;
    }
    .list-group-item{
      padding: .50rem !important;
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