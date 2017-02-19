var gulp = require('gulp');
var sass = require('gulp-sass');
 
gulp.task('sass', function () {
  return gulp.src('./webteam/src/sass/*.sass')
    .pipe(sass().on('error', sass.logError))
    .pipe(gulp.dest('webteam/dist/css'));
});
 
gulp.task('sass:watch', function () {
  gulp.watch('webteam/src/sass/*.sass', ['sass']);
});