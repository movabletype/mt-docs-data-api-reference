const gulp    = require('gulp')
const connect = require('gulp-connect')
const exec    = require('child_process').exec

const command = 'aglio -i index.md --theme-full-width --theme-variables flatly -o index.html'

gulp.task('connect', function (done) {
  connect.server({
    root: '.',
     livereload: true
  })
  done()
})

gulp.task('reload', function (done) {
  gulp.src('*.md')
    .pipe(connect.reload())
  done()
})

gulp.task('watch', function (done) {
  gulp.watch('*.md', gulp.series('build', 'reload'))
  done()
})

gulp.task('build', function (done) {
  exec(command, (err, stdout, stderr) => {
    if (stdout) console.log(stdout)
    if (stderr) console.log(stderr)
    done(err)
  })
})

gulp.task('default', gulp.parallel('connect', 'watch'))

