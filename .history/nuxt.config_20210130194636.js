modules: [
  '@nuxtjs/axios',
  '@nuxtjs/auth'
]

auth: {
  redirect: {
      login: '/users/login',
      logout: '/',
      callback: false,
      home: '/users/profile',
  },
  strategies: {
    local: {
      endpoints: {
        login: { url: '/api/v1/auth/login', method: 'post', propertyName: 'token' },
        logout: { url: '/api/v1/auth/logout', method: 'post' },
        user: false,
      },
    }
  }
}