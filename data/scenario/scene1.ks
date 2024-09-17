[_tb_system_call storage=system/_scene1.ks]

[cm  ]
[tb_image_hide  time="1000"  ]
[bg  time="1000"  method="fadeIn"  storage="titl.jpg"  ]
[stopbgm  time="1000"  fadeout="true"  ]
[playbgm  volume="60"  time="1000"  loop="true"  storage="The-Lonely-Knight-_1_.ogg"  ]
[tb_show_message_window  ]
[tb_start_text mode=1 ]
{i}Все переменные в данной новелле скрытые.{/i}[p]
{i}Романтические выборы помечены розовым цветом.{/i}[p]
{i}Иногда вы сможете выбрать несколько вариантов ответа.{/i}[p]
{i}Приятного прочтения.{/i}[p]
[_tb_end_text]

[bg  storage="domNeutral.jpg"  time="1500"  cross="false"  method="fadeIn"  ]
[tb_start_text mode=1 ]
Подчиняясь магии, последний камень встал на свое место на трубе, венчающей крышу. Изба была готова. Добротное, просторное жилище, в котором можно осесть надолго. [p]
[_tb_end_text]

[chara_show  name="Asmir"  time="1000"  wait="true"  storage="chara/2/asm.png"  width="670"  height="670"  left="699"  top="70"  reflect="false"  ]
[tb_start_text mode=1 ]
#Асмир
{bold}Хорошо вышло, а? {/bold}[p]
#
[_tb_end_text]

