var path = require('path');
var sassTrue = require('sass-true');
var importOnce = require('node-sass-import-once');

// get path to test file
var sassFile = path.join(__dirname, 'test.scss');

// add 'stylesheets' and 'test' directories as 'includePaths' so included
// tests, modules and their dependencies can successfully be imported.
// list paths to bower dependencies to use as 'includePaths'.
var sassIncludePaths = [
  './stylesheets/',
  './test/',
  './bower_components/SassyLists/stylesheets/',
  './bower_components/sassy-maps/sass/'
];

// render the test's sass with sassTrue (includes path to true's scss)
// - use mocha's 'describe' and 'it' functions to run sass-true tests
sassTrue.runSass({
  file: sassFile,
  importer: importOnce,
  includePaths: sassIncludePaths,
}, describe, it);