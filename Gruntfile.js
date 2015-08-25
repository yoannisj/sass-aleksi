module.exports = function(grunt) {

  // Modules
  grunt.loadNpmTasks('grunt-contrib-sass');
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('bootcamp');

  // Grunt Tasks
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),

    // Sass
    sass: {
      test: {
        options: {
          style: 'expanded',
          quiet: true,
          compass: true,
          sourcemap: 'none',
          loadPath: [
            './node_modules/bootcamp/dist',
            './stylesheets'
          ],
          require: [
            'compass/import-once/activate',
            'SassyCast',
            'SassyStrings',
            'sassy-math',
            'SassyLists',
            'sassy-maps',
          ]
        },
        files: {
          './tmp/results.css': './tests/tests.scss'
        }
      }
    },

    // Bootcamp
    bootcamp: {
      test: {
        files: {
          src: ['./tmp/results.css']
        }
      }
    },

    // Watch
    watch: {
      dist: {
        files: ['./**/*.scss'],
        tasks: ['sass', 'bootcamp']
      }
    }
  });

  // Tasks
  grunt.registerTask('default', ['sass', 'bootcamp', 'watch']);
  grunt.registerTask('test',    ['sass:test', 'bootcamp']);

};