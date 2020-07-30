data work.'中文''test'n;
    input '日期''Date'n:Date9. '国家"Country'n:$13. '实际销售!@#$Actual'n:10. '名称''Name'n:$1000.;
    format '日期''Date'n NLDate20. '实际销售!@#$Actual'n:dollar12. '名称''Name'n:$1000.;
    datalines;
08May2017  USA   1000000 4'中文'
19Apr2016  China 78354 5"日文"
19Dec2016  China 847465  3韩文24¡ 
19Dec2018  ćĆđĐ 156799 2英语กราคTü!@#$%^&*()_+~<>?:"{}|r"<>k''çe
19Dec2018  ćĆđĐ 55909 1法文"คTü!@#$%^&*()_+~<>很长很长很长很长很长很长很长很长?:"{}|r"<>k''çe
19Dec2018  ćĆđĐ 25909 7美语
19Dec2018  НовыйЮг  25909 6测试íÍłŁňŇő
;

data work.test;
	input Date:Date9. Country:$8. Actual:10.;
	format Date NLDate20. Actual:dollar12.;
	datalines;
08May2017  USA   1000000
19Apr2016  China 783924
;
run;


libname mycas Cas;

data mycas.'中文''测试test'n;
input Date:Date9. Country:$8. Actual:10. Name:$1000.;
    format Date NLDate20. Actual:dollar12. Name:$1000.;
    datalines;
08May2017  USA   1000000 4'中文'
19Apr2016  China 78354 5"日文"
19Dec2016  China 847465  3韩文24¡ 
19Dec2018  ćĆđĐ 156799 2英语กราคTü!@#$%^&*()_+~<>?:"{}|r"<>k''çe
19Dec2018  ćĆđĐ 55909 1法文"คTü!@#$%^&*()_+~<>很长很长很长很长很长很长很长很长?:"{}|r"<>k''çe
19Dec2018  ćĆđĐ 25909 7美语
19Dec2018  НовыйЮг  25909 6测试íÍłŁňŇő
;

data mycas.'中文''测试'n;
input Date:Date9. Country:$8. Actual:10.;
	format Date NLDate20. Actual:dollar12.;
	datalines;
08May2017  USA   1000000
19Apr2016  China 783924
;
run;
data mycas.getstart_ja;
infile datalines delimiter='|' missover;
length text $150;
input text$ apple_fruit did$;
datalines;
おいしい、サクサクのアップルは、人気の果物の1つです | 1 |d01
アップルのすべての果物の王であった。 | 1 |d02
カスタードアップルまたはsitaphal甘い果肉質の果実である | 1 |d03
リンゴを共通の木です | 1 |d04
アップルの形状は円形でしまうと甘い | 1 |d05
熱帯のリンゴの木の甘いリンゴの生産| 1| d06
甘いのですので、甘いリンゴのファンの富士を崇拝します| 1 |d07
このリンゴの木は小さいです | 1 |d08
アップルストア・ショップでxとxプラス。| 0 |d09
世界中のアップルの電話番号のリストを見てください。| 0 |d10
ユーザー・ガイドと接触のアップルのサポートへのリンクを見つける | 0 |d11
アップルはサムスン銀河系発射カウンターギャラリーでiphone | 0 |d12
アップルの多機能電話ベライゾン・ワイヤレス。| 0 |d13
アップルの水銀の最高責任者）は、激怒していました。| 0 |d14
アップルのアップグレードに電話をしている。| 0 |d15
新しいアップルiphone xの大きな特徴| 0 |d16
リンゴの甘いリンゴiphone。| 0 |d17
アップルの車を作ります | 0 |d18
アップルも腕時計になります| 0 |d19
アップルコンピュータによって| 0 |d20
;

Proc print data=mycas.getstart_ja;
Run;
Proc print data = work.'中文''test'n;
Run;
Proc print data = mycas.'中文''测试test'n;
Run;
Proc print data = mycas.'中文''测试'n;
Run;
