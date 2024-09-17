[_tb_system_call storage=system/_scene4.ks]

[bg  time="1000"  method="crossfade"  storage="ominousforest.png"  ]
[chara_show  name="Medeyna"  time="1000"  wait="true"  storage="chara/1/MediCry.png"  width="409"  height="543"  left="60"  top="80"  reflect="false"  ]
[tb_start_text mode=1 ]
#
Медейна опустилась на землю. Слёзы потекли по щекам. В душе разверзлась пустота, заполнить которую могла лишь злость – её целью стал Асмир. Причина, заставившая её отказаться от иллюзии. [p]
#Медейна
«Это неправильно. Это мираж, морок».[p]
#
Медейна очертила на земле вокруг себя два защитных круга. Ей надо было перевести дух. Пальцы нащупали в сумке одно из целительных снадобий – рану защипало. Перевязывать предплечье левой рукой было неудобно. [p]
#Медейна
«Мне повезло, что эта тварь оказалась одна. Будь их несколько, моя песня была бы спета».[p]
«А если жертв шесть – семеро вместре с Асмиром, – то она в этом лесу не одна».[p]
#
Когда иллюзия рассеялась, к ней стала возвращаться ясность ума. [p]

[_tb_end_text]

[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/МediWorried.png"  ]
[tb_start_text mode=1 ]
#Медейна
«Это был фантом».[p]
#
Твари, принимающие облик умерших, фантомы погружали своих жертв в иллюзии, вытягивая из них силы. [p]
#Медейна
«Нет, не умерших! Это всё домыслы и легенды».[p]
«Фантомы берут образы из людского разума. Если я не знаю, жива ли Сейра, то и им неоткуда».[p]
#
Мысль о том, что её разум – открытая книга для опасного существа, заставляла мурашки ползти по коже. Меди поспешила успокоить себя:[p]
#Медейна
«Они не разумны в той же степени, что и человек. Насекомое, маскирующееся под листочек, не осознаёт, чем и почему притворяется». [p]
«Всё это время я разговаривала сама с собой. Рассказывала себе легенду, в которую сама была готова поверить». [p]
#
Были в ситуации и плюсы: фантомы могли высасывать своих жертв месяцами. А значит, Асмир – и пропавшие селяне – были живы. [p]
#Медейна
«Если он, конечно, не осознал, что происходит, как я, прямо в их логове». [p]
#
Она опустилась на землю, села, обняв колени и положив на них голову. Нужно было перевести дух и обдумать дальнейшие действия. Пока что она могла гордиться собой, что её осторожность возобладала даже над чарами фантома, но следовало и дальше действовать осмотрительно. [p]
#Медейна
«Нужно найти Асмира и вырвать его из лап фантомов».[p]
#
Задачка казалась сложной. Медейна помнила, как тяжело ей самой далось возвращение к реальности, а она провела под чарами едва ли десяток минут. [p]
#Медейна
«Где-то здесь в лесу должно быть их логово, где они держат своих одурманенных жертв. Но если я пойду туда, какой-нибудь новый фантом снова выйдет ко мне навстречу в чьём-то облике. Если, конечно, мне не повезёт и их не окажется ровно восемь и каждый будет уже занят своей жертвой».[p]
#
Восемь фантомов! Медейна никогда не слышала о таких больших гнёздах. [p]
#Медейна
«И мне придётся притвориться, что я верю им. Если эти твари поймут, что я угроза – они просто сотрут меня всемером. [p]
Как я смогу сохранить ясность ума в таком случае? Обычные чары против нечисти на них не действуют. Возможно, поможет руна концентрации Q».[p]

[_tb_end_text]

[tb_start_text mode=2 ]
#Медейна
Что ж, после этого кошмара Асмир точно должен мне...[l][r]
[_tb_end_text]

[tb_start_tyrano_code]
[glink target="Common" text="пироги каждый день" graphic="button.png" x=80 y=560 font_color=0x000000 size=18 width=400 height=70 enterimg="button2.png"]
[glink target="Romance" text="ночь жаркого секса" graphic="buttonR.png" x=80 y=620 font_color=0x000000 size=18 width=400 height=70 enterimg="buttonR2.png"]

[_tb_end_tyrano_code]

[s  ]
*Romance

[tb_eval  exp="f.AsmirRomance+=1"  name="AsmirRomance"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
*Common

[cm  ]
[tb_start_text mode=1 ]
Теперь, когда она наконец поняла, что происходит, страх отступил, хоть задача предстояла не из лёгких. По крайней мере, она понимала, что грозит и как с этим справиться. [p]
[_tb_end_text]

[tb_start_text mode=2 ]
Больше для успокоения, чем из нужды, она...[l][r]
[_tb_end_text]

*Information

[tb_start_tyrano_code]
[glink target="Info" text="повторила информацию о фантомах" graphic="button.png" x=80 y=530 font_color=0x000000 size=16 width=400 height=70 enterimg="button2.png"]

[glink target="Bag" text="проверила сумку" graphic="button.png" x=80 y=590 font_color=0x000000 size=20 width=400 height=70 enterimg="button2.png"]

[glink target="Common1" text="потёрла руки" graphic="button.png" x=80 y=650 font_color=0x000000 size=20 width=400 height=70 enterimg="button2.png"]


[_tb_end_tyrano_code]

[tb_image_show  time="2001"  storage="default/warning.png"  width="446"  height="188"  x="419"  y="-10"  _clickable_img=""  name="img_15"  ]
[tb_image_hide  time="2000"  ]
[s  ]
*Info

[cm  ]
[tb_start_text mode=1 ]
#Медейна
«Это духи, которые питаются жизненной силой человека. Встретив свою жертву, они воплощаются в виде знакомых образов. Один фантом может воплотиться одновременно несколькими людьми или даже неживыми объектами, но он способен связываться только с одной жертвой за раз. Руна Q должна мешать их чарам».[p]
#
[_tb_end_text]

[jump  storage="scene4.ks"  target="*Information"  ]
*Bag

[cm  ]
[tb_start_text mode=1 ]
#Медейна
«Так, у меня довольно много красноцвета навозного. Его дым ранит призраков, значит, должен действовать и на фантомов».[p]
#
[_tb_end_text]

[jump  storage="scene4.ks"  target="*Information"  ]
*Common1

[cm  ]
[tb_start_text mode=1 ]
#Медейна
«Думаю, этот туман – тоже часть их магии. Если я выйду из защитного круга и пойду, он выведет меня в их логово».[p]
#
Медейна дала себе еще десяток минут собраться с мыслями и перевести дух.  [p]
#Голос
{bold}Простите, пожалуйста!{/bold}[p]

[_tb_end_text]

[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/MediScared.png"  ]
[tb_start_text mode=1 ]
#
Медейна вздрогнула и оглянулась по сторонам. Обнаружить источник тонкого, вежливого голоса ей не удалось, и она на всякий случай прочертила борозду защитного круга глубже. [p]
#Голос
Извините, госпожа, не хотел вас пугать.[p]

[_tb_end_text]

[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/МediWorried.png"  ]
[tb_start_text mode=2 ]
#Медейна
«Неужели еще один фантом?»[l][r]
[_tb_end_text]

[tb_start_tyrano_code]
[glink target="Gershvi" text="Найти источник звука" graphic="button.png" x=80 y=540 font_color=0x000000 size=20 width=400 height=70 enterimg="button2.png"]

[glink target="Common2" text="Закрыть уши руками" graphic="button.png" x=80 y=600 font_color=0x000000 size=20 width=400 height=70 enterimg="button2.png"]




[_tb_end_tyrano_code]

[s  ]
*Gershvi

[cm  ]
[tb_eval  exp="f.GershviHelp=1"  name="GershviHelp"  cmd="="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
#
Она заозиралась по сторонам, всё ещё не спеша покидать свою защиту. [p]
#Голос
{bold}Я здесь, вы смотрите почти на меня! Чуть ниже!{/bold}[p]
#
Медейна перевела взгляд в корни ближайшей сосны. Глаза наткнулись на причудливый гриб. С глазами. [p]

[_tb_end_text]

[chara_show  name="Gershvi"  time="1000"  wait="true"  storage="chara/9/Gershvi.png"  width="333"  height="333"  left="950"  top="200"  reflect="false"  ]
[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/MediScared.png"  ]
[tb_start_text mode=1 ]
#Медейна
«Это же грибес! Настоящий!»[p]
#
О расе разумных грибов она знала совсем немного: они разумные и выглядят как грибы. Обитают на Гнилых Болотах, куда люди не суются, а их споры – одна из самых дорогих субстанций.[p]
#Медейна
{bold}Здравствуйте.{/bold}[p]
#Грибес
{bold}Извините, не хотел вас напугать. Не лучшее место и время для встречи.{/bold}[p]
#
По крайней мере, это была не нечисть. Хотя, если существо разумное – значит, и намерения у него могут быть недружелюбные. [p]
#Медейна
{bold}Что ты тут забыл?{/bold}[p]
#Грибес
{bold}Я путешественник. {/bold}[p]
#
Удивление на лице Медейны было слишком красноречивым, и он добавил:[p]

#Грибес
{bold}Понимаю, не часто встретишь моего соотечественника с подобным хобби. Понимаете, я с детства мечтал повидать мир, что весьма сложно, когда ты вынужден расти в земле. Нет, мы вполне способны перемещаться, но это очень утомительно и плохо сказывается на здоровье. {/bold}[p]
#
[_tb_end_text]

[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/MediSmile.png"  ]
[tb_start_text mode=1 ]
#Медейна
{bold}Удивительно. {/bold}[p]
#Грибес
{bold}Хотел срезать коротким путём, через лес, а тут эти...{/bold}[p]
#Медейна
{bold}На вас тоже действуют фантомы?{/bold}[p]
#Грибес
{bold}Конечно. Я слышал, они и на животных могут воздействовать, если им не удаётся найти жертву сытнее – на всех, у кого есть разум в той или иной форме. К счастью для меня, они быстро переключились на людей, но, кажется, я ещё не скоро смогу продолжить свой путь. {/bold}[p]

[_tb_end_text]

[tb_start_tyrano_code]
[glink target="GR" text="Сочувствую" graphic="buttonR.png" x=80 y=500 font_color=0x000000 size=20 width=400 height=70 enterimg="buttonR2.png"]

[glink target="GN" text="Не вам жаловаться" graphic="button.png" x=80 y=560 font_color=0x000000 size=20 width=400 height=70 enterimg="button2.png"]




[_tb_end_tyrano_code]

[s  ]
*GR

[cm  ]
[tb_eval  exp="f.GershviRomance+=1"  name="GershviRomance"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
#Грибес
Не стоит.[p]
[_tb_end_text]

[jump  storage="scene4.ks"  target="*GDialog"  ]
*GN

[cm  ]
[tb_start_text mode=1 ]
#Грибес
Не хотел вас обидеть, конечно! [p]
[_tb_end_text]

*GDialog

[tb_start_text mode=1 ]
#Грибес
{bold}Этим бедным людям досталось еще сильнее. {/bold}[p]
{bold}Меня, кстати, зовут Гершви.{/bold}[p]
#Медейна
{bold}Медейна. {/bold}[p]
#Гершви
{bold}Безмерно рад знакомству. И тому, что вам удалось уцелеть в этом проклятом лесу. Давайте я отсыплю вам спор, они восстановят силы и позволят вам выбраться отсюда.{/bold}[p]
#Медейна
{bold}Бесплатно? {/bold}[p]
#Гершви
{bold}Конечно. Чтобы я потребовал благодарность от дамы в беде?{/bold}[p]
#Медейна
{bold}Я вовсе не дама в беде. И из леса я не собираюсь убираться, пока не разберусь с этой нечистью.{/bold}[p]
#Гершви
{bold}Ничего себе! Ну, тогда я тем более должен вам посодействовать. {/bold}[p]
#
Споры грибесов были крайне полезной субстанцией – восстанавливали силы, добавляли энергии и бодрости, увеличивали регенерацию и ресурсы организма. Ценились на вес золота, и Медейна не могла позволить себе подобные покупки, даже располагая доходом колдуньи. [p]
И, конечно, никогда не могла представить, что однажды встретит настоящего грибеса, который предложит поделиться спорами просто так. [p]

[_tb_end_text]

[tb_start_tyrano_code]
[glink target="GR1" text="А это не скажется на вашем здоровье?" graphic="buttonR.png" x=80 y=510 font_color=0x000000 size=16 width=400 height=70 enterimg="buttonR2.png"]

[glink target="GDialog1" text="Буду очень благодарна!" graphic="button.png" x=80 y=570 font_color=0x000000 size=18 width=400 height=70 enterimg="button2.png"]




[_tb_end_tyrano_code]

[s  ]
*GR1

[cm  ]
[tb_eval  exp="f.GershviRomance+=1"  name="GershviRomance"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
#Гершви
{bold}Не стоит беспокойства! Мне всё равно понадобится несколько недель на восстановление, а день-другой погоды не сделает. Мне будет приятно помочь.{/bold}[p]
[_tb_end_text]

*GDialog1

[cm  ]
[tb_start_text mode=1 ]
#
Медейна наконец вышла из круга, подошла и опустилась на корточки перед Гершви. [p]
#Медейна
{bold}Что мне надо сделать?{/bold}[p]
#Гершви
{bold}Подставьте ладони под шляпку. {/bold}[p]
#
Он мелко затрясся, и вскоре ладони Медейны покрывал тонкий слой розоватой пыльцы. [p]

#Медейна
{bold}Большое спасибо!{/bold}[p]
#
Она слизала споры с подушечки указательного пальца, стараясь не думать, что последний раз мыла руки еще в Залесье. Они оказались почти безвкусные, с легкой грибной ноткой. Осмелев, она съела еще немного субстанции. [p]
#Гершви
{bold}На первый раз достаточно. {/bold}[p]
#
Медейна счистила споры с ладоней тупой стороной ножа и аккуратно поместила остатки в пустой флакончик. [p]

[_tb_end_text]

[tb_start_text mode=2 ]
Спросить Гершви:[l][r]
[_tb_end_text]

*Gquestions

[tb_start_tyrano_code]
[glink target="GTravel" text="о его путешествиях" graphic="button.png" x=80 y=520 font_color=0x000000 size=18 width=400 height=70 enterimg="button2.png"]
[glink target="Gribeses" text="о грибесах" graphic="button.png" x=80 y=580 font_color=0x000000 size=18 width=400 height=70 enterimg="button2.png"]
[glink target="GR2" text="женат ли он" graphic="buttonR.png" x=500 y=520 font_color=0x000000 size=18 width=400 height=70 enterimg="buttonR2.png"]
[glink target="GDialog2" text="нет вопросов" graphic="button.png" x=500 y=580 font_color=0x000000 size=18 width=400 height=70 enterimg="button2.png"]


[_tb_end_tyrano_code]

[tb_image_show  time="1501"  storage="default/warning.png"  width="547"  height="230"  x="400"  y="0"  _clickable_img=""  ]
[tb_image_hide  time="1000"  ]
[s  ]
*GTravel

[cm  ]
[tb_start_text mode=1 ]
#Гершви
{bold}Я в пути уже больше трёх лет. За это время проделал побывал в нескольких людских городах...{/bold}[p]
#
Он перечислил несколько селений. Медейна мысленно прочертила линию на карте: отсюда до Гнилых болот было не больше трёх недель пешего пути – по человеческим, конечно, меркам.[p]
#Гершви
{bold}Это было путешествие, полное опасностей! Не счесть, сколько раз меня чуть не затоптали кони. Я хотел нанять людского колдуна в попутчики, но мне два раза жутко не везло – они хотели взять меня в плен, чтобы трясти споры. Еле ножку унёс!{/bold}[p]
#Медейна
{bold}Мне жаль.{/bold}[p]
#

[_tb_end_text]

[jump  storage="scene4.ks"  target="*Gquestions"  ]
*Gribeses

[cm  ]
[tb_start_text mode=1 ]
#Гершви
{bold}Ох, даже не знаю, с чего начать. Мы живём семьями-общинами. Некоторые настолько большие, что могут сравниться с некоторыми вашими городами. {/bold}[p]
{bold}Для выживания нам не нужны ремёсла, поэтому вряд ли мы можем сравниться с вашими мастерами, но искусство у нас в почёте и многие занимаются ремёслами только ради эстетической, не практической функции. {/bold}[p]
{bold}Перемещаться нам, как я уже упоминал, крайне трудно, поэтому мы рады любым гостям в наших краях. Но, конечно, только не тем, кто пришёл стрясти с нас как можно больше спор, или, прости грибница, пожарить нас с лучком. {/bold}[p]
[_tb_end_text]

[jump  storage="scene4.ks"  target="*Gquestions"  ]
*GR2

[cm  ]
[tb_eval  exp="f.GershviRomance+=1"  name="GershviRomance"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
#Гершви
{bold}У нас нет такого понятия, как «брак», но если это вас волнует, я ни с кем не связан ни обязательствами, ни любовными связями. {/bold}[p]
{bold}А вы с какой целью интересуетесь? {/bold}[p]
#Медейна
{bold}Просто любопытно.{/bold}[p]
#Гершви
{bold}Тогда позвольте мне задать встречный вопрос. {/bold}[p]

[_tb_end_text]

[tb_start_tyrano_code]
[glink target="Single" text="Я не замужем" graphic="buttonR.png" x=80 y=510 font_color=0x000000 size=18 width=400 height=70 enterimg="buttonR2.png"]
[glink target="Gquestions" text="Я не замужем" graphic="button.png" x=80 y=570 font_color=0x000000 size=18 width=400 height=70 enterimg="button2.png"]






[_tb_end_tyrano_code]

[if  exp="f.AsmirRomance>=4||LL==='Asmir'"  ]
[tb_start_tyrano_code]
[glink target="Taken" text="Моё сердце занято" graphic="buttonR.png" x=80 y=630 font_color=0x000000 size=18 width=400 height=70 enterimg="buttonR2.png"]



[_tb_end_tyrano_code]

[endif  ]
[s  ]
*Single

[cm  ]
[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/MediFlirt.png"  ]
[tb_eval  exp="f.GershviRomance+=2"  name="GershviRomance"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_start_text mode=1 ]
#
Возможно, ей показалось, но гриб игриво подмигнул. [p]
[_tb_end_text]

[tb_image_show  time="501"  storage="default/GershviLL.png"  width="473"  height="196"  x="460"  y="0"  _clickable_img=""  ]
[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/MediSmile.png"  ]
[tb_eval  exp="f.LL='Gershvi'"  name="LL"  cmd="="  op="t"  val="Gershvi"  val_2="undefined"  ]
[tb_image_hide  time="1000"  ]
[jump  storage="scene4.ks"  target="*Gquestions"  ]
*Taken

[tb_image_show  time="1001"  storage="default/AsmirLL.png"  width="426"  height="182"  x="429"  y="0"  _clickable_img=""  ]
[tb_eval  exp="f.LL='Asmir'"  name="LL"  cmd="="  op="t"  val="Asmir"  val_2="undefined"  ]
[cm  ]
[tb_image_hide  time="1500"  ]
[jump  storage="scene4.ks"  target="*Gquestions"  ]
*GDialog2

[cm  ]
[tb_start_text mode=1 ]
Тем временем, споры начали действовать. Рану на предплечье словно заволокло грибницей, и она перестала болеть. Медейна почувствовала тепло, граничащее с жаром, побежавшее по венам. Прилив сил: хотелось действовать. [p]
#Медейна
{bold}Мне стоит идти, пока эффект не закончился. Спасибо за всё. {/bold}[p]
#Гершви
{bold}Берегите себя!{/bold}[p]
#

[_tb_end_text]

[tb_eval  exp="f.HP+=1"  name="HP"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_tyrano_code]
[glink target="GR3" text="Загляну на обратном пути!" graphic="buttonR.png" x=80 y=530 font_color=0x000000 size=18 width=400 height=70 enterimg="buttonR2.png"]
[glink target="Common2" text="И вы!" graphic="button.png" x=80 y=590 font_color=0x000000 size=20 width=400 height=70 enterimg="button2.png"]






[_tb_end_tyrano_code]

[s  ]
*GR3

[tb_eval  exp="f.GershviRomance+=2"  name="GershviRomance"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
*Common2

[cm  ]
[chara_hide  name="Gershvi"  time="1000"  wait="true"  pos_mode="false"  ]
[tb_start_text mode=1 ]
#
После продолжительной передышки Медейна поднялась на ноги, готовая продолжать свою миссию. [p]
[_tb_end_text]

[tb_start_text mode=1 ]
Она позволила ногам нести себя куда глаза глядят, но всё равно оставалась начеку. Больше никто не выходил ей навстречу, и это внушало надежду, что число фантомов ограничивается оставшимися семью. [p]

Туман становился всё гуще и гуще. Медейна просто следовала за ним и вскоре увидела, что лес расступается, являя взгляду неожиданную картину. Девушка ещё раз обновила руны на запястьях, добавив к защитным также руны концентрации и скрытности, и шагнула вперёд.[p]

[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="PhatomsLair2.jpg"  ]
[tb_start_text mode=1 ]
Её встретила деревня – большая и красивая, как будто в ней жило несколько магов-покровителей. С крепкими просторными избами, украшенными резными ставнями и расписанными воротами. С множеством людей на улице, весёлыми голосами и жизнеутверждающим гомоном. [p]
#Медейна
«Ох.[p]
Точно. Фантомы умеют воплощаться в несколько образов сразу, и предметы в том числе. [p]
Я слышала как-то притчу про жадного мужика, который не повёлся ни на видение своих родителей, ни на прекрасных дев, но соблазнился богатым купеческим домом – так его фантомы и подловили».[p]
#
Она с интересом рассмотрела избы – выстроить так много, так быстро и при этом незаметно смогла бы разве что дюжина магов. Но было тяжело поверить в то, что эти крепкие, материальные дома – всего лишь дело рук фантомов, которые могут сиюминутно развеяться туманом. [p]

#Медейна
«И как мне понять, кто из этой толпы – настоящий селянин, а кто – окучивающий его фантом?»[p]
#
Она незаметно кралась вдоль улицы, стараясь оставаться в тени домов, но никому не было до неё дела. Все люди, и настоящие, и фальшивые, были полностью поглощены друг другом. Они смеялись и улыбались. Не слышно было ни мелких бытовых ссор, ни ругани, ни пьяных драк. На лицах у всех застыло одно и то же преисполненное покоя доброжелательное выражение.[p]

#Медейна
«Даже жалко выдёргивать их из этой идиллии. Да, они умрут от истощения через месяц-другой, но счастливыми, даже не осознав, что произошло. Может, даже лучшая судьба, чем тяжёлая, неблагодарная крестьянская жизнь». [p]
«Я бы могла разложить по периметру красноцвет, а потом поджечь. Дым ослабит фантомов, я смогу привести Асмира в чувство, а потом мы вдвоём разберёмся с ними. [p]
Но они, осознав опасность, озвереют и кинутся на любого человека поблизости. Селянам точно не уцелеть, и не факт, что я успею воплотить план, прежде чем они расправятся со мной.[p]
Надо сперва осмотреться».[p]
#
Обнадёженная тем, что никакой новый фантом не вышел к ней в облике Сейры, Асмира или какого-нибудь давнего знакомого, Медейна продолжила путь по деревне. [p]

[_tb_end_text]

[chara_show  name="Loya"  time="1000"  wait="true"  storage="chara/8/LoyaEnchanted.png"  width="470"  height="627"  left="879"  top="80"  reflect="false"  ]
[tb_start_text mode=1 ]
#Медейна
«О! Девушка с родимым пятном – кажется, про неё мне рассказывала женщина из Залесья».[p]
#
Медейна увидела, как сценка, не вписывающаяся в миролюбивую картину фантомьей деревней, разыгрывается на окраине. Молодая женщина с родимым пятном на щеке спорила с мужчиной старше с такой же отметиной. [p]
#Медейна
«А это, очевидно, её отец. Кажется, та женщина упоминала, что он умер. Значит, точно фантом».[p]


[_tb_end_text]

[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/MediSmile.png"  ]
[tb_start_text mode=1 ]
#
Медейна воодушевилась. Удача повернулась к ней лицом: она точно определила настоящего человека, и теперь эта девушка поможет ей опознать других селян. Это было точно найти ключ к зашифрованному манускрипту: достаточно одного слова, и детальки головоломки становятся на свои места. [p]
#Медейна
«Хочу домой, к своим манускриптам». [p]
#
Тем временем девушка, окончательно разругавшись с отцом, развернулась и отправилась восвояси. [p]
Медейна, воспользовавшись возможностью, перехватила её, затянув в узкий проход между двумя стоящими почти вплотную избами. [p]
Та почти не сопротивлялась. Истощённая фантомами, она мало что могла противопоставить Медейне физически. Да и морально, похоже, не понимала, что происходит. Её взгляд был затуманен, точно мысленно она всё ещё продолжала спорить с отцом. [p]
Медейна встряхнула девушку. Она перевела затуманенный взгляд на неё, но больше никак не отреагировала. [p]
#Медейна
«Без магии не обойтись».[p]
[_tb_end_text]

[tb_start_text mode=2 ]
Руки были грязными, и, пользуясь этим, Медейна просто вывела на чужом лбу руну концентрации...[l][r]
[_tb_end_text]

[tb_start_tyrano_code]
[glink target="OkRune" text="Q" graphic="button.png" x=80 y=560 font_color=0x000000 size=32 width=400 height=70 enterimg="button2.png"]
[glink target="LoyaDialog" text="V" graphic="button.png" x=80 y=620 font_color=0x000000 size=32 width=400 height=70 enterimg="button2.png"]






[_tb_end_tyrano_code]

[s  ]
*OkRune

[tb_eval  exp="f.LoyaSurv+=1"  name="LoyaSurv"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
*LoyaDialog

[cm  ]
[tb_start_text mode=1 ]
Девушка всё ещё казалась дезориентированной, и Медейна позвала её по имени.[p]


[_tb_end_text]

[tb_start_text mode=2 ]
#Медейна
«Как же там говорила эта женщина?»[l][r]
[_tb_end_text]

[tb_start_tyrano_code]
[glink target="Loya" text="Лоя" graphic="button.png" x=80 y=590 font_color=0x000000 size=24 width=400 height=70 enterimg="button2.png"]
[glink target="Altemira" text="Альтемира" graphic="button.png" x=80 y=650 font_color=0x000000 size=24 width=400 height=70 enterimg="button2.png"]
[glink target="Seyra" text="Сейра" graphic="button.png" x=80 y=530 font_color=0x000000 size=24 width=400 height=70 enterimg="button2.png"]






[_tb_end_tyrano_code]

[s  ]
*Loya

[cm  ]
[tb_eval  exp="f.LoyaSurv+=1"  name="LoyaSurv"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
Она несколько раз моргнула, а потом её взгляд наконец сфокусировался на Медейне.[p]
[_tb_end_text]

[jump  storage="scene4.ks"  target="*LoyaDialog1"  ]
*Seyra

[cm  ]
[tb_start_text mode=1 ]
#Медейна
«Да чтоб меня! Все мысли вперемешку с этими фантомами!» [p]
[_tb_end_text]

[jump  storage="scene4.ks"  target="*LoyaDialog1"  ]
*Altemira

[cm  ]
[tb_start_text mode=1 ]
Девушка не отреагировала.[p]
[_tb_end_text]

*LoyaDialog1

[if  exp="f.LoyaSurv<2"  ]
[tb_start_text mode=1 ]
#
Медейна попыталась привести её в чувство, но девушка, слишком долго пробывшая под властью фантомов, кажется, только сильнее запутывалась в происходящем. [p]
#Медейна
«Если я не оставлю её в покое, связанный с ней фантом скоро поймёт, что что-то не так, и обнаружит меня. Придётся бросить селян на произвол судьбы и двигаться дальше. [p]
#
[_tb_end_text]

[chara_hide  name="Loya"  time="1000"  wait="true"  pos_mode="false"  ]
[endif  ]
[if  exp="f.LoyaSurv===2"  ]
[chara_mod  name="Loya"  time="600"  cross="true"  storage="chara/8/LoyaNormal.png"  ]
[tb_start_text mode=1 ]
#
Девушка посмотрела на Медейну другими, уже лишенными туманной поволоки глазами, и спросила:[p]
#Лоя
Кто ты? Где я? [p]
#Медейна
Я колдунья, а ты в полном дерьме. Тебя и других селян околдовали фантомы, и я пытаюсь вам помочь. [p]
#
Лоя нахмурилась, всё ещё пытаясь уложить в голове перепутанные мысли. [p]
#Лоя
Отец! Я говорила с ним! Но он уже много лет мёртв![p]
#Медейна
Это фантом, всего лишь видение.[p]
#
Осознание причиняло селянке видимую боль. [p]

[_tb_end_text]

[tb_start_tyrano_code]
[glink target="LR" text="Утешить её" graphic="buttonR.png" x=80 y=530 font_color=0x000000 size=22 width=400 height=70 enterimg="buttonR2.png"]
[glink target="LoyaDialog2" text="Перейти к делу" graphic="button.png" x=80 y=590 font_color=0x000000 size=20 width=400 height=70 enterimg="button2.png"]






[_tb_end_tyrano_code]

[s  ]
*LR

[cm  ]
[tb_eval  exp="f.LoyaRomance+=1"  name="LoyaRomance"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/MediNormal.png"  ]
[tb_start_text mode=1 ]
#
У них не было времени на сантименты, но в памяти Медейны всё ещё была свежа собственная боль от короткой надежды, которую подарила встреча с сестрой. Она взяла Лою за руку и сказала:[p]
#Медейна
{bold}Мне жаль, но я не могу оставить тебя в плену иллюзии, какой бы сладкой она ни была. {/bold}[p]
#
Лоя покачала головой. На её губах появилась горькая усмешка:[p]
#Лоя
{bold}Даже в иллюзии мы с ним ссоримся. {/bold}[p]
#Медейна
{bold}Мне очень жаль...{/bold}[p]
#
К её удивлению, девушка быстро взяла себя в руки. Собравшись, она покачала головой. [p]
#Лоя
{bold}Горести лишь делают нас сильнее. Из-за этого я не стала такой лёгкой жертвой, как они. {/bold}[p]
#
Она кивнула на блаженных соседей, которых они видели из своего убежища, с пренебрежением на лице. [p]
#Медейна
«Не сказала бы, что сейчас есть какая-то разница между твоим положением и их. Мы в одной ловушке».[p]
#
Свои мысли она всё же оставила при себе.[p]

[_tb_end_text]

*LoyaDialog2

[cm  ]
[tb_start_text mode=1 ]
#Медейна
{bold}Ты должна мне помочь. Я не знаю, кто из селян настоящий, а кто – фантом, но ты знаешь их лучше и сможешь отличить. Попробуй привести их в чувство, а потом – бегите отсюда прочь. {/bold}[p]
#Лоя
{bold}А если я не хочу им помогать?{/bold}[p]
#
Медейна опешила.[p]
#Медейна
{bold}Что они тебе сделали? {/bold}[p]


[_tb_end_text]

[chara_mod  name="Loya"  time="600"  cross="true"  storage="chara/8/LoyaAngry.png"  ]
[tb_start_text mode=1 ]
#Лоя
...[p]
{bold}Не хочу это сейчас обсуждать.{/bold}[p]
{bold}Кажется, если я не хочу пускаться в объяснения, мне всё-таки придётся помочь. {/bold}[p]
#
Она закатила глаза, но картинным жестом, показывающим, что последняя реплика была ироничной. Какую бы обиду Лоя ни таила на своих односельчан, она решила не оставлять их на произвол судьбы. [p]

#Медейна
Я научу тебя. Рисуешь им на лбу руну Q и зовёшь по имени. Но только не на глазах у фантомов! Лучше не рискуй, если не уверена. А потом – бегите как можно дальше от этого проклятого места.[p]
#Лоя
Поняла. [p]
#
Медейна с сомнением посмотрела на Лою. Не было никаких гарантий, что она решит спасти кого-то, рискуя своей шкурой – особенно если у неё есть причины недолюбливать своих знакомых. Но иного выхода не было. [p]
[_tb_end_text]

[tb_start_text mode=2 ]
Дать ей с собой:[l][r]
[_tb_end_text]

[tb_start_tyrano_code]
[glink target="RedBloom" text="Веточку красноцвета" graphic="button.png" x=80 y=520 font_color=0x000000 size=22 width=400 height=70 enterimg="button2.png"]
[glink target="Nothing" text="Ничего" graphic="button.png" x=80 y=580 font_color=0x000000 size=20 width=400 height=70 enterimg="button2.png"]






[_tb_end_tyrano_code]

[if  exp="f.Potion==='Medi'"  ]
[tb_start_tyrano_code]
[glink target="Gift" text="Зелье" graphic="buttonR.png" x=80 y=640 font_color=0x000000 size=22 width=400 height=70 enterimg="buttonR2.png"]






[_tb_end_tyrano_code]

[endif  ]
[if  exp="f.Knife==='Medi'"  ]
[tb_start_tyrano_code]
[glink target="Gift" text="Кинжал" graphic="buttonR.png" x=80 y=640 font_color=0x000000 size=22 width=400 height=70 enterimg="buttonR2.png"]





[_tb_end_tyrano_code]

[endif  ]
[s  ]
*RedBloom

[cm  ]
[tb_eval  exp="f.LoyaSurv+=1"  name="LoyaSurv"  cmd="+="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
#Медейна
Подожди. Возьми на всякий случай – подожжёшь, их ранит дым. Так себе оружие, но лучше, чем ничего.[p]
#Лоя
Спасибо.[p]
#
[_tb_end_text]

[jump  storage="scene4.ks"  target="*Nothing"  ]
*Gift

[cm  ]
[tb_eval  exp="f.Potion='Loya'"  name="Potion"  cmd="="  op="t"  val="Loya"  val_2="undefined"  ]
[tb_eval  exp="f.Knife='Loya'"  name="Knife"  cmd="="  op="t"  val="Loya"  val_2="undefined"  ]
[tb_eval  exp="f.LoyaSurv+=2"  name="LoyaSurv"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_eval  exp="f.LoyaRomance+=2"  name="LoyaRomance"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
[tb_start_text mode=1 ]
#Медейна
Подожди. Возьми на всякий случай.[p]
#Лоя
Спасибо.[p]
#
[_tb_end_text]

*Nothing

[cm  ]
[tb_start_text mode=1 ]
Лоя кивнула и решительно вышла на деревенскую улицу. [p]
#Медейна
[_tb_end_text]

[tb_start_tyrano_code]
[glink target="CommonL" text="Мутная девица" graphic="button.png" x=80 y=530 font_color=0x000000 size=22 width=400 height=70 enterimg="button2.png"]
[glink target="LR2" text="Интересная девица" graphic="buttonR.png" x=80 y=590 font_color=0x000000 size=20 width=400 height=70 enterimg="buttonR2.png"]






[_tb_end_tyrano_code]

[s  ]
*LR2

[tb_eval  exp="f.LoyaRomance+=2"  name="LoyaRomance"  cmd="+="  op="t"  val="2"  val_2="undefined"  ]
*CommonL

[cm  ]
[chara_hide  name="Loya"  time="1000"  wait="true"  pos_mode="false"  ]
[endif  ]
[tb_start_text mode=1 ]
#
Медейна отправилась дальше. Всё ещё стараясь идти скрытно, она обходила дома сзади и оставляла в неприметных местах пучки красноцвета вместе с небольшим рунным заговором, который бы поджёг сухую траву по команде. [p]
#Медейна
«Чёрт, заканчивается. Надо на всякий случай оставить пару веточек себе».[p]

[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[jump  storage="scene5.ks"  target=""  ]
[s  ]
