riot.compile(function() {

  riot.mount('*');

  const Route = riot.router.Route,
        DefaultRoute = riot.router.DefaultRoute,
        NotFoundRoute = riot.router.NotFoundRoute,
        RedirectRoute = riot.router.RedirectRoute;

  riot.router.routes([
    new DefaultRoute({tag: 'home'}),
    new NotFoundRoute({tag: '/src/tag/not-found'}),
    new Route({path: '/about', tag: '/src/tag/home'})
  ]);

  riot.router.start();
});