[_tb_system_call storage=system/_scene3.ks]

[bg  time="1000"  method="crossfade"  storage="ominousforest.png"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="Whispers-of-the-Elder-Wood.ogg"  ]
[chara_show  name="Medeyna"  time="1000"  wait="true"  storage="chara/1/MediNormal.png"  width="409"  height="543"  left="50"  top="80"  reflect="false"  ]
[tb_start_text mode=1 ]
Лес встретил её прохладной свежестью. Медейна не видела ничего подозрительного – она повидала много таких мест, и оно не казалось бы ей ни капли пугающим, если бы не осознание, что где-то здесь пропал Асмир. [p]
Она двигалась осторожно, набросив на себя чары для отвода глаз. Заманчиво краснели под ногами ягоды, но Медейна не обращала на них внимания, углубляясь всё глубже в чащу. Давно уже перестал угадываться за спиной силуэт деревни. [p]
Время от времени она повторяла заговор, способный определить злые чары, но это был абсолютно обычный, нормальный лес. [p]
Медейна использовала поисковое заклинание.[p]

[_tb_end_text]

[if  exp="f.Ring==='Medi'"  ]
[tb_start_text mode=1 ]
Кольцо Асмира, которое она носила на цепочке на шее, казалось, всё ещё хранило тепло его рук. Чары вышли сильными.[p]
[_tb_end_text]

[endif  ]
[tb_start_text mode=1 ]
Кроны закрывали небо, и вокруг царил таинственный полумрак. Медейна заметила туман, клубившийся в ногах. Он загадочно мерцал, словно приглашая следовать за собой, но заклинания всё ещё не могли определить вокруг никакого враждебного колдовства. [p]
«Чертовщина какая-то», напряжённо подумала Меди, продолжая следовать направлению, которое подсказывали поисковые чары. [p]
Тянущее чувство в груди, указывающее направление, вдруг стало пронзительно резким, а потом оборвалось.[p]

[_tb_end_text]

