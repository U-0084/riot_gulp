var riot = require('riot');

riot.compile(() => {

  riot.mount ('*');

  const subRoute = riot.route.create();
  const Route = riot.router.Route,
        DefaultRoute = riot.router.DefaultRoute,
        NotFoundRoute = riot.ruoter.NotFoundRoute,
        RedirectRoute = riot.router.RedirectRoute;

  riot.router.routes([
    new DefaultRoute({
      tag: '/tag/home'
    }),
  ]);
});

riot.route('/', name => {
  riot.route('/home');
});

riot.route.start(true);
