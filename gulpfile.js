const gulp    = require('gulp')
const connect = require('gulp-connect')
const exec    = require('child_process').exec

gulp.task('connect', function (done) {
  connect.server({
    root: './docs/',
    livereload: true
  })
  done()
})

gulp.task('start-dev-server', gulp.parallel('connect', 'watch'))