[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/MediScared.png"  ]
[tb_start_text mode=1 ]
#Медейна
{bold}Ах!{/bold}[p]
#Медейна
«Неужели... Неужели он только что умер?»[p]
[_tb_end_text]

[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/МediWorried.png"  ]
[tb_start_text mode=1 ]
«Или что-то мешает моему колдовству?»[p]
«Может, этот проклятый туман».[p]
#
Страх и потерянность сдавили грудь, словно тяжёлая перина. Она стиснула зубы. Так или иначе, нужно собраться. Паника только сведёт её саму в могилу раньше, чем она найдёт Асмира. [p]
Чары больше не вели её. [p]

[_tb_end_text]

[tb_start_tyrano_code]
[glink target="CallAsmir" text="Позвать Асмира" graphic="button.png" x=80 y=540 font_color=0x000000 size=22 width=400 height=70 enterimg="button2.png"]
[glink target="DontCall" text="Затаиться" graphic="button.png" x=80 y=600 font_color=0x000000 size=22 width=400 height=70 enterimg="button2.png"]
[_tb_end_tyrano_code]

[s  ]
*CallAsmir

[cm  ]
[tb_start_text mode=1 ]
Медейна сделала глубокий вдох и закричала, сама не ожидая от себя такого громкого голоса.[p]
#Медейна
{bold}Асмир!{/bold}[p]
#
Крик прокатился эхом по лесу и затих вдали. [p]
#Медейна
«Если во всём виновата стая кровожадных вурдалаков, они сейчас сбегутся ко мне».[p]
#
Это были не вурдалаки – она знала. Они бы оставили следы.[p]

Но лес ответил на её крик лишь тишиной. Она вслушивалась в него до звона в ушах, надеясь услышать ответный зов Асмира, но не сработало. [p]

[_tb_end_text]

[jump  storage="scene3.ks"  target="*Common1"  ]
*DontCall

[cm  ]
[tb_start_text mode=1 ]
Она опасалась кричать, вместо этого затаилась на месте, словно ожидая, что враждебное колдовство, помешавшее её чарам, сделает свой ход. [p]
Но лес молчал. Туман по-прежнему клубился над землёй, но не спешил нападать.[p]

[_tb_end_text]

*Common1

[tb_start_text mode=1 ]
#Медейна
«Что ж, остаётся только следовать в том же направлении и надеяться, что я не собьюсь».[p]
[_tb_end_text]

[if  exp="f.Potion==='Medi'"  ]
[tb_start_text mode=1 ]
Она вытащила из сумки зелье, которое варила не так давно, и сделала мелкий глоток. В склянке осталась половина.[p]

Маслянистая текстура окутала язык, а вслед пришло лёгкое покалывание магии. Медейна почувствовала успокоение. Может, это туман бередил её мысли, а может, осознание, что снадобье защищает её, добавляло уверенности.[p]

[_tb_end_text]

[endif  ]
[if  exp="f.Knife==='Medi'"  ]
[tb_start_text mode=1 ]
#
Она вытащила из сумки зачарованный кинжал, сделанный накануне. Защищаться было не от кого, но Медейна делала зарубку на дереве, помечая свой путь. [p]

Волшебный кинжал рассёк не только кору, но и сам туман. Порез зиял на нём, точно прореха на ткани, не давая затянуться и скрыть метку. [p]
#Медейна
«Это точно колдовство. Учту».[p]
#

[_tb_end_text]

[endif  ]
[tb_start_text mode=1 ]
Она двинулась дальше, стараясь не сбиваться с направления из-за кочек и коряг, которые попадались ей на пути. [p]
Боковое зрение уловило движение. Медейна тут же присела, скрываясь в кустах, готовая атаковать магией, если понадобится. [p]


[_tb_end_text]

[chara_show  name="Seyra"  time="1000"  wait="true"  storage="chara/3/SeyraSilouette.png"  width="599"  height="742"  left="709"  top="-9"  reflect="false"  ]
[tb_start_text mode=1 ]
Туман закрывал обзор. Сквозь него угадывалось лишь невнятное мельтешение и смутно различимые силуэты. [p]
«В бой вступать точно не стану», – решила Медейна. – «Попробую остаться незамеченной, а не получится – бежать». [p]
Силуэт приближался, и Медейна поняла, что это лишь одинокая человеческая фигура.[p]
[_tb_end_text]

[tb_start_text mode=1 ]
Женская. [p]
[_tb_end_text]

[chara_mod  name="Seyra"  time="710"  cross="true"  storage="chara/3/Seyra.png"  ]
[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/MediSurprise.png"  ]
[tb_start_text mode=1 ]
Взгляд скользнул по её красивому юному лицу. Сердце заколотилось в груди. [p]
#Медейна
«Я сплю?»[p]
#
Девушка безмятежно шла по таинственному лесу, направляясь прямо к ней. Медейна застыла в оцепенении, всё ещё скрываясь в кустах. [p]
#Девушка
{bold}Я тебя вижу. Выходи!{/bold}[p]
#
Медейна медленно поднялась на ноги. Пальцы подрагивали, готовые выплести атакующее заклинание, если понадобится, но она не была уверена, что окаменевшие губы послушаются её. [p]

[_tb_end_text]

[chara_mod  name="Seyra"  time="600"  cross="true"  storage="chara/3/SeyraSurprised.png"  ]
[tb_start_text mode=1 ]
#Девушка
{bold}Ме... Меди? {/bold}[p]
#Медейна
{bold} Сейра?{/bold} [p]
#
Наконец смогла выдохнуть она. Она отказывалась верить глазам. Должно быть, это морок тумана, злое колдовство. [p]
#Сейра
{bold}Медейна, сестра! Не могу поверить! Что ты здесь делаешь? Здесь опасно бродить! Ты одна?{/bold}[p]
#
Она сделала шаг вперёд, но Медейна остановила её жестом. Снова короткое колдовство – как и до этого, оно не обнаружило никакой зловредной магии. [p]
[_tb_end_text]

[chara_mod  name="Seyra"  time="600"  cross="true"  storage="chara/3/Seyra.png"  ]
[tb_start_text mode=1 ]
#Сейра
{bold}Ох, не могу поверить!{/bold}[p]
#
Её тёплые ладони коснулись рук Медейны, и она готова была свалиться ей в объятья прямо здесь.[p]

[_tb_end_text]

[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/МediWorried.png"  ]
[tb_start_tyrano_code]
[glink target="Trust" text="Обнять Сейру" graphic="button.png" x=80 y=540 font_color=0x000000 size=22 width=400 height=70 enterimg="button2.png"]
[glink target="DontTrust" text="Не доверять ей" graphic="button.png" x=80 y=600 font_color=0x000000 size=22 width=400 height=70 enterimg="button2.png"]
[_tb_end_tyrano_code]

[s  ]
*Trust

[cm  ]
[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/MediSmile.png"  ]
[tb_eval  exp="f.HP-=2"  name="HP"  cmd="-="  op="t"  val="2"  val_2="undefined"  ]
[tb_start_text mode=1 ]
#
Она чуть не повалила её всем своим весом. Руки оплели сестру. Тепло её тела после прохлады леса оказалось таким успокаивающим. И запах. Давно забытый запах откуда-то из глубин памяти исходил от её волос. [p]
После перенесённых тревог и страхов волна расслабления нахлынула на Медейну в объятьях сестры. Она позволила себе на мгновение забыть обо всём – и о пропавшем Асмире, и об опасностях леса. [p]
#Сейра
{bold}Пойдём, я приведу тебя в безопасное место. {/bold}[p]
#Медейна
{bold}Хорошо. {/bold}[p]
#
Спокойствие окутало её – уютное и тёплое. Теперь Медейна была не одна в этом лесу. Теперь можно было выдохнуть. [p]
Пока Медейна едва не расплылась от облегчения, как подтаявший сугроб, Сейра светилась от радости. [p]
#Сейра
{bold}Я и не думала, что ещё раз увижу тебя!{/bold}[p]
#
Её тёплые пальцы переплелись с пальцами Медейны, и она уверенно увлекла их обеих дальше в лес. [p]
#Медейна
{bold}И я.{/bold}[p]
{bold}Как ты здесь оказалась? Что с тобой произошло? {/bold}[p]

[_tb_end_text]

[chara_mod  name="Medeyna"  time="580"  cross="true"  storage="chara/1/МediWorried.png"  ]
[chara_mod  name="Seyra"  time="600"  cross="true"  storage="chara/3/SeyraAshamed.png"  ]
[tb_start_text mode=1 ]
#Сейра
{bold}Ох, это долгая история. Давай сначала вернёмся в безопасное место. {/bold}[p]
#Медейна
{bold}Подожди. {/bold}[p]
#
Радость от встречи с сестрой на минуту заставила её забыть обо всём – даже о страхе за Асмира. Но теперь, стоило вновь вспомнить о нём, тревога снова вернулась.[p]
#Медейна
{bold}Объясни мне, что происходит. Ты живёшь здесь? В Залесье? {/bold}[p]
#Сейра
{bold}Не совсем.{/bold}[p]
#
Она потупилась, как будто ей было стыдно говорить.[p]
#Сейра
{bold}Я живу здесь, но не в Залесье. Это... не совсем поселение. Скорее... лагерь. {/bold}[p]
#Медейна
{bold}Лагерь? {/bold}[p]
#
Сейра собралась с мыслями.[p]
#Сейра
{bold}Разбойничий лагерь.{/bold}[p]
#Медейна
{bold}Ты связалась с разбойниками? {/bold}[p]
#
Сейра отвела взгляд. Ей было стыдно признаваться, и Медейна, хоть новости точно не вызывали в ней восторга, не спешила её укорять. Просто спросила: [p]
#Медейна
{bold}Это из-за вас люди пропадают? {/bold}[p]
#Сейра
{bold}Извини. Но тебя никто не тронет, обещаю. {/bold}[p]
#Медейна
{bold}Вы хорошо прячете следы. {/bold}[p]
#
Она пробормотала это, не зная, что добавить. [p]
#Медейна
{bold}Я ищу своего друга.{/bold}[p]
#Сейра
{bold}Колдуна? Тёмноволосый такой, высокий?{/bold}[p]
#Медейна
{bold}Да, он.{/bold}[p]
#Сейра
{bold}Он у нас, в плену. {/bold}[p]

[_tb_end_text]

[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/MediNormal.png"  ]
[tb_start_text mode=1 ]
#
Медейна выдохнула. Асмир был в порядке, Сейра нашлась, и эти новости заставляли её закрыть глаза даже на благополучие крестьян и чёрные разбойничьи дела. [p]
Может, удастся договориться, чтобы их с Асмиром отпустили. Ему, конечно, это не понравится...[p]
#Сейра
{bold}Может, примкнёте к нам? {/bold}[p]
#
Медейна неопределённо пожала плечами.[p]
Ситуация всё ещё была нехорошей – но и вполовину не такой ужасной, как казалась сразу. Рядом с Сейрой было так легко и спокойно, что Медейне приходилось напоминать себе не расслабляться. [p]
#Медейна
«Я обещала себе не терять бдительность. Не успокоюсь, пока мы с Асмиром и Сейрой не окажемся дома».[p]
#
На неё накатила усталость. В голове царил мешающий сосредоточиться туман.  [p]
#Медейна
«Не надо расслабляться... Разве может всё быть так просто?»[p]
#

[_tb_end_text]

*questionstrust

[tb_start_text mode=2 ]
Она спросила Сейру:[l][r]
[_tb_end_text]

[tb_start_tyrano_code]
[glink target="q1" text="Как вы одолели Асмира?" graphic="button.png" x=80 y=540 font_color=0x000000 size=18 width=400 height=70 enterimg="button2.png"]
[glink target="q2" text="Ты уверена, что нас просто отпустят?" graphic="button.png" x=80 y=600 font_color=0x000000 size=18 width=400 height=70 enterimg="button2.png"]

[_tb_end_tyrano_code]

[tb_image_show  time="1001"  storage="default/warning.png"  width="446"  height="186"  x="409"  y="10"  _clickable_img=""  ]
[tb_image_hide  time="1000"  ]
[s  ]
*q1

[cm  ]
[tb_start_text mode=1 ]
#Сейра
{bold}У нас есть маги в отряде.{/bold}[p]
#
[_tb_end_text]

[jump  storage="scene3.ks"  target="*questionstrust"  ]
*q2

[cm  ]
[tb_start_text mode=1 ]
#Сейра
{bold}Если вы не будете доставлять проблем.{/bold}[p]
#
[_tb_end_text]

[tb_start_text mode=1 ]
#Медейна
{bold}А туман? {/bold}[p]
#
Туман был выбивающимся звеном в этой головоломке. Явно мистический, но чары на него не реагировали. [p]
Медейна позволила убедить себя, что все исчезновения – дело рук людей, но что это тогда за странное явление?[p]

[_tb_end_text]

[jump  storage="scene3.ks"  target="*SeyraDialog"  ]
*DontTrust

[cm  ]
[tb_start_text mode=1 ]
Страх оказался сильнее. В совпадения она не верила. Даже если это давно потерянная сестра во плоти – двадцать лет разлуки сделали своё дело. Они ничего друг о друге не знали. Общая кровь – ещё не гарантия верности. [p]
#Медейна
Что ты тут делаешь? [p]
#

[_tb_end_text]

[chara_mod  name="Seyra"  time="600"  cross="true"  storage="chara/3/SeyraAshamed.png"  ]
[tb_start_text mode=1 ]
#Сейра
{bold}Это долгая история, которую стоило бы рассказывать в месте побезопаснее. {/bold}[p]
#Медейна
{bold}Я бы согласилась, если бы в этом лесу было на семерых пропавших меньше. Я никуда не пойду, пока ты не объяснишь, что происходит.{/bold} [p]
#
Улыбка на лице Сейры погасла.[p]
#Сейра
{bold}Понимаю. {/bold}[p]
#
Она вздохнула, собираясь с мыслями. [p]
Вина и тоска накатили на Медейну. Она столько раз представляла, каким может оказаться долгожданное воссоединение, если случится вовсе – а оно оказалось омрачено тревогой и недоверием. Больше всего хотелось просто сдаться, довериться Сейре – чтобы мечта оказалась правдой. Но это была роскошь, которую Медейна не могла себе позволить.[p]
#Сейра
{bold}С чего бы начать... {/bold}[p]
#
У Медейны было слишком много вопросов, а Сейре бы пришлось рассказывать всю свою биографию, чтобы ответить на них. Поэтому Медейна сузила их до самого конкретного и насущного:[p]
#Медейна
{bold}С того, причастна ли ты к пропаже людей.{/bold}[p]
#
Сейра кивнула. [p]

Было заметно, что признание далось ей не без угрызений совести. Когда рубеж был пройден, детали пошли уже легче:[p]
#Сейра
{bold}У нас тут лагерь, в лесу. {/bold}[p]
#Медейна
{bold}У вас – у разбойников?{/bold}[p]
#
Сейра снова кивнула. [p]
Медейна поджала губы. Если бы не напряжённость обстановки, она бы высказала своё далеко не лестное мнение о занятии сестры. [p]
Воображение тут же нарисовало сцену, как Асмир натыкается в лесу на даму в беде и без задней мысли мчится на помощь, купившись на приманку. Вот же олух![p]
#Медейна
{bold}Я ищу своего друга. Что вы с ним сделали?{/bold}[p]
#Сейра
{bold}Колдуна? Тёмноволосый такой, высокий?{/bold}[p]
#Медейна
{bold}Да, он. {/bold}[p]
#
Голос был сух. Если Асмир мёртв – простить такое она не сможет.[p]
#Сейра
{bold}Он у нас, в плену. {/bold}[p]
#
Медейна выдохнула. Да, ситуация выходила паршивая – но оставалась решаемой. [p]
Она украдкой осмотрелась по сторонам. Понятно, Сейра не была одна – наверняка её дружки-лиходеи наблюдали из засады за трогательной семейной сценой. Однако заметить их так и не вышло. [p]
#Медейна
{bold}Что вы теперь сделаете с нами? {/bold}[p]
#Сейра
{bold}Будем держать в плену, пока не снимемся с места. {/bold}[p]
{bold}Не переживай, мы и так собирались уже двигаться дальше, если б не ваше появление. Подождём несколько дней, потом один из нас прикинется бродячим волшебником, который готов избавить лес от ужасного проклятия, разумеется, за солидную плату. Свернём монатки, а вас отпустим потом, чтобы вы не успели ничего испортить. {/bold}[p]
#
Медейна лишь кивнула. [p]
Происходящее, конечно, мало её радовало, но устраивало. После зловещей неизвестности любые сведения успокаивали. Особенно те, которые обещали свободу и благополучие, пусть и через время. Никаких могущественных проклятий, никакой опасной нечисти – всего лишь дело человеческих рук. [p]
#Медейна
«Асмиру такой расклад не понравится. Ну и пусть. Главное – спасти его шкуру».[p]
#Сейра
{bold}Идём?{/bold}[p]
#
Медейна кивнула.[p]
Тело охватила усталость, а на душу опустился покой, расслабляющий тело до самых кончиков замёрзших пальцев. [p]
[_tb_end_text]

[tb_start_text mode=1 ]
Она не позволила себе поддаться призрачному очарованию, которое несла определённость, проворачивая в голове новые и новые вопросы. [p]
[_tb_end_text]

*questionsDistrust

[tb_start_tyrano_code]
[glink target="q11" text="Почему вы оставили Асмира в живых?" graphic="button.png" x=80 y=540 font_color=0x000000 size=16 width=400 height=70 enterimg="button2.png"]
[glink target="q22" text="Ты уйдёшь вместе с нами?" graphic="button.png" x=80 y=600 font_color=0x000000 size=18 width=400 height=70 enterimg="button2.png"]

[_tb_end_tyrano_code]

[tb_image_show  time="1001"  storage="default/warning.png"  width="446"  height="186"  x="409"  y="10"  _clickable_img=""  ]
[tb_image_hide  time="1000"  ]
[s  ]
*q11

[cm  ]
[tb_start_text mode=1 ]
#Сейра
{bold}Надеялись, что убедим его примкнуть к нам. Чем больше магов в отряде, тем лучше. {/bold}[p]
#
[_tb_end_text]

[jump  storage="scene3.ks"  target="*questionsDistrust"  ]
*q22

[cm  ]
[tb_start_text mode=1 ]
#
Сейра вздохнула. [p]


#Сейра
{bold}Не знаю. Мне нужно подумать..{/bold}[p]
#
[_tb_end_text]

[tb_start_text mode=1 ]
#Медейна
{bold}А туман – ваших рук дело?  {/bold}[p]
#
Он казался необычным, мистическим, и точно не походил на обычное природное явление, но чары на него не реагировали. Могла ли это быть какая-то хитроумная уловка? Алхимический фокус?[p]

[_tb_end_text]

[jump  storage="scene3.ks"  target="*SeyraDialog"  ]
*SeyraDialog

[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/МediWorried.png"  ]
[tb_start_text mode=1 ]
#Сейра
{bold}Что, туман? Обычный туман. Бывает, когда роса выпадает. {/bold}[p]
#Медейна
{bold}Хм.  {/bold}[p]
#
Всколыхнувшиеся было тревоги вновь начали отступать, но на ум пришёл новый вопрос. [p]
#Медейна
{bold}Как ты меня узнала? {/bold}[p]
#Сейра
{bold}Как я могла не узнать тебя, сестра? {/bold}[p]
#Медейна
{bold}Мне было шесть лет, когда мы виделись в последний раз. А тебе – меньше двух. Столько лет прошло.{/bold}[p]

[_tb_end_text]

[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/MediSideEye.png"  ]
[tb_start_text mode=1 ]
{bold}Я и сама едва узнала тебя. {/bold}[p]
{bold}Узнала только потому...{/bold}[p]
{bold}...что именно так тебя и представляла. {/bold}[p]
#
Накатила сонливость. Сильная, стирающая все мысли из головы. [p]

[_tb_end_text]

[if  exp="f.Potion==='Medi'"  ]
[tb_start_text mode=1 ]
Наваждению не удалось взять над Медейной верх – действие зелья еще не развеялось. Она смогла взять себя в руки.[p]
[_tb_end_text]

[endif  ]
[if  exp="f.Potion!=='Medi'"  ]
[tb_eval  exp="f.HP-=1"  name="HP"  cmd="-="  op="t"  val="1"  val_2="undefined"  ]
[tb_start_text mode=1 ]
#
Она зажмурилась, представляя вместо блаженного тумана перед глазами бездыханное тело Асмира. Картинка ранила сердце, но заставила кровь побежать быстрее, а Медейну – собраться с мыслями.[p]
[_tb_end_text]

[endif  ]
[tb_start_text mode=1 ]
Заклинание, изгоняющее нечисть, почти механически вылетело из её рта. [p]
[_tb_end_text]

[chara_mod  name="Seyra"  time="1500"  cross="true"  storage="chara/3/SeyraPhantom.png"  ]
[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/MediScared.png"  ]
[tb_start_text mode=1 ]
#Медейна
Нет![p]
#
Некая частичка души вцепилась в мысль, что Сейра настоящая, а пропажи в лесу – дело рук человеческих, и отпускать эту мысль было больно. [p]
Ещё больнее – расставаться с иллюзией сестры. [p]
Это было нечестно, неправильно, душераздирающе больно. На мгновение Медейна пожалела, что смогла разгадать обман. Лучше бы умереть в блаженном неведении. [p]
Словно почуяв её слабость, облик Сейры вернулся к человеческому[p]

[_tb_end_text]

[chara_mod  name="Seyra"  time="600"  cross="true"  storage="chara/3/Seyra.png"  ]
[tb_start_text mode=1 ]
#Сейра
Сестра? Тебе нездоровится? [p]
#
Мысли Медейны больше ей не принадлежали, будто в дурмане сна. Что-то подсказывало, шептало на ухо: просто скажи, что тебе показалось, и ты поверишь сама. Ужас осознания испарится, как предрассветный кошмар. Просто выбери. Выбери иллюзию. [p]

[_tb_end_text]

[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/MediCry.png"  ]
[tb_start_text mode=1 ]
И у неё не было причин выбирать правду.  Кроме, разве что, одной: спасти шкуру Асмира. [p]
[_tb_end_text]

[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/MediAngry.png"  ]
[tb_start_text mode=1 ]
Стиснув зубы, она отчеканила заклинание. [p]
[_tb_end_text]

[chara_mod  name="Seyra"  time="600"  cross="true"  storage="chara/3/SeyraPhantom.png"  ]
[tb_start_text mode=1 ]
Сейре это не понравилось: её облик снова стал призрачным, но замах её когтей оказался вполне материальным, прочертив на предплечьи глубокие раны. Это последнее, что она успела сделать, прежде чем колдовство развеяло её, как туман. [p]
[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[jump  storage="scene4.ks"  target=""  ]
[s  ]
