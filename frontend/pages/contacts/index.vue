<template>
<div>
      <div class="row justify-content-center mt-2">
      <div class="col-6 col-sm-3 mb-2 size-navbar-text">
        <MenuContats />
      </div>
        <div class="col-9">
            <template v-for="article in contacts">
              <div :key="article.id">        
                <p class="center">{{article.contact_title}}</p>
                <hr>
                <p class="size-navbar-text" v-html="article.text"></p>
                </div>
             </template>
        </div>
      
        <!-- Заставит следующие столбцы переходить на новую строку -->
        <div class="w-100"></div>
      </div>
</div>
</template>

<script>
export default {
  head() {
    return {
      title: "Контакты"
    };
  },
    async asyncData({ $axios, params }) {
    try {
      let contacts = await $axios.$get(`/contacts/`);
      return { contacts  };

    } catch (e) {
      return { contacts: [] };
    }
  },
  data() {
    return {
      contacts : [],
    };
  },
};
</script>