const path = require('path');

module.exports = {
  mode: 'development',
  entry: ['./src/assets/main.js'],
  output: {
    filename: 'main.js',
    path: path.resolve(__dirname, 'docs', 'assets'),
  },
  module: {
    rules: [
      {
        test: /\.css$/,
        use: ["style-loader", "css-loader"],
      },
    ]
  },
  devServer: {
    allowedHosts: 'all',
    static: {
      directory: path.join(__dirname, 'docs')
    }
  }
};
