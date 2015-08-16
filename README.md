#ShangriLa Script Tools

ShangriLa APIを使用したツール群

## gen_twitter_search_words.rb

Twitter Streaming APIに渡す検索キーワードリストを生成します

```
 bundle exe ruby gen_twitter_search_words.rb 2015 3
```

出力

```
"おくさまが生徒会長！,おくさまが生徒会長！,anime_okusama,おくさま,ケイオスドラゴン 赤竜戦役,ケイオスドラゴン,chaosdragon_red,chaos_anime,乱歩奇譚 Game of Laplace,乱歩奇譚,rampokitan,乱歩奇譚,青春×機関銃,aoharu_anime,aoharu_anime,城下町のダンデライオン,ダンデライオン,dande_anime,dande_anime,うしおととら,うしおととら,Ushitora_TV,ushitora,ミス・モノクローム-The Animation-(第2期),ミス・モノクローム,モノクローム,monochro_staff,モノクローム,うーさーのその日暮らし 夢幻編,うーさーのその日暮らし,PR_wooser,うーさー,わかば＊ガール,わかばガール,wakaba_anime,wakaba_girl,Classroom☆Crisis,クラクラ,clcr_project,クラクラ,デュラララ!!×2 転,デュラララ!!,デュラララ,drrr_anime,drrr_anime,WORKING!!!,WORKING,ワーキン,Wagnaria,wagnaria,六花の勇者,六花の勇者,rokka_anime,rokka_anime,VENUS PROJECT ―CLIMAX―,VENUS PROJECT,formula_venus,F_VENUS,ワカコ酒,ワカコ酒,anime_wakakozak,ワカコ酒,ゴッドイーター,ゴッドイーター,god_eater_anime,GEanime,ガッチャマン クラウズ インサイト,ガッチャマン クラウズ,ガッチャマン,GATCHAMANCrowds,クラウズ,To LOVEる-とらぶる-ダークネス 2nd,To LOVEる-とらぶる-ダークネス,とらぶる,toloveru_com,toloveru_d,赤髪の白雪姫,赤髪の白雪姫,akagami_anime,akagami_anime,てーきゅう(第5期),てーきゅう,te_kyu,てーきゅう,実は私は,実は私は,jitsuwata_anime,jw_anime,のんのんびより りぴーと,のんのんびより,nonnontv,なのん,ミリオンドール,ミリオンドール,million_doll,ミリオンドール,それが声優！,それが声優,soresei_anime,それが声優,ビキニ・ウォリアーズ,ビキニ・ウォリアーズ,bikiniwarriors,ビキニウォリアーズ,空戦魔導士候補生の教官,空戦魔導士,kusen_official,kusen,干物妹！うまるちゃん,うまるちゃん,umaru_anime,umaru_anime,がっこうぐらし,がっこうぐらし,gakkou_gurashi,がっこうぐらし,だんちがい,だんちがい,anime_danchi,だんちがい,アイドルマスター シンデレラガールズ 2nd SEASON,シンデレラガールズ,デレマス,モバマス,imas_anime,imas_cg,Fate/kaleid liner プリズマイリヤ ツヴァイ ヘルツ！,プリズマイリヤ,prisma_illya,prisma_illya,GATE 自衛隊 彼の地にて、斯く戦えり,ゲート,GATE,gate_anime,gate_anime,ドラゴンボール超,ドラゴンボール,DB_super2015,ドラゴンボール,枕男子,枕男子,makuranodanshi,枕男子,純情ロマンチカ3,純情ロマンチカ,marukawashoten,純ロマ,モンスター娘のいる日常,モン娘,monmusu_tv,モン娘,GANGSTA.,ギャングスタ,GANGSTA_Project,ギャングスタ,Charlotte(シャーロット),シャーロット,Charlotte_AB_,シャーロット ,監獄学園(プリズンスクール),プリズンスクール),prison_anime,プリズン,アクエリオンロゴス,アクエリオンロゴス,AQlogos,aqlogos,下ネタという概念が存在しない退屈な世界,下セカ,shimoseka,shimoseka,戦姫絶唱シンフォギアGX,シンフォギア,SYMPHOGEAR,symphogear,ヘタリア The World Twinkle,ヘタリア,animehetalia,ヘタリア,オーバーロード,オーバーロード,over_lord_anime,overlord_anime"
------------
264
------------
```
