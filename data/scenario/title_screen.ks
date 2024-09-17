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

[buttonHover  soundVolume="0.5"  storage="title_screen.ks"  target="*start"  graphic="button/buttonstart.png"  width="345"  height="129"  graphicH="button/buttonstart2.png"  x="429"  y="259"  _clickable_img=""  name="img_9"  ]
[buttonHover  soundVolume="0.5"  storage="title_screen.ks"  target="*load"  graphic="button/buttonload.png"  width="361"  height="131"  graphicH="button/buttonload2.png"  x="429"  y="369"  _clickable_img=""  ]
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
