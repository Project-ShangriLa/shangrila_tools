#ShangriLa Script Tools


## generate_nico_script.rb

アニメタイトルを元にnico(Twitter画像収集クローラー)の起動スクリプトを生成します。

### デフォルト起動（basesマスターにあるすべてのタイトルを検索キーとします)

```
 ruby generate_nico_script.rb
```

### 放送クールを指定

```
 ruby generate_nico_script.rb -c 4
```

### 放送クールを複数指定

```
 ruby generate_nico_script.rb -c 2,3,4,5
```

### jarを指定

```
$ ruby generate_nico_script.rb -c 4 -n nico_jvm7.jar
#!/bin/sh
java -jar nico_jvm7.jar "sora_no_method,天体のメソッド,sorameso,shigatsuhakimi,四月は君の嘘,君嘘,Fate_SN_Anime,Fate/stay night,fate_sn_anime ,daito_anime,大図書館の羊飼い,daitoanime,psychopass_tv,PSYCHO-PASS サイコパス 2,pp_anime,amaburiANIME,甘城ブリリアントパーク,amaburi,nhk_loghorizon,ログ・ホライズン(2期),loghorizon,orefuroTV,オレん家のフロ事情,orefuroTV,ChaikaTrabant,棺姫のチャイカ(2期),棺姫のチャイカ,anime_garo,牙狼〈GARO〉-炎の刻印-,anime_garo,ai_tenchi,愛・天地無用！,ai_tenchi,_terraformars,テラフォーマーズ,terraformars ,anime_denkigai,デンキ街の本屋さん,#denkigai,yowapeda_anime,弱虫ペダル GRANDE ROAD,yp_anime,SHG_Official,Hi ☆ sCoool ! セハガール,セハガール,buildfighters,ガンダムビルドファイターズトライ,g_bf,gugukoku_anime,繰繰れ！コックリさん,gugukoku,selector_anime,selector spread WIXOSS,selector_anime,gundam_reco,ガンダム Gのレコンギスタ,gレコ,TrinitySeven_PR,トリニティセブン,トリニティセブン ,inou_PR,異能バトルは日常系のなかで,異能バトル,gf_anime,ガールフレンド（仮）,gf_anime,madan_anime,弾の王と戦姫,blade_anime,donten_pr,曇天に笑う,donten,7_taizai,七つの大罪, 七つの大罪,waremete_anime,失われた未来を求めて,waremete_anime,kiseiju_anime,寄生獣 セイの格率,kiseiju_anime,grisaia_anime,グリザイアの果実,grisaia,anime_yukiyuna,結城友奈は勇者である,yuyuyu,anime_crossange,クロスアンジュ 天使と竜の輪舞,クロスアンジュ,shirobako_anime,SHIROBAKO,musani,ore_twi_anime,俺、ツインテールになります。,ore_twi,ookamishojo_tv,オオカミ少女と黒王子,ookamishojo,Anime_W_Trigger,ワールドトリガー,ワールドトリガー,bahamut_genesis,神撃のバハムート GENESIS,bahamut_genesis,anime_danna,旦那が何を言っているかわからない件,ダンナ,mushishi_anime,蟲師 続章 (後半エピソード),zantero,yona_anime,暁のヨナ,暁のヨナ"
```
