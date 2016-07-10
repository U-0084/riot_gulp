import gulp from 'gulp';

import BrowserSync from 'browser-sync';

const browserSync = BrowserSync.create();
const reload = browserSync.reload;

gulp.task('browser-sync', () => {
  browserSync.init({
    server: {
      baseDir: './'
    },
    port: 9000,
    open: 'external'
  })
});

gulp.task('default', ['browser-sync'], () => {

});