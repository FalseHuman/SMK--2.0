<template>
<div>
      <div class="row justify-content-center mt-2">
      <div class="col-7 col-sm-3 mb-2">
          <div class="list-group text-wrap block">
             <template v-for="article in abiturents">
              <div :key="article.id">
                <nuxt-link exact no-prefetch active-class="active" class="list-group-item list-group-item-action text-center" :to="`/abiturents/${article.id}`">{{article.title}}</nuxt-link>
              </div> 
            </template>
          </div>
      </div>
        <div class="col-9">      
            <p class="center">{{abiturent.title}}</p>
            <hr>
            <p class="" v-html="abiturent.text"></p>
        </div>
      
        <!-- Заставит следующие столбцы переходить на новую строку -->
        <div class="w-100"></div>
      </div>
</div>
</template>
<script>
export default {
  async asyncData({ $axios, params }) {
    try {
      let abiturents = await $axios.$get(`/abiturents/`);
      let abiturent = await $axios.$get(`/abiturents/${params.id}`);
      return { abiturents, abiturent  }
    } catch (e) {
      return { abiturents: [], abiturent: []};
    }
  },
  data({ params }) {
    return {
      abiturents: {
      },
      abiturent: {
      },

    };
  },
    head() {
    return {
      title:  this.abiturent.title,
    };
  },
};
</script>