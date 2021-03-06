<template>
<div>
<template><p class="mt-2" v-html="home.text"></p></template>
<h2>Новости и объявления колледжа:</h2>
<main class="container">
    <div class="row mb-2">
    <template v-for="article in articles">
    <div class="col-md-6" :key="article.id">

      <div class="row g-0 border rounded overflow-hidden flex-md-row mb-3 shadow-sm h-md-250 position-relative">
        <div class="col p-4 d-flex flex-column position-static">
          <strong class="d-inline-block mb-2 text-primary" v-if="article.status === 'Новости'">{{article.status}}</strong>
          <strong class="d-inline-block mb-2 text-success" v-else>{{article.status}}</strong>
          <h4 class="mb-0">{{article.title}}</h4>
          <div class="mb-1 text-muted">{{formatDate(article.pub_data)}}</div>
          <p class="card-text mb-auto" v-html="article.min_text + '...'"></p>
          <nuxt-link  class="stretched-link" :to="`articles/${article.id}`">Подробнее</nuxt-link>
        </div>
      </div>
    </div>
  </template>
    </div>
    <nuxt-link to="/articles">Архив новостей</nuxt-link>
</main>
</div>
</template>

<script>
export default {
  head() {
    return {
      title: "Главная страница"
    };
  },
    async asyncData({ $axios }) {
    try {
      let home = await $axios.$get(`/home/1`);
      let articles = await $axios.$get(`/article`);
      return { home, articles }
    } catch (e) {
      return { home: [], articles:[]};
    }
  },
  data({ params }) {
    return {
      home: {
      },
      articles:{
      },
    };
  },
  methods: {
    formatDate(date) {
      const options = { year: 'numeric', month: 'short', day: 'numeric', hour: 'numeric', minute: 'numeric'}
      return new Date(date).toLocaleDateString('ru', options)
    }
  }
};
</script>

<style scoped>
.container{
  min-width: 100% !important;
}
</style>
