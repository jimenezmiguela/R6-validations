
/* Configuration, lesson 4.4, 1/21 */
 /* add Bootstrap to the environment */
// edit config/webpack/environment.js,
const { environment } = require('@rails/webpacker')
const webpack = require("webpack")
environment.plugins.append("Provide", new webpack.ProvidePlugin({
  $: 'jquery',
  jQuery: 'jquery',
  Popper: ['popper.js', 'default']
}))

module.exports = environment




// substituted for above for lesson 4.4
// const { environment } = require('@rails/webpacker')
//
// module.exports = environment
