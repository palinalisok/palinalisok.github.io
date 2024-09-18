[_tb_system_call storage=system/_final3.ks]

[chara_hide_all  time="1000"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="mysticforest1.jpg"  ]
[chara_show  name="Medeyna"  time="1000"  wait="true"  storage="chara/1/МediWorried.png"  width="408"  height="542"  left="60"  top="80"  reflect="false"  ]
[tb_image_show  time="1000"  storage="default/final3.png"  width="473"  height="201"  x="350"  y="-10"  _clickable_img=""  name="img_3"  ]
[tb_image_hide  time="2000"  ]
[tb_start_text mode=1 ]
#
Чары вели её в нужном направлении, но Медейна волочила ноги из чистого упрямства, то и дело оборачиваясь и проверяя, нет ли за ней погони. Возможно, стоило вернуться в деревню и перевести дух, но навязчивая мысль, что каждая потерянная минута может оказаться фатальной, подгоняла её. [p]
Незримая нить чар в груди натянулась, затрепетав, а в следущее мгновение из-за деревьев показался высокий силуэт. [p]

[_tb_end_text]

[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/MediScared.png"  ]
[chara_show  name="Asmir"  time="1000"  wait="true"  storage="chara/2/asmSurprised.png"  width="740"  height="740"  left="649"  top="20"  reflect="false"  ]
*ReincarnationPoint

[tb_start_text mode=1 ]
Они одновременно заорали изгоняющее заклинание, но ничего не изменилось. Ещё мгновение просто смотрели друг на друга. А потом Асмир засмеялся, облегчённо и тепло. [p]
[_tb_end_text]

[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/MediSmile.png"  ]
[chara_mod  name="Asmir"  time="600"  cross="true"  storage="chara/2/asm.png"  ]
[tb_start_text mode=1 ]
#Асмир
{bold}Меди? Что ты тут делаешь?{/bold}[p]
#
[_tb_end_text]

[if  exp="f.LL==='Asmir'"  ]
[tb_start_text mode=1 ]
#
Вместо ответа она просто обняла его, утыкаясь лицом в грязный, но панущий уютом плащ. [p]
#Медейна
{bold}Слава богам, жив.{/bold}[p]
#
Тёплые ладони мягко скользнули по её спине. Десяток секунд они просто молчали. Медейна позволила себе поддаться ощущению покоя и безопасности, хоть лес ещё таил угрозу. Потом спросила:[p]

[_tb_end_text]

[endif  ]
[tb_start_text mode=1 ]
#Медейна
{bold}Ты в порядке? Что произошло?{/bold}[p]
#Асмир
{bold}Жить буду. Я попался в ловушку фантомов. Не знаю, сколько дней пробыл под их чарами, прежде чем осознал, что что-то не так. Едва унёс ноги. Потом ещё и заблудился в этом чёртовом лесу. Как не идёшь – всё равно выходишь к туману. Я решил затаиться и пытаться уничтожать их по одному в отдалении от логова, когда они выходят на охоту. {/bold}[p]
#Медейна
{bold}Их было ещё больше? Я думала, мне и так не повезло с огромным гнездом.{/bold}[p]
#Асмир
{bold}Особей двенадцать, наверное. Ты цела? {/bold}[p]
#Медейна
{bold}Это была худшая ночь в моей жизни. Но, наверное, нужно порадоваться, что мы оба в порядке.{/bold}[p]
#Асмир
{bold}Мне кажется, что прошло больше, чем ночь. Фантомы путают чувство времени не меньше, чем направления. {/bold}[p]

[_tb_end_text]

[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/MediSideEye.png"  ]
[tb_start_text mode=1 ]
#Медейна
{bold}Потрясающе. {/bold}[p]
[_tb_end_text]

[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/MediNormal.png"  ]
[tb_start_text mode=1 ]
#
Здесь, рядом с Асмиром, впрочем, она чувствовала облегчение: её главный страх не претворился в жизнь. [p]
Она пересказала Асмиру свои злоключения. [p]
#Асмир
{bold}В гнезде осталось совсем немного особей. Надо уничтожить его, иначе они сбегут отсюда и обустроятся в другом месте, где снова размножатся и будут терроризировать другую деревню. {/bold}[p]
#
Медейна не сдержала досадный вздох. Последнее, что она хотела делать – возвращаться туда, откуда едва унесла ноги. [p]
#Асмир
{bold}Но, я вижу, ты еле на ногах держишься. {/bold}[p]
#Медейна
{bold}Как будто ты свеж и полон сил!{/bold}[p]
#Асмир
{bold}Думаю, парочку фантомов осилю. А ты возвращайся в деревню. {/bold}[p]

[_tb_end_text]

[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/MediAngry.png"  ]
[chara_mod  name="Asmir"  time="600"  cross="true"  storage="chara/2/asmNormal.png"  ]
[tb_start_text mode=1 ]
#Медейна
{bold}Ещё чего! Больше мы не разделимся, пока с этими гадами не будет покончено. {/bold}[p]
#
Асмир хотел было возразить, но передумал. [p]
#Асмир
{bold} Ладно, думаю, ты права. Вдвоём безопаснее. {/bold}[p]
#
Он расстелил на земле свой изодранный плащ и пригласил её присесть. Высыпал сверху немногочисленное содержимое собственной сумки.[p]

[_tb_end_text]

[chara_mod  name="Medeyna"  time="600"  cross="true"  storage="chara/1/MediNormal.png"  ]
[tb_start_text mode=1 ]
#Асмир
{bold}У меня остался буквально глоток укрепляющего зелья. И вот ещё ягод собрал, перекуси, если хочешь.{/bold}[p]
#
Сцена вызвала жуткое чувство дежавю, и Медейна использовала чары, опасаясь, что снова поддалась иллюзии фантомов. Асмир хмыкнул, но не возражал – колдовство подтвердило, что он настоящий. [p]
#Медейна
{bold}Мне кажется, я ещё долго буду в случайные моменты думать, насколько реально происходящее. {/bold}[p]
#Асмир
{bold}Будешь везде ходить с факелом горящего красноцвета? {/bold}[p]
#Медейна
{bold}А вдруг он тоже иллюзорный? {/bold}[p]
#Асмир
{bold}Остаются только чары{/bold}. [p]
#Медейна
{bold}Думаю, это пока – меньшая из наших проблем. {/bold}[p]
#
Вдвоём они провели ревизию оставшихся запасов, которые могли оказаться полезными, и после короткой передышки отправились заканчивать начатое.[p]
#
Асмир придумал план – он чувствовал себя в своей стихии в кишащем нечистью лесу, и Медейна даже не стала припоминать ему, кто угодил в ловушку фантомов и несколько дней блуждал основательно потрёпанным по лесу. Вдвоём они смогли покончить с гнездом фантомов. [p]

[_tb_end_text]

[jump  storage="AllOk.ks"  target=""  ]
[s  ]
