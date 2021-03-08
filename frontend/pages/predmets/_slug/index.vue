<template>
    <div class="row justify-content-center mt-2">
      <div class="col-6 col-sm-3 mb-2">
            <form action="javascript:history.go(-1)" class="mt-2 mb-2">
              <button class="btn btn-outline-success my-2 my-sm-0">Назад</button>
            </form>
      </div>
        <div class="col-9">      
            <p class="center">{{predmet.title}}</p>
            <hr>
            <p v-html="predmet.text"></p>
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
        let predmet = await $axios.$get(`/predmets/${params.slug}`);

        return { predmets, predmet}
    } catch (e) {
      return { predmets: [], predmet: [] };
    }
  },
  data({ params }) {
    return {
      predmets:{

      },
      predmet:{

      },

    };
  },
    head() {
    return {
      title: this.predmet.title,
    };
  },
};
</script>