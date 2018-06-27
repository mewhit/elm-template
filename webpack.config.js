
var path = require("path");
module.exports = {
    entry: {
        app: [
          './src/static/index.js'
        ]
      },
    output: {
        path: path.resolve(__dirname + '/dist'),
        filename: 'app.js'
    },
    module:
    {
        rules: [
            {
              test:    /\.elm$/,
              exclude: [/elm-stuff/, /node_modules/],
              loader: 'elm-webpack-loader?verbose=true&warn=true&debug=true',
            },
            {
              test: /\.html$/,
              exclude: /node_modules/,
              loader: 'file-loader?name=[name].[ext]',
            },
            {
              test: /\.(png|woff|woff2|eot|ttf|svg|jpg)(\?v=[0-9]\.[0-9]\.[0-9])?$/,
              loader: 'url-loader',
            },
            {
              test: /\.(png|woff|woff2|eot|ttf|svg|jpg)(\?v=[0-9]\.[0-9]\.[0-9])?$/,
              loader: 'file-loader',
            }
        ],
        noParse: /\.elm$/,
    },
    resolve: {
        extensions: ['.js', '.elm']
    },
    devServer: { inline: true }
}
