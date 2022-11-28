const path = require('path');

module.exports = {
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
  }
};
