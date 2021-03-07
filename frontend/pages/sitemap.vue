<template>
<ul>
    <strong><p class="center mt-2">Карта сайта СМК</p></strong>
    <template v-for="article in max_tab">
    <div :key="article.url">
      <li class="nav-item dropdown">
          <a class="nav-link" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="color: black;">
                  {{article.title}}
            </a>
                <a v-for="item in tab" :key="item.url" >
                  <nuxt-link class="dropdown-item" v-if="item.name_tab.title===article.title" :to="`/${item.name_tab.sections}/${item.slug}`">{{item.title}}</nuxt-link>
                </a>
        </li>
    </div>
    </template>
</ul>
</template>
<script>
  export default {
    head(){
      return {
      title: "Карта сайта",
      };
    },
  
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