

[chara_hide_all  time="1000"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="ominousforest1.png"  ]
[tb_image_show  time="1000"  storage="default/final7.png"  width="550"  height="235"  x="360"  y="0"  _clickable_img=""  ]
[tb_image_hide  time="4000"  ]
[chara_show  name="Medeyna"  time="1000"  wait="true"  storage="chara/1/МediWorried.png"  width="409"  height="543"  left="80"  top="80"  reflect="false"  ]
[tb_start_text mode=1 ]
#
Чары вели её в нужном направлении, но ноги Медейна волочила из чистого упрямства. Победа над фантомами несколько подняла её боевой дух, но даже он быстро выветривался от обычной усталости. [p]
#Медейна
«Я просто. Хочу. Чтоб это. Наконец. Закончилось!».[p]
#
Ничего не будет кончено, пока она не узнает о судьбе Асмира. Она могла бы вернуться в Залесье, чтобы перевести дух, но навязчивая мысль, что каждая потерянная минута может оказаться фатальной, подгоняла её. [p]
Незримая нить чар в груди натянулась, затрепетав, а в следущее мгновение из-за деревьев показался высокий силуэт. [p]

[_tb_end_text]

[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/MediAngry.png"  ]
[chara_show  name="Asmir"  time="1000"  wait="true"  storage="chara/2/asmSurprised.png"  width="705"  height="708"  left="709"  top="40"  reflect="false"  ]
[tb_start_text mode=1 ]
Они одновременно заорали изгоняющее заклинание, но ничего не изменилось. Ещё мгновение просто смотрели друг на друга. А потом Асмир засмеялся, облегчённо и тепло. [p]
[_tb_end_text]

[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/MediSmile.png"  ]
[chara_mod  name="Asmir"  time="600"  cross="true"  storage="chara/2/asm.png"  ]
[tb_start_text mode=1 ]
#Асмир
{bold}Меди? Что ты тут делаешь?{/bold}[p]
#
Медейна проинспектировала его внимательным взглядом. Он выглядел потрёпанно, но, по крайней мере, стоял на своих двоих. Был жив и почти здоров, и потому она позволила себе гневную тираду:[p]

[_tb_end_text]

[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/MediAngry.png"  ]
[tb_start_text mode=1 ]
#Медейна
{bold}Спасаю твою чёртову задницу! Я ношусь по этому проклятому лесу, отбиваясь от фантомов и разыскивая твой хладный труп, пока ты – позволь спросить, где тебя черти носили всё это время?!{/bold}[p]
#
Она шагнула к нему, вцепилась в плечи и встряхнула из последних сил. Асмир снова издал счастливый смешок и удивительным образом превратил даже этот жест в объятия. [p]
#Асмир
{bold}Ты цела? {/bold}[p]

[_tb_end_text]

[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/MediSmile.png"  ]
[tb_start_text mode=1 ]
#Медейна
{bold}Готова развалиться на части прямо здесь. {/bold}[p]
#
#Асмир
{bold}Не стоило тебе сюда соваться, здесь опасно.{/bold}[p]
#Медейна
{bold}Ещё одно такое высказывание, умник, и я закончу то, что не доделали фантомы! Я, кстати, разделалась с ними.{/bold}[p]
#
Не без самодовольства она погрелась под его восхищённым взглядом, как будто это был очередной дурацкий спор о том, кто сможет съесть больше пирожков или первым добежать до колодца. [p]
#Асмир
{bold}А я всегда говорил, что у тебя есть талант.{/bold}[p]
#Медейна
{bold}Надеюсь, это был последний раз, когда он мне пригодился. {/bold}[p]
#Асмир
{bold}Значит, это всё?{/bold}[p]
#Медейна
{bold}Да. Осталось вернуться в деревню и не свернуть себе шею по дороге. Этот чёртов лес путает меня. Кажется, я успела тысячу кругов вокруг одного дерева намотать за эту ночь.{/bold}[p]
#
Асмир нахмурился.[p]
#Асмир
{bold}Мне кажется, что прошло больше, чем ночь. Фантомы путают чувство времени не меньше, чем направления. {/bold}[p]
#Медейна
{bold}Сейчас с ними покончено. Должны выбраться без проблем. {/bold}[p]

[_tb_end_text]

[if  exp="f.LL==='Loya'"  ]
[tb_start_text mode=1 ]
#
Она вспомнила Лою, которая не побоялась вернуться в лес, чтобы помочь ей найти дорогу обратно.[p]
#Медейна
«Надеюсь, с ней всё в порядке».[p]
#
Несмотря на то, что они были едва знакомы, Медейна поймала себя на мысли, что ей не терпится вернуться в деревню даже не затем, чтобы наконец отдохнуть, а чтобы вновь увидеть Лою. [p]

[_tb_end_text]

[endif  ]
[if  exp="f.LL==='Asmir'"  ]
[tb_start_text mode=1 ]
#
Асмир подал ей руку, и Медейна молча переплела свои пальцы с его. Тёплое прикосновение было таким нежным, что задрожали пальцы. Непрошенная слеза потекла по щеке. Мысль о том, что могла бы потерять его. [p]

[_tb_end_text]

[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/MediUpset.png"  ]
[tb_start_text mode=1 ]
Асмир шагнул ближе, обнял, не говоря ни слова, безмолвно всё понимая. А затем подхватил её на руки и зашагал по лесу. [p]

[_tb_end_text]

[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/MediSmile.png"  ]
[tb_start_text mode=1 ]
#Медейна
{bold}Что ты делаешь? {/bold}[p]
#Асмир
{bold}Отдыхай. Набегалась на сегодня. {/bold}[p]
#
Медейна прижалась к нему, впервые за долгое время позволяя телу расслабиться.[p]

[_tb_end_text]

[endif  ]
[tb_start_text mode=1 ]
#
Медленно они продвигались туда, где, предположительно, находилось Залесье. Асмир рассказывал о своих злоключениях. [p]
#Асмир
{bold}Я попался в ловушку фантомов. Не знаю, сколько дней пробыл под их чарами, прежде чем осознал, что что-то не так. Едва унёс ноги. Потом ещё и заблудился в этом чёртовом лесу. Как ни идёшь – всё равно выходишь к туману. {/bold}[p]
{bold}Я решил затаиться и пытаться уничтожать их по одному в отдалении от логова, когда они выходят на охоту. {/bold}[p]
#Медейна
{bold}Почему тогда не нашёл меня, когда они меня заманили?{/bold}[p]



[_tb_end_text]

[chara_mod  name="Asmir"  time="600"  cross="true"  storage="chara/2/asmUpset.png"  ]
[tb_start_text mode=1 ]
Асмир виновато отвёл взгляд. [p]
#Асмир
{bold}Я увидел твой силуэт издалека и решил, что ты фантом. Решил не лезть в драку, потому что боялся, что снова попаду под чары. Извини. {/bold}[p]
#
Медейна пожала плечами.[p]
#Медейна
{bold}Уже не важно. {/bold}[p]

[_tb_end_text]

[chara_mod  name="Asmir"  time="600"  cross="true"  storage="chara/2/asm.png"  ]
[jump  storage="AllOk.ks"  target=""  ]
[s  ]
