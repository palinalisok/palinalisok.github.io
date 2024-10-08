

[stopbgm  time="1000"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="sad.ogg"  ]
[chara_hide_all  time="1000"  wait="true"  ]
[tb_image_hide  time="1000"  ]
[bg  time="1000"  method="crossfade"  storage="ominousforest1.png"  ]
[tb_image_show  time="1000"  storage="default/final2.png"  width="573"  height="246"  x="350"  y="-10"  _clickable_img=""  name="img_4"  ]
[tb_show_message_window  ]
[tb_image_hide  time="2500"  ]
[chara_show  name="Medeyna"  time="1000"  wait="true"  storage="chara/1/MediAngry.png"  width="409"  height="543"  left="60"  top="80"  reflect="false"  ]
[tb_image_show  time="1000"  storage="default/achievmentСамоСохр.png"  width="496"  height="211"  x="389"  y="-10"  _clickable_img=""  name="img_8"  ]
[tb_image_hide  time="4000"  ]
[tb_start_text mode=1 ]
#
Медейна бежала, не оглядываясь, пока в груди не начало жечь. Самый сильный страх, который она когда-либо испытывала в жизни, разливался по венам отравляющей ртутью. [p]
#Медейна
«Я должна бежать, бежать! Иначе я мертва!»[p]
#
Она не думала об Асмире. Страх за свою жизнь оказался сильнее. Не думала о том, что станет с деревней. [p]
#Медейна
«Почему я? Почему я должна сражаться за них? Я не воин».[p]
#
Она остановилась, чтобы отдышаться. К горлу подступала истерика. [p]
#Медейна
«Никогда не слышала о настолько большом гнезде фантомов. Кто меня осудит за то, что я бегу? Мне повезло, что я смогла сбросить дурман, повезло дважды, и я не стану искушать судьбу в третий раз, даже если это значит – сбежать».[p]
#
Страх и отчаяние сменились злостью. На Асмира, который поплатился за свою опрометчивость и неосторожность. На селян, которые ждали, что маги будут спасать их ценой собственной жизни. [p]
#Медейна
«Нет, такая жизнь не по мне. Я просто хотела мирно сидеть в своей мастерской. Разве было недостаточно, что я мастерила им амулеты и варила эликсиры? Чинила крыши, чистила колодцы? Это всё Асмир с его желанием рисковать головой за незнакомцев. Я совсем из другого теста.[p]
Я пользуюсь головой, именно поэтому я жива, и сейчас мой разум говорит мне: хочешь оставаться живой – уноси ноги».[p]
#
Медейна не стала играть в героиню. Пытаться сражаться с остатками фантомов или выискивать в лесу Асмира. Она бежала прочь, не пытаясь выйти к определенному месту – просто чтобы зловещее мерцание тумана осталось за спиной.[p]

[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="forestpathnight.jpg"  ]
[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/MediSideEye.png"  ]
[tb_start_text mode=1 ]
#
Ноги вывели её к дороге, соединяющей Залесье и Большие Ели. [p]
Здесь было спокойнее. Медейна утёрла лицо и зашагала по дороге, пытаясь усмирить в голове ядовитые мысли. [p]
#Медейна
«Я не смогу просто вернуться в Большие Ели. Даже если я бы отправилась в город за подмогой – эти крестьяне поймут, что я не могу их защитить. Вся их дружба и почитание строятся лишь на том, что мы, маги, можем им дать».[p]
#
Воображение рисовало мрачные картины: разочарованные взгляды, медленно превращающиеся в презрительные. Просьбы, из робких превращающиеся в наглые. [p]
Да, ты, колдун, обладаешь силой, но сможешь ли ты что-нибудь противопоставить толпе с факелами и вилами?[p]
#Медейна
«Пусть лучше считают, что я сгинула в том лесу».[p]

[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="domNight.jpg"  ]
[tb_start_text mode=1 ]
#
Когда Медейна дошла до Больших Елей, стояла глубокая ночь. Скрытая чарами, она пробралась в собственный дом, словно воровка. Деньги, вещи, ингредиенты – только необходимое, что поместится в видавшую виды дорожную сумку. [p]
[_tb_end_text]

[if  exp="f.Ring==='Medi'"  ]
[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/MediCry.png"  ]
[tb_start_text mode=1 ]
Мысли об Асмире жгли хуже клейма. Как ни пыталась Медейна убедить себя в том, что каждый сам за себя, это не уменьшало муки совести. Она тихо проскользнула в его комнату, сняла с шеи шнурок, на котором висело его кольцо, и оставила на столе. [p]
#Медейна
«Если он вернётся...»[p]
#
Она отчаянно гнала от себя мысли, что, может быть, оставила его умирать в том проклятом лесу. [p]
Нет, он вернётся.[p]
Может быть, он даже бы смог простить. Но прежнее доверие и уважение – нет, Медейна знала, пути назад нет.[p]

[_tb_end_text]

[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/МediWorried.png"  ]
[endif  ]
[if  exp="f.GershviRomance>=6"  ]
[tb_start_text mode=1 ]
В голове вдруг всплыл образ Гершви. [p]
#Медейна
«Мы бы могли отправиться в путь вдвоём».[p]
#
Мысль наполнила её сожалением. Но разве стоило случайное знакомство того, чтобы возвращаться в проклятый лес, откуда она еле унесла ноги?[p]
[_tb_end_text]

[endif  ]
[if  exp="f.LoyaRomance>=2"  ]
[tb_start_text mode=1 ]
#
В голове вдруг всплыл образ Лои.[p]
#Медейна
«Надеюсь, она смогла уцелеть».[p]
#

[_tb_end_text]

[endif  ]
[tb_start_text mode=1 ]
#
Выскользнув из здания, которое не успело стать для неё настоящим домом, она направилась по другой дороге, ведущей к большому торговому тракту. [p]
Она обернулась на мгновение, окидывая Большие Ели прощальным взглядом.[p]
#Медейна
«Могло ли это место стать для меня домом?»[p]
#
Если бы обстоятельства сложились по-другому. Если бы не эти проклятые фантомы. [p]
Медейна сжала губы и уверено зашагала прочь, осознавая, что больше сюда не вернётся. Не узнает, в порядке ли Асмир. Что стало с Залесьем. Побеждены ли фантомы. [p]
На сердце лежал тяжкий камень вины и позора – но оно билось, живое и невредимое. [p]


[_tb_end_text]

[chara_hide  name="Medeyna"  time="1000"  wait="true"  pos_mode="true"  ]
[jump  storage="endTitles.ks"  target=""  ]
[s  ]
