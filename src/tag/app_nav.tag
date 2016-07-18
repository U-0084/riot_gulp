<app_nav>

	<ul>
		<li each='{ list, i in list }'>
			<a href="/#{ list.url }" onClick={ listClick }">{ list.title }</a>
		</li>
	</ul>

	<style scoped>
		:scope {
			display: block;
		}
		ul {
			display: flex;
			justify-content: space-around;
			margin: 0;
			padding: 10px 0;
			background-color: #fc0e49;
		}
		li {
			position: relative;
			width: 33%;
		}
		a {
			display: block;
			color: #fff;
			text-decoration: none;
			text-align: center;
		}
		a:hover {
			cursor: pointer;
			text-decoration: underline;
		}
	</style>

	<script>
		const self = this;

		self.list = [
			{
				url: 'about',
				title: 'about'
			},
			{
				url: 'usecase',
				title: 'usecase'
			},
			{
				url: 'summary',
				title: 'summary'
			}
		];

		listClick(e) {
			console.log(self);
		}
	</script>
</app_nav>