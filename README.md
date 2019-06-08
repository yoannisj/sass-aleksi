# Aleksi

Aleksi is a collection of Sass helper functions and mixins. It bundles other libraries and provides its own functions and mixins on top.

The russian firstname *Aleksi* carries the meaning *helper of man*.

**CAUTION**: this library is still in beta, and the API may change before it reaches its first stable release. Use with caution, and make sure you check the documentation when updating.

## Installation

### NPM

Open the Terminal and install the node package:

    npm install sass-aleksi --save-dev

### Bower

Open the Terminal, `cd` to your project folder and enter the following command:

    bower install sass-aleksi --save

Import files in your project's stylesheets

    @import "path/to/bower_components/sass-aleksi/aleksi";

## Usage

Aleksi relies on a custom sass importer, to import stylehseet files only once.

### Eyeglass

This can be done using [eyeglass](https://www.npmjs.com/package/eyeglass)'s importer: 

    var sass = require('node-sass');
    var eyeglass = require('eyeglass');
    sass.render(eyeglass({
        /* .. */
        eyeglas: {
            modules: [
                {
                    path: './node_modules/sass-aleksi'
                }
            ],
            engines: {
                sass: sass
            }
        },
    }), function(err, res) { /* ... */ });

### Custom importer

Alternatively, you can use something like [node-sass-import-once](https://www.npmjs.com/package/node-sass-import-once), and add aleksi's stylesheets path to sass's `loadPaths` option:

    var sass = require('node-sass');
    var importOnce = require('node-sass-import-once');
    sass.render({
        /* .. */
        importer: importOnce,
        loadPaths: [
            './node_modules/sass-aleksi/stylesheets',
        ]
    }, function(err, res) { /* ... */ });

Now you can import aleksi's stylesheets in your sass files using the `aleksi` prefix:

    @import "aleksi/lengths/to-rem";
    body {
        font-size: to-rem(12px, 16px);
    }

## API

Read about the utility functions offered by sass aleksi on the [documentation site](https://yoannis.com/code/sass-aleksi/docs).
