<articles>

	<ul>
		<li each='{ list }'>
			<a href="/{ url }" onClick={ listClick }">{ title }</a>
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
		li::before {
			display: block;
			content: "";
			position: absolute;
			top: 14px;
			left: 48%;
			border: 12px solid transparent;
			border-bottom: 14px solid #fff;
			transition: .3s;
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
			console.log(this);
		}
	</script>
</articles>