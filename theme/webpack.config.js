const path = require('path');
const mode = process.env.NODE_ENV || 'development';

module.exports = {
    entry: path.resolve(__dirname, '_scripts/index.js'),
    resolve: {
        extensions: ['.js', '.svelte']
    },
    output: {
        filename: 'app.js',
        path: path.resolve(__dirname, 'assets')
    },
    watchOptions: {
        ignored: /(site|node_modules)/
    },
    module: {
        rules: [{
            test: /\.js$/,
            exclude: /node_modules/,
            use: ['import-glob-keyed']
        }, {
            test: /\.svelte$/,
            exclude: /node_modules/,
            use: [{
                loader: 'svelte-loader',
                options: {
                    hydratable: true
                }
            }]
        }]
    },
    mode,
    devtool: mode === 'production' ? false : 'source-map'
};