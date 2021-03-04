# ZAM202101
『月刊 ZENKEI AI MAGAZINE 2021年1月号』のレポジトリ

* [Re:VIEW](https://reviewml.org/ja/) を使っています。
* [TechBoosterさんの Re:VIEW テンプレート](https://github.com/TechBooster/ReVIEW-Template) を使っています。


## 公開ページ

* [WEB 版](https://zenkei-ai-forum.github.io/ZAM202101/)
* [PDF 版](https://zenkei-ai-forum.github.io/ZAM202101/ZAM202101-v2.pdf)

---

## ビルド方法

前提条件として [docker hub の Re:VIEW イメージ（vvakameさん）](https://hub.docker.com/r/vvakame/review/) が入っている環境を想定しています。

* PDF を作る場合

<pre>$ docker-compose run --rm review rake pdf</pre>
これで `ZAM-202101.pdf` ができてるはず。

* EPUB を作るとき

<pre>$ docker-compose run --rm review rake epub</pre>
これで `ZAM-202101.epub` ができてるはず。

* WEB ページを作りたいとき

<pre>$ docker-compose run --rm review rake web</pre>
これで `webroot` フォルダができてるはず。

---

## コメント

### 目次用の章タイトルの設定方法について

今回の３章のように、章のタイトルを本文ではイラストにしてテキストを空白にした場合に、それでも目次やヘッダー用に文字で入れたい時があります。

LaTeX にはこのような時のために、章や節の宣言を書く時に
> \chapter[目次用のタイトル]{本文用のタイトル}

とオプショナルな鍵カッコを付けてその中に目次用のタイトルを指定できます。

Re:VIEW で同様のことを行う方法が分からなかったので[ツイッターで質問](https://twitter.com/ichiki_k/status/1363016520603852805)したら、 Re:VIEW 作者直々に返事が来た。

@ichiki_k
> Re:VIEW https://reviewml.org/ja/ 使いの人に聞きたいのですが、章や節のタイトルで LaTeX でいうところの \section[toc-title]{sec-title} のように目次用のタイトル toc-title 入れる方法って、ないのでしょうか？

@kmuto
> Re:VIEWの文法では対処できないので、後処理で書き換えることになりますね。 [https://review-knowledge-ja.readthedocs.io/ja/late...](https://review-knowledge-ja.readthedocs.io/ja/latest/latex/tex-hook.html#cb8c73330fb9be42db3860e9b0e8e092)

上記ドキュメント [フックで LaTeX 処理に割り込む ＞ フックの例 ＞ 見出しの折り返し](https://review-knowledge-ja.readthedocs.io/ja/latest/latex/tex-hook.html#cb8c73330fb9be42db3860e9b0e8e092) に従って `hook_beforetexcompile.rb` を書いて、今回は対応してみました。

（ちなみに WEB 版は、なにも考えずに出力した HTML ソースを直接編集して対応しました。）
