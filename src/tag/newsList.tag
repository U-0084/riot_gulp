<newsList>
  <div>
    <h2>{ title }</h2>
    <ul class="js-news__list">
      <li each={ item, i in items }>
        <p class="news__list__txt">{ item.date }</p>
        <a href="{ item.url }">{ item.text }</a>
      </li>
    </ul>
    <p class="news__list__push" onClick={ push }>メルマガ登録</p>
  </div>

  <style scoped>
    :scope {
      display: block;
    }
    div {
      width: 200px;
      padding: 20px;
      color: #666;
      border: 1px solid #ddd;
      background-color: #f5f5f5;
    }
    h2 {
      font-size: 18px;
      text-align: center;
    }
    ul {
      margin-top: 10px;
    }
    li {
      padding: 20px 0;
      border-top: 1px solid #ddd;
    }
    .news__list__txt {
      font-size: 12px;
    }
    a {
      display: block;
      color: #41c7ff;
      font-size: 12px;
    }
    .news__list__push {
      padding: 6px 10px;
      color: #fff;
      text-align: center;
      background-color: #41c7ff;
      border-bottom: 4px solid #0785b6;
      border-radius: 20px;
    }
    .news__list__push:active {
      position: relative;
      margin-top: 4px;
      border: none;
    }
  </style>

  <script>
    this.title = 'お知らせ';
    this.items = [
      {
        date: '2016/07/23',
        text: '終わりました。違う意味で。',
        url: '/20160723/'
      },
      {
        date: '2016/07/22',
        text: '明日はFW勉強会です。ポケモンgo楽しい。',
        url: '/20160722/'
      },
      {
        date: '2016/07/21',
        text: '明後日は勉強会です。ぼちぼち資料作りを始めようと思いました。',
        url: '/20160722/'
      },
      {
        date: '2016/07/20',
        text: '明々後日は勉強会です。まだ3日あるし明日やれば間に合う気がした。',
        url: '/20160722/'
      }
    ];

    push(e) {
      e.preventDefault();
      var $overlay = $('.js-overlay'),
          $form = $('.js-mailMagazine');

      $overlay.add($form).fadeToggle(400);
    }
  </script>
</newsList>