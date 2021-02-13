<template>
    <div>
      <article class="blog-post">
        <h2 class="blog-post-title">{{article.title}}</h2>
        <p class="blog-post-meta">{{formatDate(article.pub_data)}}</p>
        <p v-html="article.text"></p>
      </article>
    </div>
    
</template>
<script>
export default {
  async asyncData({ $axios, params }) {
    try {
      let article = await $axios.$get(`/article/${params.id}`);
      return { article };
    } catch (e) {
      return { article: [] };
    }
  },
  data({ params }) {
    return {
      article: {
      },

    };
  },
  head() {
    return {
      title:  this.article.title,
    };
  },
  methods: {

      formatDate(date) {
      const options = { year: 'numeric', month: 'short', day: 'numeric', hour: 'numeric', minute: 'numeric'}
      return new Date(date).toLocaleDateString('ru', options)
    }
},
};
</script>