[chara_show  name="Medeyna"  time="1000"  wait="true"  storage="chara/1/MediSmile.png"  width="409"  height="543"  left="50"  top="80"  reflect="false"  ]
[tb_start_text mode=1 ]
Медейна улыбнулась в ответ. [p]
[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[tb_start_text mode=1 ]
Действительно, поражало, как всего за несколько дней при помощи колдовства можно было возвести целый дом, такой просторный и уютный. Наверняка многие в селении позавидовали бы и жилищу, и силе, и благам, которые дает магия. [p]
Но стоило признать: вряд ли бы они с Асмиром управились сами, без наставлений старосты. В устройстве домов и в строительстве в целом никто из них не разбирался. [p]
Впрочем, даже при легкой зависти, вряд ли бы кто-то из обычных селян питал к ним неприязнь. Быть магом было легко: странствовать по миру, зная, что всегда сможешь защитить себя. И обеспечить: работенка находилась почти в любом поселении. [p]
Где-то вырыть колодец, или в короткие сроки возвести хлев, или покончить с разбушевавшейся нечистью, или помочь с проклятием, а то и наоборот, привлечь удачу и урожай. И если у селян не всегда находились тяжелые монеты, то еду, одежду и кров себе обеспечить было весьма и весьма просто. [p]
Когда же такие, как они, решали осесть и поселиться в небольшой деревеньке вроде этой, для жителей подобное становилось счастьем, обещая помощь и покровительство на грядущие годы. [p]

[_tb_end_text]

[tb_start_text mode=2 ]
Медейне...[l][r]
[_tb_end_text]

[tb_start_tyrano_code]
[glink target="afterTravelChoiceCommon" text="Было радостно наконец обрести дом" graphic="button.png" x=80 y=540 font_color=0x000000 size=16 width=400 height=70 enterimg="button2.png"]
[glink target="traveller" text="По душе были странствия" graphic="button.png" x=80 y=600 font_color=0x000000 size=18 width=400 height=70 enterimg="button2.png"]
[_tb_end_tyrano_code]

[s  ]
*traveller

[tb_eval  exp="f.Traveller=1"  name="Traveller"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
*afterTravelChoiceCommon

[cm  ]
[tb_start_text mode=1 ]
Все равно ее терзали сомнения: может быть, стоило продолжать поиски. А может быть, давно пора было взглянуть суровой правде в глаза: отыскать сестру, с которой их разлучили в детстве, не выйдет. [p]
[_tb_end_text]

[chara_show  name="Asmir"  time="1000"  wait="true"  storage="chara/2/asm.png"  width="670"  height="670"  left="700"  top="70"  reflect="false"  ]
[tb_start_text mode=1 ]
#Асмир
{bold}Печалишься?{/bold}[p]
#
Медейна только вздохнула. [p]
#Асмир
{bold}Ничего. Сейчас я приготовлю нам праздничный ужин – ничто не рассеивает печали так, как свежий пирог. Заодно проверим сразу наш новый очаг. {/bold}[p]
[_tb_end_text]

[chara_show  name="Medeyna"  time="1000"  wait="true"  storage="chara/1/MediNormal.png"  width="409"  height="543"  left="80"  top="50"  reflect="false"  ]
[tb_start_text mode=1 ]
#Медейна
{bold}Тебе помочь? {/bold}[p]
#Асмир
{bold}Спасибо, не стоит.{/bold}[p]
#
[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="kitchen.jpg"  ]
[tb_start_text mode=1 ]
Прошел ровно год, как они странствовали вместе. Встретились по чистой случайности. Точнее, это ей ужасно повезло, что он нашел ее, раненную вурдалаком, в дремучем лесу. [p]
Асмир был неплохим лекарем. Он вообще, казалось, знал и умел всего понемножку. Был не очень могущественным магом, но хорошо управлялся с мечом. Чего-то смыслил в медицине. На других языках знал едва ли по паре фраз, но мог договориться с любым. [p]
И мог приготовить сытное, хоть и простое, блюдо буквально из пары ингредиентов. [p]
[_tb_end_text]

[tb_start_text mode=2 ]
Медейна же была более искушена в тонкостях магии. Она…[l][r]
[_tb_end_text]

[tb_start_tyrano_code]
[glink target="potionist" text="специализировалась на зельях" graphic="button.png" x=80 y=540 font_color=0x000000 size=18 width=400 height=70 enterimg="button2.png"]
[glink target="artefactor" text="была артефактором" graphic="button.png" x=80 y=600 font_color=0x000000 size=18 width=400 height=70 enterimg="button2.png"]
[_tb_end_tyrano_code]

[s  ]
*potionist

[tb_eval  exp="f.Occupation='potionist'"  name="Occupation"  cmd="="  op="t"  val="potionist"  val_2="undefined"  ]
[tb_eval  exp="f.Potion='Medi'"  name="Potion"  cmd="="  op="t"  val="Medi"  val_2="undefined"  ]
[jump  storage="scene1.ks"  target="*OccupationChoiceCommon"  ]
*artefactor

[tb_eval  exp="f.Occupation='artefactor'"  name="Occupation"  cmd="="  op="t"  val="artefactor"  val_2="undefined"  ]
[tb_eval  exp="f.Knife='Medi'"  name="Knife"  cmd="="  op="t"  val="Medi"  val_2="undefined"  ]
*OccupationChoiceCommon

[cm  ]
[tb_start_text mode=1 ]
Она вполне бы могла поселиться в большом городе и зарабатывать на жизнь своим непыльным ремеслом, но душа требовала покоя и уединения, которых можно найти только на окраине вроде этой. Глушь, леса и небольшие деревеньки, раскиданные в диких краях. [p]

[_tb_end_text]

[tb_start_text mode=2 ]
Из компании ей было достаточно Асмира. Он был для неё...[l][r]
[_tb_end_text]

[tb_start_tyrano_code]
[glink target="Asmirovosh" text="надёжным товарищем" graphic="button.png" x=80 y=535 font_color=0x000000 size=18 width=400 height=70 enterimg="button2.png"]
[glink target="Asmirovosh" text="названым братом" graphic="button.png" x=80 y=585 font_color=0x000000 size=18 width=400 height=70 enterimg="button2.png"]
[glink target="morethanfriend" text="больше, чем просто другом" graphic="buttonR.png" x=80 y=635 font_color=0x000000 size=18 width=400 height=70 enterimg="buttonR2.png"]
[_tb_end_tyrano_code]

[s  ]
*morethanfriend

[tb_eval  exp="f.AsmirRomance+=2"  name="AsmirRomance"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
*Asmirovosh

[cm  ]
[tb_start_text mode=1 ]
Во время странствий их порой принимали за брата с сестрой, порой – за мужа с женой. Еще одна привилегия магической силы заключалась в том, что никто не осмеливался выяснять детали или порицать их. [p]
[_tb_end_text]

[chara_show  name="Medeyna"  time="1000"  wait="true"  storage="chara/1/MediNormal.png"  width="409"  height="543"  left="50"  top="80"  reflect="false"  ]
[tb_start_text mode=1 ]
#Медейна
{bold}Если ты не возражаешь, я пойду в мастерскую. Не терпится опробовать, как мы все устроили.{/bold}[p]
#
Асмир благосклонно кивнул, продолжая очищать овощи. [p]

[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="lab.jpg"  ]
[tb_start_text mode=1 ]
Теперь у нее была собственная мастерская – целая комната, отведенная в этом просторном доме. До этого создавать свои творения ей приходилось в походных условиях. Все свои накопления она не так давно истратила на материалы и теперь жаждала пустить их в дело.[p]
[_tb_end_text]

[if  exp="f.Occupation==='artefactor'"  ]
[tb_start_text mode=1 ]
#Медейна
«Заколдованный кинжал, который рассекает не только материю, но и чары – вот эта задачка мне по душе».[p]
#
Она повертела в пальцах прекрасный клинок, который не стыдно было носить и самому князю. Пока еще он был лишь куском металла, лишенным магии, но уже вскоре Медейна собиралась вплести в него чары, которые сделают кинжал настоящим произведением искусства. И при этом – очень полезным в быту. [p]
#Медейна

«Сначала мне нужно раскалить его колдовством. Потом нанести руны на лезвие: Х и У рассеивают зловредные чары и охраняют от зла. Потом, когда металл вновь остынет, я омою кинжал отваром звездоцвета, который считается верным средством, снимающим проклятия». [p]
#
Проговорив инструкцию про себя, как всегда поступала перед новым проектом, Медейна направила энергию в металл, заставляя его покраснеть. На нем, подчиняясь ее воле, проступили символы. [p]

[_tb_end_text]

[tb_start_text mode=2 ]
#Медейна
А теперь нужно...[l][r]
[_tb_end_text]

[tb_start_tyrano_code]
[glink target="KnifeOK" text="остудить клинок" graphic="button.png" x=80 y=540 font_color=0x000000 size=20 width=400 height=70 enterimg="button2.png"]
[glink target="KnifeNotOk" text="опустить в отвар" graphic="button.png" x=80 y=600 font_color=0x000000 size=20 width=400 height=70 enterimg="button2.png"]
[_tb_end_tyrano_code]

[s  ]
*KnifeOK

[cm  ]
[tb_start_text mode=1 ]
#
Она позволила силе улечься и успокоиться самой, вливаясь в металл. А затем, когда лезвие кинжала осталось лишь чуть теплым, омыла его отваром звездоцвета. Клинок таинственно замерцал, и Медейна залюбовалась хорошо проделанной работой.[p]
[_tb_end_text]

[jump  storage="scene1.ks"  target="*AfterCraft"  ]
*KnifeNotOk

[cm  ]
[tb_eval  exp="f.HP-=1"  name="HP"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/MediScared.png"  ]
[tb_start_text mode=1 ]
#Медейна
«Нет! Нужно сначала остудить!»[p]
#
Мысль пришла слишком поздно, когда варево уже зашипело, обдав лицо и руки горячим паром. Энергия, бурлившая в раскаленном металле, не успела успокоиться и, вступив в контакт с волшебным отваром, разлилась вокруг.[p]


[_tb_end_text]

[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/MediAngry.png"  ]
[tb_start_text mode=1 ]
#Медейна
Ай![p]
#
Медейна вскрикнула от боли, упустив кинжал на дно котла. На ладони остался ожог. Силой воли успокоив кипящую вокруг энергию, она достала кинжал и придирчиво его осмотрела.[p]
#Медейна
«Главное, что артефакт не испорчен. Надо будет попросить у Асмира заживляющую мазь».[p]
#
[_tb_end_text]

[endif  ]
[if  exp="f.Occupation==='potionist'"  ]
[tb_start_text mode=1 ]
#Медейна
«Снадобье, избавляющее от дурманов и зловредных чар, никогда не бывает лишним».[p]
#
Она разложила на столе перед собой мешочки с травами. Некоторые из них были собраны собственноручно, некоторые получены от селян, но другие, как, например, звездоцвет, защищающий от проклятий, были слишком редки –– их пришлось покупать в городе за большие деньги. [p]
Немало стоил и чугунный котел. На нем были выгравированы руны, защищающие от зла и не дающие негативным энергиям просочиться и впитаться в снадобье. [p]
#Медейна
«Так, сперва мне надо хорошенько нагреть масло спорника поганого, а потом кинуть туда пасту из корней звездоцвета».[p]
#
Проговорив про себя рецепт, Медейна поставила котел с золотившимся на дне маслом на огонь и принялась ждать. Когда оно нагрелось достаточно, туда отправилась паста из корня. [p]
Содержимое котла тут же зашипело, выплевывая раскаленные капли, и когда энергии двух волшебных растений встретились, масло попросту загорелось![p]

[_tb_end_text]

[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/MediAngry.png"  ]
[tb_start_text mode=2 ]
#Медейна
«Наверняка разбавляли спорник подсолнечным маслом!» – возмущенно подумала Медейна, вспоминая ушлого продавца.[l][r]
[_tb_end_text]

[tb_start_tyrano_code]
[glink target="PotionOk" text="накрыть крышкой" graphic="button.png" x=80 y=560 font_color=0x000000 size=20 width=400 height=70 enterimg="button2.png"]
[glink target="PotionNotOk" text="залить водой" graphic="button.png" x=80 y=620 font_color=0x000000 size=20 width=400 height=70 enterimg="button2.png"]
[_tb_end_tyrano_code]

[s  ]
*PotionOk

[cm  ]
[tb_start_text mode=1 ]
#
Шипение и бурление в котле, закрытом крышкой, быстро улеглось, и, когда Медейна снова заглянула в него, ее ждало прекрасное зелье.[p]
[_tb_end_text]

[jump  storage="scene1.ks"  target="*AfterCraft"  ]
*PotionNotOk

[cm  ]
[tb_eval  exp="f.HP-=1"  name="HP"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/MediScared.png"  ]
[tb_start_text mode=1 ]
Огонь взметнулся еще сильнее, словно драконье пламя. Медейна вскрикнула от боли, когда раскаленное масло обожгло ей руки, а волосы чуть не загорелись. Пришлось использовать магию, чтобы не допустить пожар – было бы обидно спалить их новое жилище в первый же вечер. [p]


[_tb_end_text]

[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/MediAngry.png"  ]
[tb_start_text mode=1 ]
#Медейна
«Главное, не испортить зелье. А от ожога попрошу мазь у Асмира».[p]
#
К счастью, на магические свойства снадобья происшествие не повлияло. [p]

[_tb_end_text]

[endif  ]
*AfterCraft

[chara_hide  name="Medeyna"  time="1000"  wait="true"  pos_mode="true"  ]
[bg  time="1000"  method="crossfade"  storage="kitchen.jpg"  ]
[tb_start_text mode=1 ]
#
Она вернулась на кухню. Аппетитный запах подсказывал, что пирог уже стоял в печи. [p]


[_tb_end_text]

[chara_show  name="Asmir"  time="1000"  wait="true"  storage="chara/2/asmNormal.png"  width="670"  height="670"  left="699"  top="70"  reflect="false"  ]
[tb_start_text mode=1 ]
Асмир, ожидая, пока он приготовится, сидел за столом. В отсутствии собеседников его жизнерадостная маска слетела, оставив лишь задумчивую меланхолию, которая была свойственна им обоим.  [p]
Его пальцы с методичной машинальностью крутили кольцо на большом пальце – единственное наследство, которое он имел. [p]
[_tb_end_text]

[chara_show  name="Medeyna"  time="1000"  wait="true"  storage="chara/1/MediNormal.png"  width="408"  height="542"  left="60"  top="80"  reflect="false"  ]
[tb_start_text mode=1 ]
#Медейна
«Наверное, тоже думает о семье».[p]
#
Она старалась лишний раз не поднимать эту тему. Знала лишь, что родители Асмира погибли, когда он был еще ребенком, не оставив ему иного выбора, кроме как скитаться по миру в поисках своего места под солнцем. [p]
То, что Медейна и Асмир в конце концов решили осесть на одном месте, знаменовало для него конец его поисков. [p]
Для нее же – потерю надежды отыскать сестру. [p]
Услышав шаги, он обернулся к Медейне, вновь расплываясь в безмятежной улыбке.[p]
[_tb_end_text]

[chara_mod  name="Asmir"  time="600"  cross="true"  storage="chara/2/asm.png"  ]
[tb_start_text mode=1 ]
#Асмир
У{bold}же закончила? Пирог скоро будет готов. {/bold}[p]
#Медейна
{bold}Пахнет замечательно.{/bold}[p]
#
Она опустилась на стул рядом с ним, скользнув взглядом по его большим рукам, железному кольцу на большом пальце, тонкому белому шраму, переползающему с запястья на тыльную сторону ладони. [p]

[_tb_end_text]

[tb_start_text mode=2 ]
#
Этот шрам Асмир получил…[l][r]
[_tb_end_text]

[tb_start_tyrano_code]
[glink target="ScarCommon" text="зацепившись за гвоздь на заборе" graphic="button.png" x=80 y=540 font_color=0x000000 size=18 width=400 height=70 enterimg="button2.png"]
[glink target="Wound" text="в битве с вурдалаком" graphic="button.png" x=80 y=600 font_color=0x000000 size=18 width=400 height=70 enterimg="button2.png"]
[_tb_end_tyrano_code]

[s  ]
*Wound

[cm  ]
[tb_eval  exp="f.AsmirSurv-=1"  name="AsmirSurv"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
#
Раны, в которые попал яд, значительно подорвали его здоровье[p]
[_tb_end_text]

*ScarCommon

[cm  ]
[tb_start_text mode=1 ]
#
Медейна задумалась, как бы начать разговор.[p]
[_tb_end_text]

[tb_start_tyrano_code]
[glink target="FamilyTalk" text="поговорить о семье" graphic="button.png" x=80 y=510 font_color=0x000000 size=18 width=400 height=70 enterimg="button2.png"]
[glink target="WeTalk" text="поговорить о нас" graphic="button.png" x=80 y=560 font_color=0x000000 size=18 width=400 height=70 enterimg="button2.png"]
[glink target="Silent" text="промолчать" graphic="button.png" x=80 y=610 font_color=0x000000 size=18 width=400 height=70 enterimg="button2.png"]
[_tb_end_tyrano_code]

[tb_image_show  time="1001"  storage="default/warning.png"  width="492"  height="206"  x="369"  y="10"  _clickable_img=""  ]
[tb_image_hide  time="3000"  ]
[s  ]
*FamilyTalk

[cm  ]
[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/MediNormal.png"  ]
[chara_mod  name="Asmir"  time="600"  cross="true"  storage="chara/2/asmNormal.png"  ]
[tb_start_text mode=1 ]
Медейна не знала, как начать разговор. Мысли крутились в голове, но было непонятно, как облечь их в слова, не разбередив старые раны. [p]
Мысли о сестре все еще причиняли боль, но притупленную, потускневшую от времени. Она давно была готова обсудить ее. Подвести итог – как иначе, чем в беседе с добрым другом. Но был ли готов Асмир? [p]
#Асмир
{bold}Я всё думаю о них. О родителях и братьях. {/bold}[p]
#
Он будто бы прочитал ее мысли, и Медейна опустилась на стул рядом, приглашая продолжать. [p]
#Асмир
{bold}Столько лет я бродил по миру, словно надеясь однажды отыскать дом из своего детства. И вот я здесь, наконец, готовый отпустить эту иллюзию и построить свой собственный. {/bold}[p]
#
Он обернулся к ней и посмотрел в глаза. [p]
#Асмир
{bold}Mне кажется, мы смогли поладить, потому что разделяем эту горечь потери. {/bold}[p]


[_tb_end_text]

[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/MediSideEye.png"  ]
[tb_start_text mode=1 ]
#
Медейна отвела глаза. Она не была согласна, пусть и часть истины присутствовала в его словах. Да, они могли понять и разделить боль друг друга. Но разница заключалась в том, что семья Асмира была мертва давно. И пусть принятие оказалось для него тяжелым, оно несло освобождение. [p]
#
А вот сестра Медейны все еще могла быть жива. Может быть, именно неопределенность терзала больше всего. Может быть, мысли о том, что каждый день промедления, когда она выбирала остаться в том же городе и в том же доме, ощущался маленьким предательством по отношению к Сейре. [p]
#
Но, наверное, пора было взглянуть правде в глаза: за минувшие двадцать лет сестренка либо больше не нуждалась в ее помощи и защите, либо была мертва. [p]
#
Асмир замолчал, как будто понял, что расстроил Медейну.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
В его словах не было злого умысла, и она…[p]
[_tb_end_text]

[tb_start_tyrano_code]
[glink target="Silent" text="извинилась и ушла к себе" graphic="button.png" x=80 y=535 font_color=0x000000 size=18 width=400 height=70 enterimg="button2.png"]
[glink target="FamilyTalkContinue" text="грустно улыбнулась" graphic="button.png" x=80 y=585 font_color=0x000000 size=18 width=400 height=70 enterimg="button2.png"]
[_tb_end_tyrano_code]

[s  ]
*FamilyTalkContinue

[cm  ]
[chara_mod  name="Medeyna"  time="610"  cross="true"  storage="chara/1/MediNormal.png"  ]
[tb_start_text mode=1 ]
#Медейна
{bold} Как будто день поминовения празднуем. {/bold}[p]
#
Она подняла кружку с брагой и сделала глоток. [p]
#Асмир
{bold}Мне тоже пришла в голову эта мысль. {/bold}[p]
{bold}Но день поминовения – не только грустный праздник. Это время вспоминать хорошее и быть благодарным за то, что имеешь. {/bold}[p]
#
Он стукнулся кружкой о ее и произнес тост:[p]
#Асмир
{bold}За мертвых и живых!{/bold}[p]
#
Медейна улыбнулась. [p]
Было в Асмире некое жизнелюбие, которое пробивалось даже сквозь моменты меланхолии. Ему всегда удавалось развеять ее тоску. [p]


[_tb_end_text]

[jump  storage="scene1.ks"  target="*ScarCommon"  ]
*WeTalk

[cm  ]
[tb_start_text mode=2 ]
Это была неловкая тема, которую Медейна не знала, как затронуть. Главным образом ее беспокоило…[l][r]
[_tb_end_text]

[tb_start_tyrano_code]
[glink target="AsmirsAttitude" text="как к ней относится Асмир" graphic="buttonR.png" x=80 y=560 font_color=0x000000 size=18 width=400 height=70 enterimg="buttonR2.png"]
[glink target="WeTalkCommon" text="что подумают люди" graphic="button.png" x=80 y=620 font_color=0x000000 size=18 width=400 height=70 enterimg="button2.png"]
[_tb_end_tyrano_code]

[s  ]
*AsmirsAttitude

[cm  ]
[tb_eval  exp="f.AsmirRomance+=1"  name="AsmirRomance"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
Весь минувший год они путешествовали вместе, делили кров и пищу, сражались спина к спине и не выходили за рамки дружбы. [p]
[_tb_end_text]

[if  exp="f.AsmirRomance>=2"  ]
[tb_start_text mode=1 ]
Хотя для Медейны он уже стал больше, чем просто товарищем, и она не могла не искать скрытый смысл в его долгих, пронзительных взглядах и мягких, словно случайных прикосновениях.[p]
[_tb_end_text]

[endif  ]
*WeTalkCommon

[cm  ]
[tb_start_text mode=1 ]
Теперь же, когда им предстояло жить под одной крышей, а значит, нести на себе груз людских представлений о приличиях и морали, стоило обсудить этот вопрос. [p]
Осторожно подбирая слова, Медейна озвучила свои опасения. [p]

[_tb_end_text]

[chara_mod  name="Asmir"  time="600"  cross="true"  storage="chara/2/asmConfused.png"  ]
[tb_start_text mode=1 ]
Асмира эти слова взволновали. Это было заметно по тому, как он заерзал на своем месте, как будто одновременно смущенный, застанный врасплох, но отчасти даже обрадованный.[p]
#Асмир
{bold}Ох, ну и попортил я тебе репутацию…{/bold}[p]
{bold}Я бы, конечно, мог спасти положение и сделать тебе предложение здесь и сейчас, но это, думаю, будет неуместно и несвоевременно? {/bold}[p]


[_tb_end_text]

[tb_start_text mode=2 ]
#
Его шутка была вовсе не смешной из-за подведшего его смущенного и напряженного голоса. И Медейна…[l][r]
[_tb_end_text]

[tb_start_tyrano_code]
[glink target="Flirt" text="решила подыграть" graphic="buttonR.png" x=80 y=560 font_color=0x000000 size=18 width=400 height=70 enterimg="buttonR2.png"]
[glink target="Laughter" text="всё равно посмеялась" graphic="button.png" x=80 y=620 font_color=0x000000 size=18 width=400 height=70 enterimg="button2.png"]
[_tb_end_tyrano_code]

[s  ]
*Flirt

[cm  ]
[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/MediFlirt.png"  ]
[tb_eval  exp="f.LL='Asmir'"  name="LL"  cmd="="  op="t"  val="Asmir"  val_2="undefined"  ]
[tb_image_show  time="300"  storage="default/AsmirLL.png"  width="426"  height="182"  x="429"  y="0"  _clickable_img=""  ]
[tb_start_text mode=1 ]
Посмотрев прямо ему в глаза, она наклонилась поближе. Перекинула косу через плечо, выставляя на показ стройную шею, и загадочно улыбнулась. [p]
[_tb_end_text]

[tb_image_hide  time="1000"  ]
[tb_start_text mode=1 ]

Раньше она не позволяла себе никакого флирта в его сторону – ничего, что могло бы испортить или осложнить их дружбу, но теперь использовала язык тела на максимум, чтобы ее намерения оказались очевидны – настолько очевидны, что это казалось шуткой или игрой. [p]
Грациозным движением она придвинулась к нему, так, что между их лицами осталось совсем немного пространства, и сказала: [p]
#Медейна
{bold}Может, очень даже уместно.{/bold}[p]
#
Асмир как завороженный смотрел ей в глаза, а потом его взгляд соскользнул ниже, на губы. [p]

[_tb_end_text]

[chara_mod  name="Asmir"  time="600"  cross="true"  storage="chara/2/asmConfused2.png"  ]
[tb_start_text mode=1 ]
#Асмир
{bold}Но не здесь и не сейчас же. Не за кухонным столом. {/bold}[p]
#
Он непроизвольно перешел на шепот.[p]
#Медейна
{bold}И где же тогда?{/bold}[p]
#
Асмир накрыл ее ладонь своей, все еще не разрывая зрительный контакт, и стал объяснять: [p]
#Асмир
{bold}На обрыве над рекой. На закате, когда солнце все окрашивает в золото. Я бы добыл хорошего вина и…{/bold}[p]
#
Медейна опустила взгляд на его губы и придвинулась еще ближе, и его голос затих. Замерев на мгновение в щекочущей нервы паузе, Медейна улыбнулась и отстранилась.[p]
#Медейна
{bold}Хорошо тогда.{/bold}[p]
#
И она покинула кухню, оставив Асмира гадать, было ли все это всерьез или шуткой. [p]

[_tb_end_text]

[jump  storage="scene1.ks"  target="*Silent"  ]
*Laughter

[cm  ]
[tb_start_text mode=1 ]
#Медейна
{bold}Наверное, это не так уж важно. Кто посмеет лезть не в свое дело? {/bold}[p]
#
Асмир согласно кивнул[p]

[_tb_end_text]

[jump  storage="scene1.ks"  target="*ScarCommon"  ]
*Silent

[cm  ]
[chara_hide_all  time="1000"  wait="true"  ]
[jump  storage="scene2.ks"  target=""  ]
[s  ]
