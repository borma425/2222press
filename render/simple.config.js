
const path = "EMPTY_PATH";

module.exports = {
  important: true, // optional
  content: [

    path + "*.{php,js}",
    path + "**/*.php",
    path + "**/*.{php,js}",
    path + "*/*.{php,js}",
    path + "*/**/*.{php,js}",


],
  theme: {
    extend: {


    },
  },
  plugins: [],
}
