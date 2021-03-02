# ZAM202101
『月刊 ZENKEI AI MAGAZINE 2021年1月号』のレポジトリ

* [Re:VIEW](https://reviewml.org/ja/) を使っています。
* [TechBoosterさんの Re:VIEW テンプレート](https://github.com/TechBooster/ReVIEW-Template) を使っています。


## 公開ページ

* [WEB 版](https://zenkei-ai-forum.github.io/ZAM202101/)
* [PDF 版](https://zenkei-ai-forum.github.io/ZAM202101/ZAM-202101.pdf)

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
