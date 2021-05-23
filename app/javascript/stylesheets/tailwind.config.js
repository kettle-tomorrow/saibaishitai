module.exports = {
  purge: [],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      backgroundImage: theme => ({
         'yasai': "url('/assets/yasai.jpg')",
      })
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
}
