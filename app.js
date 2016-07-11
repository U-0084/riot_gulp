const route = require('./assets/tag/app_logo');

const Route = riot.router.Route,
      DefaultRoute = riot.router.DefaultRoute,
      NotFoundRoute = riot.router.NotFoundRoute,
      RedirectRoute = riot.router.RedirectRoute;


riot.router.routes([
  new DefaultRoute({tag: 'home'}),
  new Route({tag: 'about'}),
  new Route({tag: 'users'}).routes([
     new Route({
      path:'top',
      tag: 'users-home',
      api: {
        text: 'Select a top user'
      }}),
     new Route({
      path: '/user/:userId',
      tag: 'user'
    }),
     new DefaultRoute({tag: 'users-home', api: {text: 'Select a user'}}),
     new NotFoundRoute({tag: 'not-found'})
   ]),
  new NotFoundRoute({tag: 'not-found'}),
  new RedirectRoute({from: 'company', to: 'about'}),
  new RedirectRoute({from: 'u', to: 'users/user'})
]);


riot.render(route);



riot.compile(() => {
  let tags = riot.mount('*');
});

hljs.initHighlightingOnLoad();