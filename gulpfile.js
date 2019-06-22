const gulp    = require('gulp')
const connect = require('gulp-connect')
const exec    = require('child_process').exec

const getCommand = (version) => {
  return `aglio -i ${version}/index.md --theme-full-width --theme-variables flatly -o ${version}-reference.html`
}

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
  gulp.watch('v3/*.md', gulp.series('build-v3', 'reload'))
  gulp.watch('v4/*.md', gulp.series('build-v4', 'reload'))
  done()
})

gulp.task('build-v2', (done) => {
  const command = getCommand('v2')
  exec(command, (err, stdout, stderr) => {
    if (stdout) console.log(stdout)
    if (stderr) console.log(stderr)
    done(err)
  })
})

gulp.task('build-v3', (done) => {
  const command = getCommand('v3')
  exec(command, (err, stdout, stderr) => {
    if (stdout) console.log(stdout)
    if (stderr) console.log(stderr)
    done()  // ignore errors now
  })
})

gulp.task('build-v4', (done) => {
  const command = getCommand('v4')
  exec(command, (err, stdout, stderr) => {
    if (stdout) console.log(stdout)
    if (stderr) console.log(stderr)
    done(err)
  })
})

gulp.task('build', gulp.parallel('build-v2', 'build-v3', 'build-v4'))

gulp.task('default', gulp.parallel('connect', 'watch'))

