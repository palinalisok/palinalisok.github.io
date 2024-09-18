[_tb_system_call storage=system/_Final1.ks]

[stopbgm  time="1000"  ]
[chara_hide  name="Medeyna"  time="1000"  wait="true"  pos_mode="false"  ]
[chara_show  name="Medeyna"  time="1000"  wait="true"  storage="chara/1/MediScared.png"  width="409"  height="543"  left="40"  top="80"  reflect="false"  ]
[tb_image_show  time="1000"  storage="default/final1.png"  width="473"  height="201"  x="400"  y="0"  _clickable_img=""  name="img_3"  ]
[tb_image_hide  time="3000"  ]
[if  exp="f.Knife==='Medi'"  ]
[tb_image_show  time="1000"  storage="default/achievmentFatalGreed.png"  width="497"  height="212"  x="390"  y="0"  _clickable_img=""  name="img_6"  ]
[tb_image_hide  time="3000"  ]
[endif  ]
[tb_start_text mode=1 ]
Предсказание оказалось верным. Вилы пронзили её – в последние мгновения своей жизни Медейна почувствовала, как над ней нависают фантомы.[p]
[_tb_end_text]

[chara_mod  name="Medeyna"  time="900"  cross="true"  storage="chara/1/MediDead.png"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="sad.ogg"  ]
[tb_start_text mode=1 ]
Тело медленно осело в траву, пока фантомы вытягивали все жизненные силы, уже не заботясь, чтобы растянуть пиршество подольше. Для Медейны всё было кончено. [p]
[_tb_end_text]

[chara_hide_all  time="1000"  wait="true"  ]
[bg  time="1000"  method="crossfade"  storage="mysticforest1.jpg"  ]
[if  exp="f.AsmirSurv===0"  ]
[chara_show  name="Asmir"  time="1000"  wait="true"  storage="chara/2/asmDead.png"  width="641"  height="641"  left="709"  top="60"  reflect="false"  ]
[tb_start_text mode=1 ]
Та же судьба постигла и её товарища, но ещё раньше. Пробыв в логове фантомов несколько дней, он всё же смог очнуться и понять, что происходит, но был слишком ослаблен к тому моменту.  [p]
[_tb_end_text]

[if  exp="f.LL==='Asmir'"  ]
[tb_image_show  time="1000"  storage="default/achievmentТотСвет.png"  width="551"  height="235"  x="320"  y="-40"  _clickable_img=""  name="img_19"  ]
[tb_image_hide  time="3000"  ]
[tb_start_text mode=1 ]
Может, было и к лучшему, что они не знали, какая судьба постигла другого, и умерли с надеждой в сердце.[p]
[_tb_end_text]

[endif  ]
[chara_hide  name="Asmir"  time="1000"  wait="true"  pos_mode="true"  ]
[tb_start_text mode=1 ]
Жители Залесья с тревогой ждали возвращения магов из леса, но вскоре стало ясно, что этого не случится.  Что бы за зло ни поселилось в лесу, оно оказалось им не по зубам.[p]
[_tb_end_text]

[if  exp="f.LoyaSurv>2"  ]
[tb_start_text mode=1 ]
Единственной отрадой было возвращение семерых сгинувших селян. Вывела их Лоя. Она же и рассказала то, что поведала ей о фантомах колдунья.[p]
Вняв словам, селяне собрали весь красноцвет, что смогли добыть: из старых запасов, наменяли в соседних деревнях, купили на ярмарке, сложив сбережения, а кто-то из самых храбрецов даже ходил за ним в лес, старательно избегая тумана. [p]
Чтобы изгнать зло, собралась вся деревня, за исключением детей и стариков. Вооруженные дымящими факелами из волшебной травы, они смогли разрушить гнездо фантомов и уничтожить последних из них, хотя отчаянно сопротивляющаяся нечисть утянула за собой на тот свет нескольких людей. [p]
Когда с фантомами было покончено, селяне прочесали лес и обнаружили тела погибших магов. Их с почестями похоронили на деревенском кладбище.   [p]

[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="cemetery.jpg"  ]
[l  ]
[endif  ]
[if  exp="f.LoyaSurv===2"  ]
[tb_start_text mode=1 ]
Единственной отрадой было возвращение пятерых сгинувших мужиков. Их рассказы о произошедшем были путаными и сбивчивыми; каждый рассказывал историю по-разному. Неизменным оставалось одно: в лесу поселилось коварное зло, которого лучше избегать и в лес не соваться даже под страхом смерти. [p]
И то, что из лесу вывела их Лоя – храбрая девушка. К сожалению, духи леса настигли пытавшихся сбежать селян, и сама Лоя погибла.[p]
Чаща стала запретной зоной – никто не больше не рисковал сунуться под сень старых деревьев, туда, где клубился загадочный туман. Без даров леса жителям пришлось затянуть пояса. Влияние нечисти вскоре распространилось на пролегающую сквозь лес дорогу, отрезав деревню, и через несколько поколений она вымерла.[p]

