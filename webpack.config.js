const path = require("path");
const webpack = require("webpack"); 
const MiniCssExtractPlugin = require("mini-css-extract-plugin");

const outputPath = "public/";

module.exports = (env = {}, argv) => {
  const isProduction = argv.mode === "production";
  console.log("isProduction", isProduction);
  let config = {
    context: path.resolve(__dirname, "./"),
    entry: {
      app: ["./src/js/app.js"],
    },
    plugins: [
      new MiniCssExtractPlugin({}),
      new webpack.ProvidePlugin({
        $: "jquery",
        jQuery: "jquery",
        "window.jQuery": "jquery",
      }),
      
    ],
    output: {
      path: path.resolve(__dirname, outputPath),
      publicPath: "",
      filename: "./[name].js",
    },
    devtool: "source-map",

    module: {
      rules: [
        {
          test: /\.js$/,
          exclude: /node_modules/,
          use: {
            loader: "babel-loader",
            options: {
              presets: ["@babel/preset-env"],
            },
          },
        },
        {
          test: /\.scss$/,
          exclude: /node_modules/,
          use: [
            {
              loader: "file-loader",
              options: { name: "[name].min.css" },
            },

            {
              loader: "postcss-loader",
              options: {
                sourceMap: true,
              },
            },
            {
              loader: "sass-loader",
              options: { sourceMap: true },
            },
          ],
        },
        {
          test: /\.css$/,
          exclude: /@fontawesome/,
          use: [MiniCssExtractPlugin.loader, "css-loader", "postcss-loader"],
        },
        {
          test: /\.css$/,
          include: /@fontawesome/,
          use: [
            {
              loader: "file-loader",
              options: {
                name: "[name].[ext]",
              },
            },
          ],
        },
        {
          test: /\.(gif|png|jpe?g|svg)$/i,
          exclude: /node_modules/,
          use: [
            {
              loader: "file-loader",
              options: {
                name: "[path][name].[ext]",
              },
            },
            {
              loader: "image-webpack-loader",
              options: {
                //disable: false,
                mozjpeg: {
                  //progressive: true,
                  //quality: 15,
                  //quality: 100
                },
                optipng: {
                  enabled: false,
                },
                pngquant: {
                  quality: [0.65, 0.9],
                  speed: 4,
                },
                gifsicle: {
                  interlaced: false,
                },
                webp: {
                  quality: 75,
                },
              },
            },
          ],
        },
        
      ],
    },
  };
  return config;
};
