import gulp from 'gulp';

import riot from 'riot';
import runSequence from 'run-sequence';
import BrowserSync from 'browser-sync';

const browserSync = BrowserSync.create();
const reload = browserSync.reload;


const path = {
  html: {
    src: './**/*.html',
    watch: './**/*.html'
  },
  css: {
    watch: './assets/css/*.css'
  },
  tag: {
    src: './src/tag/*.tag',
    dist: 'dest/'
  }
}

gulp.task('browser-sync', () => {
  browserSync.init({
    server: {
      baseDir: './'
    },
    port: 9000,
    open: 'external'
  })
});


 gulp.task('riot', () => {
  gulp.src(path.tag.src)
    .pipe(riot())
    .pipe(gulp.dest(path.tag.dist));
 });


gulp.task('default', ['browser-sync'], () => {
  gulp.watch(path.tag.src).on('change', reload);
  gulp.watch(path.html.watch).on('change', reload);
  gulp.watch(path.css.watch).on('change', reload);
});