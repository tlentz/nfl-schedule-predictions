const PRODUCTION = process.env.npm_lifecycle_event === 'build';
const DEVELOPMENT = !PRODUCTION;
const ELM_DEBUG =  process.env.ELM_DEBUG === 'true' ? 'true' : 'false';
const Path = require('path');
const Webpack = require('webpack');
const HtmlWebpackPlugin = require('html-webpack-plugin');
const WepackMd5Hash = require('webpack-md5-hash');
const Autoprefixer = require('autoprefixer');
const ExtractTextPlugin = require('extract-text-webpack-plugin');
const CleanWebpackPlugin = require('clean-webpack-plugin');
const EntryPath = Path.join(__dirname, 'src/static/index.js');
const OutputPath = Path.resolve(Path.join(__dirname, '/dist'));
const PublicPath = '/';
const OutputFilename = PRODUCTION ? '[name]-[hash].js' : '[name].js'
const _ = require('lodash');

const OnlyIn = (test, thing) => {
    if (test) return thing;
}

const IfDevelopment = (thing, other) => {
    return DEVELOPMENT ? thing : other
}

module.exports = {
    devtool: IfDevelopment('eval-source-map', 'cheap-module-source-map'),

    entry: {
        main: [
          'babel-polyfill',
          './src/static/index.js'
        ]
      },
    
    resolve: {
        extensions: ['.ts', '.js', '.json']
    },

    output: {
        filename: IfDevelopment('[name].js', '[name].[chunkhash].js'),
        path: OutputPath,
        publicPath: PublicPath
    },

    module: {
        rules: [{
           test: /\.js$/,
           exclude: /(node_modules|\.min\.|elm-stuff)/,
           use: ['babel-loader'],
        }, {
            test: /\.ts$/,
            exclude: /(node_modules|\.min\.|elm-stuff)/,
            use: ['ts-loader'],
         }, {
           test: /(\.css)$/,
           use: ['style-loader', 'css-loader']
        }, {
            test: /\.sc?ss$/,
            use: [
              'style-loader',
              { loader: 'css-loader',
                options: {  importLoaders: 2 }
              },
              { loader: 'postcss-loader', 
                options: {
                  ident: 'postcss',
                  plugins: (loader) => [
                    require('postcss-import')(),
                    Autoprefixer(),
                  ]
                }
              },
              { loader: 'sass-loader' }
            ],
        }, {
           test: /\.(html|ttf|eot|svg|png|ico|woff|woff2)(\?v=[0-9]\.[0-9]\.[0-9])?$/,
           use: 'file-loader',
        }, {
           test: /\.elm$/,
           use: _.compact([
              OnlyIn(DEVELOPMENT, 'elm-hot-loader'),
              `elm-webpack-loader?debug=${ELM_DEBUG}`
           ]),
           exclude: [/elm-stuff/, /node_modules/],
        }],

        noParse: /\.elm/,
     },

     plugins: _.compact([

        new Webpack.LoaderOptionsPlugin({
          options: {
            postcss: [Autoprefixer()]
          }
        }),
        
        new Webpack.DefinePlugin({
          'process.env.NODE_ENV': JSON.stringify(process.env.NODE_ENV)
        }),
  
        // Outputs main.css in production
        OnlyIn(PRODUCTION, new ExtractTextPlugin('[name].[contenthash].css')),
  
        new Webpack.NoEmitOnErrorsPlugin(),
  
        // Remove build directory
        OnlyIn(PRODUCTION, new CleanWebpackPlugin(['dist'])),
  
        OnlyIn(PRODUCTION, new WepackMd5Hash()),
  
        new HtmlWebpackPlugin({
            inject: false,
            filename: 'index.html',
            template: require('html-webpack-template'),
            appMountId: 'main',
            mobile: true,
            lang: 'en-US',
            title: 'NFL Schedule Predictions',
            links: [],
            xhtml: true,
            hash: false,
            chunks: ['main']
          }),
      ]),

      devServer: {
        inline: true,
        host: 'localhost',
        port: 8080,
        hot: true,
        disableHostCheck: true,
        historyApiFallback: true,
        headers: {
          "Access-Control-Allow-Origin": "*",
          "Access-Control-Allow-Methods": "GET, POST, PUT, DELETE, PATCH, OPTIONS",
          "Access-Control-Allow-Headers": "X-Requested-With, content-type, Authorization"
        },
        stats: {
          colors: true,
          chunks: false,
        }
      }
}