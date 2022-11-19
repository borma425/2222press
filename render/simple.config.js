
const path = "EMPTY_PATH";
// if you have a child theme just Enter The name :
const childPath = "../../../../ThemeName-child/"; 

module.exports = {
  important: true, // optional
  content: [

    path + "*.{php,js}",
    path + "**/*.php",
    path + "**/*.{php,js}",
    path + "*/*.{php,js}",
    path + "*/**/*.{php,js}",

    childPath + "*.{php,js}",
    childPath + "**/*.php",
    childPath + "**/*.{php,js}",
    childPath + "*/*.{php,js}",
    childPath + "*/**/*.{php,js}",


],
  theme: {
    extend: {


    },
  },
  plugins: [],
}
