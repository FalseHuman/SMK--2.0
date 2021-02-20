<template>
<ul>
    <strong><p class="center mt-2">Карта сайта СМК</p></strong>
    <li>
        <template v-for="article in info">
              <div :key="article.id">
                <li><nuxt-link class="dropdown-item textcols-item" style="font-size: 16px !important" :to="`/info/${article.id}`">{{article.title}}</nuxt-link></li>
              </div> 
        </template>
        </li>
        <li>
        <template v-for="article in students">
              <div :key="article.id">
                <li><nuxt-link class="dropdown-item" :to="`/students/${article.id}`">{{article.title}}</nuxt-link></li>
              </div> 
        </template>
        </li>
        <li>
        <template v-for="article in abiturents">
                  <div :key="article.id">
                   <li> <nuxt-link class="dropdown-item textcols-item" style="font-size: 16px !important"  :to="`/abiturents/${article.id}`">{{article.title}}</nuxt-link></li>
                  </div> 
        </template>
    </li>
    <li><nuxt-link class="dropdown-item" to="/contacts">Контакты</nuxt-link></li>
    <li><nuxt-link class="dropdown-item" to="/contacts/hotline">Горячая линия</nuxt-link></li>
    <li><nuxt-link class="dropdown-item" to="/contacts/callback">Обратная связь</nuxt-link></li>
    <li><nuxt-link class="dropdown-item" to="/contacts/controls/">Контакты контролирующих организаций</nuxt-link></li>
    <li><nuxt-link class="dropdown-item" to="/teachers/info">Справочная информация</nuxt-link></li>
    <li><nuxt-link class="dropdown-item" to="/teachers/educationalandmethodicalwork">Учебно-методическая работа</nuxt-link></li>
    <li><nuxt-link class="dropdown-item" to="/teachers/additionaleducation">Дополнительное образование</nuxt-link></li>
    <li><nuxt-link class="dropdown-item" to="/teachers/seminars/">Республиканские семинары</nuxt-link></li>
    <li><nuxt-link class="dropdown-item" to="/teachers/certification/">Аттестация</nuxt-link></li>
</ul>
</template>
<script>
export default {
    head() {
    return {
      title: "Карта сайта",
    };
  },
    data (){
    return{
      students : [],
      info: [],
      abiturents: []
      }
  },
  created(){
    this.loadStudents()
    this.loadInfo()
    this.loadAbiturents()
  },
  methods:{
    async loadStudents(){
    this.students = await fetch (`http://127.0.0.1:8000/api/students/`).then(response => response.json())
    //let posts = await this.$axios.$get(`/students`).then(response => response.json())
    //this.posts = posts
    //return {post}
    },
    async loadInfo(){
    this.info = await fetch (`http://127.0.0.1:8000/api/info/`).then(response => response.json())
    },
    async loadAbiturents(){
    this.abiturents = await fetch (`http://127.0.0.1:8000/api/abiturents/`).then(response => response.json())
    }
  }
}
</script>