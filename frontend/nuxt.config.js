export default {
  // Global page headers: https://go.nuxtjs.dev/config-head
  build: {
    vendor: ['axios', '~assets/bower_components/jquery/dist/jquery.js', '~assets/bower_components/bootstrap/dist/js/bootstrap.js']
  },
  head: {
    title: 'Салаватский медицинский колледж',
    htmlAttrs: {
      lang: 'ru'
    },
    script: [
      {
        src: 'https://code.jquery.com/jquery-3.2.1.slim.min.js'
      },
      {
        src: 'https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js'
      },
      {
        src: 'https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js'
      },
    ],
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
      { hid: 'description', name: 'description', content: '' }
    ],
    link: [
      { rel: 'icon', type: 'image/x-icon', href: '/index.png' },

    ]
  },

  // Global CSS: https://go.nuxtjs.dev/config-css
  css: [
  ],

  // Plugins to run before rendering page: https://go.nuxtjs.dev/config-plugins
  plugins: [
  ],

  // Auto import components: https://go.nuxtjs.dev/config-components
  components: true,

  // Modules for dev and build (recommended): https://go.nuxtjs.dev/config-modules
  buildModules: [
  ],

  // Modules: https://go.nuxtjs.dev/config-modules
  modules: [
    // https://go.nuxtjs.dev/bootstrap
    'bootstrap-vue/nuxt',
    '@nuxtjs/axios',
  ],
  axios: {
    baseURL: "http://localhost:8000/api"
  },

  // Build Configuration: https://go.nuxtjs.dev/config-build
  build: {
  }
}
