[_tb_system_call storage=system/_title_screen.ks]

[hidemenubutton]

[tb_clear_images]

[tb_keyconfig  flag="0"  ]
[varSetting  valueRandom="0-0"  varName="sf.langTranslate"  valueText="ru"  arithmeticOperations="="  ]
[timeSetting  time="08:00"  timeSpeed="0.01"  year="2024"  month="11"  day="29"  realTime="true"  ]
[tb_hide_message_window  ]
[bg  storage="titl.jpg"  ]
[playbgm  volume="50"  time="10000"  loop="true"  fadein="true"  storage="Upon-the-Greenwood-_1_.ogg"  ]
*title

[buttonHover  soundVolume="0.5"  storage="title_screen.ks"  target="*start"  graphic="button/start_game.png"  width="197"  height="113"  graphicH="button/start_game_h.png"  x="533"  y="368"  _clickable_img="storageSe"  ]
[buttonHover  soundVolume="0.5"  storage="title_screen.ks"  target="*load"  graphic="button/load_game.png"  width="197"  height="105"  graphicH="button/load_h.png"  x="533"  y="500"  _clickable_img="storageSe"  ]
[s  ]
*start

[showmenubutton]

[cm  ]
[tb_keyconfig  flag="1"  ]
[jump  storage="scene1.ks"  target=""  ]
[s  ]
*load

[cm  ]
[showload]

[jump  target="*title"  storage=""  ]
[s  ]
