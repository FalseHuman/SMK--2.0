<!--<template>
<div>
        <div class="col-9">      
            <p v-if="tab.name_tab.title==tabs.title" class="center">{{tab.title}}</p>
            <hr>
            <p v-html="tab.body"></p>
        </div>
</div>
</template>-->
<template>
<div>
      <div class="row justify-content-center mt-2">
      <div class="col-6 col-sm-3 mb-2 size-navbar-text">
          <div class="list-group text-wrap block size-navbar-tex">
            <template v-for="i in url">
              <div  :key="i.url">
                <div v-if="tab.name_tab.title==i.name_tab.title">
                  <nuxt-link exact no-prefetch active-class="active" class="list-group-item list-group-item-action text-center" :to="`/${i.name_tab.sections}/${i.slug}`">{{i.title}}</nuxt-link>
                </div>
                </div> 
            </template>
          </div>
      </div>
        <div class="col-9">      
            <p v-if="tab.name_tab.title==tabs.title" class="center">{{tab.title}}</p>
            <hr>
            <p class="size-navbar-text" v-html="tab.body"></p>
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
      let url = await $axios.$get(`/tabs_name`);
      let tabs = await $axios.$get(`/tab/${params.sections}`);
      let tab = await $axios.$get(`/tabs_name/${params.slug}`);
      //console.log(abiturent)
      return {  tabs, tab, url  }
    } catch (e) {
      return {  tabs: [], tab:[], url:[]};
    }
  },
  data({ params }) {
    return {
      tabs: {
      },
      tab:{

      },
      url:{

      }
    };
  },
    head() {
    return {
      title:  this.tab.title,
    };
  },
};
</script>