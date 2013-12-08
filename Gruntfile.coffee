module.exports = (grunt) ->

  grunt.loadNpmTasks 'grunt-coffeelint'
  grunt.loadNpmTasks 'grunt-concurrent'
  grunt.loadNpmTasks 'grunt-contrib-connect'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.registerTask 'default', ['concurrent:dev']
  grunt.registerTask 'build', ['coffee']
  grunt.registerTask 'lint', ['coffeelint']
  grunt.registerTask 'test', ['coffeelint'] ## todo

  grunt.initConfig

    coffee:
      compile:
        files:
          'www/js/app.js': ['www/coffee/app.coffee']
          'www/js/controllers.js': ['www/coffee/controllers.coffee']

    connect:
      server:
        options:
          port: 9001
          base: 'www'
          keepalive: true

    watch:
      options:
        livereload: true
      js:
        files: ['www/coffee/*']
        tasks: ['coffee']
        options:
          atBegin: true
      all:
        files: [
          'www/*'
          'www/css/**/*'
          'www/partials/**/*'
        ]

    concurrent:
      dev: ['connect:server', 'watch']
      options:
        logConcurrentOutput: true

    coffeelint:
      app: ['www/coffee/**/*']
      options: grunt.file.readJSON('coffeelint.json')