[_tb_end_text]

[endif  ]
[if  exp="f.LoyaSurv<2"  ]
[tb_start_text mode=1 ]
Не вернутся ни маги, ни сгинувшие селяне. Никто так и не узнал, что там произошло. [p]
Чаща стала запретной зоной – никто не больше не рисковал сунуться под сень старых деревьев, туда, где клубился загадочный туман. Без даров леса жителям пришлось затянуть пояса. Влияние нечисти вскоре распространилось на пролегающую сквозь лес дорогу, отрезав деревню, и через несколько поколений она вымерла.[p]

[_tb_end_text]

[tb_image_show  time="1000"  storage="default/achievmentКладбище.png"  width="551"  height="235"  x="350"  y="-10"  _clickable_img=""  name="img_35"  ]
[tb_image_hide  time="3000"  ]
[endif  ]
[endif  ]
[if  exp="f.AsmirSurv>0"  ]
[chara_show  name="Asmir"  time="1000"  wait="true"  storage="chara/2/asmWounded.png"  width="641"  height="641"  left="640"  top="60"  reflect="false"  ]
[tb_start_text mode=1 ]
Асмир не знал, что произошло с подругой. Он пробыл под влиянием фантомов несколько дней, прежде чем осознал, что происходит. Справиться с дюжиной духов в их логове он не смог – но смог сбежать. Ослабленый, раненый и лишённый магических сил, он заблудился в дремучей чаще. Несколько дней блуждал в лесу, старательно избегая тумана. [p]
Порой ему чудился шум и знакомый женский голос. Решив, что это происки фантомов, Асмир пошёл прочь. [p]
Наконец ему улыбнулась удача. Лес проредел, и вскоре он выбрался к деревне, где его накормили, обработали раны и рассказали последние новости. [p]


[_tb_end_text]

[bg  time="1000"  method="crossfade"  storage="Zalasye.jpg"  ]
[chara_hide  name="Asmir"  time="1000"  wait="true"  pos_mode="false"  ]
[tb_start_text mode=1 ]

Новости его не обрадовали. Беспокоясь за Медейну, он рвался снова отправиться в лес. На этот раз, впрочем, он поступил умнее: собрал селян, наказал им собрать весь красноцвет, что найдут – и вооружённой толпой они отправились покончить с логовом фантомов. [p]
[_tb_end_text]

[if  exp="f.LoyaSurv>2"  ]
[tb_start_text mode=1 ]
Асмиру помогала Лоя – девушка, которая вывела селян из леса, следуя указаниям Медейны. Она хотела отблагодарить ведьму и искренне тревожилась за её судьбу.[p]
В этот раз Асмир понимал, с чем предстоит столкнуться, и был готов. Под его руководством с фантомами было покончено. [p]

[_tb_end_text]

[endif  ]
[if  exp="f.LoyaSurv===2"  ]
[tb_start_text mode=1 ]
Селяне не очень-то рвались в лес, особенно после рассказов тех немногих, кто смог выбраться – их вывела Лоя, следуя наставлениям колдуньи. К сожалению, по пути на них напали фантомы, убив нескольких мужиков и саму девушку.[p]
Впрочем, Асмиру не было дела до предрассудков селян. Подготовившись к бою и вооружив немногих храбрецов, он быстро покончил с логовом фантомов. [p]
После этого люди прочесали лес и нашли тела погибших.[p]
Местные похоронили своих на деревенском кладбище. [p]

[_tb_end_text]

[endif  ]
[if  exp="f.LoyaSurv<2"  ]
[tb_start_text mode=1 ]
Селяне не очень-то рвались в лес, где сгинули их друзья и родные, но были и те, кто рвался спасти их – или отомстить. [p]
В этот раз Асмир понимал, с чем предстоит столкнуться, и был готов. Под его руководством с фантомами было покончено. [p]
После этого люди прочесали лес и нашли всех восьмерых погибших. [p]
Местные похоронили своих на деревенском кладбище. [p]

[_tb_end_text]

[endif  ]
[tb_start_text mode=1 ]
Асмир же забрал тело Медейны в Большие Ели, где ухаживал за могилой до конца своих дней. [p]
[_tb_end_text]

[endif  ]
[jump  storage="endTitles.ks"  target=""  ]
[s  ]
