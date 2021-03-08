<template>
    <div class="row justify-content-center mt-2">
      <div class="col-6 col-sm-3 mb-2">
            <!--<form action="javascript:history.go(-1)" class="mt-2 mb-2">
              <button class="btn btn-outline-success my-2 my-sm-0">Назад</button>
            </form>-->
      </div>
      <div class="col-9">
        <p class="text-center">Дистанционное обучение</p>
        <hr>
      <template v-for="(predmet, i) in predmets">
        <div :key="i.url">
            <div  class="dropdown">
                <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    {{predmet.title}}
                </a>

                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                    <nuxt-link class="dropdown-item" :to="`predmets/${predmet.slug}`">{{predmet.group.title}}</nuxt-link>
                </div>
            </div>
            <br>    
        </div>
      </template>
      </div>
        <!-- Заставит следующие столбцы переходить на новую строку -->
        <div class="w-100"></div>
      </div>
</template>
<script>
export default {
  async asyncData({ $axios, params }) {
    try {
        let predmets = await $axios.$get(`/predmets/`);

        return { predmets}
    } catch (e) {
      return { predmets: [] };
    }
  },
  data({ params }) {
    return {
      predmets:{

      },

    };
  },
    head() {
    return {
      title: 'Домашняя работа',
    };
  },
};
</script>