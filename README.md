# Aleksi

Aleksi is a collection of Sass helper functions and mixins. It bundles other libraries and provides its own functions and mixins on top.

The russian firstname *Aleksi* means *helper of man*.

## Installation

### RubyGem & Compass

Open the Terminal and install the ruby gem:

    gem install sass-aleksi

Require gem in your compass project configuration file

    require sass-aleksi;

Import files in your project's stylesheets

    @import "aleksi";

### Bower

Open the Terminal, `cd` to your project folder and enter the following command:

    bower install sass-aleksi --save

Import files in your project's stylesheets

    @import "path/to/bower_components/sass-aleksi/aleksi";

## Dependencies and Bundling

Aleski requires Compass and will import only the needed parts from compass. Additionally, it depends on the following Sass/Compass extensions:

+ [Sass (~> 3.3)](https://github.com/sass/sass)
+ [SassyLists (~> 2.2)](https://github.com/at-import/SassyLists)
+ [Sassy-Maps (0.4.0)](https://github.com/at-import/Sassy-Maps/)

These extensions are bundled with Aleksi, adding `@import "aleksi";` to your stylesheet will give you access to all their functionalities. Be sure to check out their respective documentations to take the most out of Aleksi.
