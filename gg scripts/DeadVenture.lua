function menu()
  local t = gg.choice({
    "Много денег",
    "Бесконечный бензин, патроны",
    "Бесконечное HP машины",
    "Изменение цвета интерфейса",
    "Информация о скрипте",
    "Выход"
  }, nil, "Мой скрипт")
  if t == nil then return end
  if t == 1 then Coin() end
  if t == 2 then AmmoMenu() end
  if t == 3 then CarHP() end
  if t == 4 then ColorMenu() end
  if t == 5 then InfoScript() end
  if t == 6 then os.exit() end
end

function Coin()

  local input = gg.prompt({
    "Введи количество денег"
  }, nil, {"number"})

  if input == nil then return end

  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
  gg.searchNumber(input[1], gg.TYPE_DWORD)

  gg.toast("Измени количество денег(30 сек)")
  gg.sleep(25000)
  gg.toast("Зайди в меню чтоб зомби не сломали машину, у тебя 5 сек")
  gg.sleep(5000)

  local input2 = gg.prompt({
    "Сколько стало?"
  }, nil, {"number"})

 gg.refineNumber(input2[1], gg.TYPE_DWORD)

 gg.toast("Подними ещё(30 сек)")
 gg.sleep(25000)
 gg.toast("Зайди в меню, у тебя 5 сек")
 gg.sleep(5000)

 local input3 = gg.prompt({
   "Сколько стало?"
 }, nil, {"number"})

 gg.refineNumber(input3[1], gg.TYPE_DWORD)

 gg.toast("Подними ещё раз(30 сек)")
 gg.sleep(25000)
 gg.toast("Зайди в меню, у тебя 5 сек")
 gg.sleep(5000)

gg.editAll("2147000000", gg.TYPE_DWORD)
gg.toast("Зайди в меню, и купи любое улучшение для машины чтоб значение обновилось")
end

function AmmoMenu()

  local t = gg.choice({
    "THE BOX+MACHINE GUN",
    "THE BOX+SHOTGUN",
    "THE BOX+ROCKET LAUNCHER",
    "THE BOX+ELECTRIC GUN",
    "THE HUNTER+MACHINE GUN",
    "THE HUNTER+SHOTGUN",
    "THE HUNTER+ROCKET LAUNCHER",
    "THE HUNTER+ELECTRIC GUN",
    "THE BEHEMOTH+MACHINE GUN",
    "THE BEHEMOTH+SHOTGUN",
    "THE BEHEMOTH+ROCKET LAUNCHER",
    "THE BEHEMOTH+ELECTRIC GUN",
    "Назад"
  }, nil, "Выбери машину+оружие")
  if t == nil then return end
  if t == 1 then ammo1() end
  if t == 2 then ammo2() end
  if t == 3 then ammo3() end
  if t == 4 then ammo4() end
  if t == 5 then ammo5() end
  if t == 6 then ammo6() end
  if t == 7 then ammo7() end
  if t == 8 then ammo8() end
  if t == 9 then ammo9() end
  if t == 10 then ammo10() end
  if t == 11 then ammo11() end
  if t == 12 then ammo12() end
end

function ammo1()

gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("50;50;1.5;0;350D;40D;40D;400D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("999;50;1.5;0", gg.TYPE_FLOAT)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("100000;999;40;400", gg.TYPE_DWORD)
gg.processResume()
gg.toast("Готово, у машины бесконечный бензин, у оружия бесконечные патроны, и урон 100к")
end

function ammo2()

gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("50;50;1.5;0;600D;25D;25D;160D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("999;50;1.5;0", gg.TYPE_FLOAT)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("100000;999;25;160", gg.TYPE_DWORD)
gg.processResume()
gg.toast("Готово, у машины бесконечный бензин, у оружия бесконечные патроны, урон 100к")
end

function ammo3()

gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("50;50;1.5;0;600D;20D;20D;90D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("999;50;1.5;0", gg.TYPE_FLOAT)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("100000;999;20;90", gg.TYPE_DWORD)
gg.processResume()
gg.toast("Готово, у машины бесконечный бензин, у оружия бесконечные патроны, и урон 100к")
end


function ammo4()

gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("50;50;1.5;0;600D;25D;25D;150D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("999;50;1.5;0", gg.TYPE_FLOAT)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("100000;999;25;150", gg.TYPE_DWORD)
gg.processResume()
gg.toast("Готово, у машины бесконечный бензин, у оружия бесконечные патроны, и урон 100к")
end

function ammo5()

gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("65;65;1.5;0;350D;40D;40D;400D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("999;65;1.5;0", gg.TYPE_FLOAT)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("100000;999;40;400", gg.TYPE_DWORD)
gg.processResume()
gg.toast("Готово, у машины бесконечный бензин, у оружия бесконечные патроны, урон 100к")
end

function ammo6()

gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("65;65;1.5;0;600D;25D;25D;160D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("999;65;1.5;0", gg.TYPE_FLOAT)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("100000;999;25;160", gg.TYPE_DWORD)
gg.processResume()
gg.toast("Готово, у машины бесконечный бензин, у оружия бесконечные патроны, и урон 100к")
end

function ammo7()

gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("65;65;1.5;0;600D;20D;20D;90D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("999;65;1.5;0", gg.TYPE_FLOAT)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("100000;999;20;90", gg.TYPE_DWORD)
gg.processResume()
gg.toast("Готово, у машины бесконечный бензин, у оружия бесконечные патроны, и урон 100к")
end

function ammo8()

gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("65;65;1.5;0;600D;25D;25D;150D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("999;65;1.5;0", gg.TYPE_FLOAT)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("100000;999;25;150", gg.TYPE_DWORD)
gg.processResume()
gg.toast("Готово, у машины бесконечный бензин, у оружия бесконечные патроны, и урон 100к")
end

function ammo9()

gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("75;75;1.5;0;350D;40D;40D;400D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("999;75;1.5;0", gg.TYPE_FLOAT)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("100000;999;40;400", gg.TYPE_DWORD)
gg.processResume()
gg.toast("Готово, у машины бесконечный бензин, у оружия бесконечные патроны, урон 100к")
end

function ammo10()

gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("75;75;1.5;0;600D;25D;25D;160D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("999;75;1.5;0", gg.TYPE_FLOAT)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("100000;999;25;160", gg.TYPE_DWORD)
gg.processResume()
gg.toast("Готово, у машины бесконечный бензин, у оружия бесконечные патроны, урон 100к")
end

function ammo11()

gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("75;75;1.5;0;600D;20D;20D;90D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("999;75;1.5;0", gg.TYPE_FLOAT)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("100000;999;20;90", gg.TYPE_DWORD)
gg.processResume()
gg.toast("Готово, у машины бесконечный бензин, у оружия бесконечные патроны, урон 100к")
end

function ammo12()

gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("75;75;1.5;0;600D;25D;25D;150D::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("999;75;1.5;0", gg.TYPE_FLOAT)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("100000;999;25;150", gg.TYPE_DWORD)
gg.processResume()
gg.toast("Готово, у машины бесконечный бензин, у оружия бесконечные патроны, урон 100к")
end

function CarHP()

  local t = gg.choice({
    "THE BOX",
    "THE HUNTER",
    "THE BEHEMOTH",
    "Назад"
  }, nil, "Выбери свою машину")
  if t == nil then return end
  if t == 1 then BOX() end
  if t == 2 then HUNTER() end
  if t == 3 then BEHEMOTH() end
end

function BOX()

gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("0;900;900;0;9;1::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("900", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("9999999;900", gg.TYPE_DWORD)
gg.processResume()
gg.toast("Готово, у машины 9999999 здоровья(стандарт 900)")
end

function HUNTER()

gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("0;1500;1500;0;9;1::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("1500", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("9999999;1500", gg.TYPE_DWORD)
gg.processResume()
gg.toast("Готово, у машины 9999999 здоровья(стандарт 1500)")
end

function BEHEMOTH()

gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("0;1900;1900;0;9;1::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("1900", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("9999999;1900", gg.TYPE_DWORD)
gg.processResume()
gg.toast("Готово, у машины 9999999 здоровья(стандарт 1900)")
end

function ColorMenu()

  local t = gg.choice({
    "🔍Найти цвета",
    "🔴Красный",
    "🟢Зеленый",
    "🔵Синий",
    "🟡Желтый",
    "🟣Фиолет",
    "⚫Чёрный",
    "⚪Белый",
    "♻️Стандарт",
    "Назад"
  }, nil, "Цвет интерфейса")

  if t == nil then return end

  if t == 1 then
   gg.clearResults()

    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("2;2;2::9" , gg.TYPE_FLOAT)
    gg.toast ("Цвета найдены")
  end

  if t >= 2 and t <= 9 then

  local r = gg.getResults(10)
  if #r == 0 then
   gg.toast("Сначало нажми 'Найти цвета'")
   return
end

   local color = ""

if t == 2 then color = "255;0;0" end
if t == 3 then color = "0;255;0" end
if t == 4 then color = "0;0;255" end
if t == 5 then color = "255;255;0" end
if t == 6 then color = "255;0;255" end
if t == 7 then color = "0;0;0" end
if t == 8 then color = "255;255;255" end
if t == 9 then color = "2;2;2" end

gg.editAll(color, gg.TYPE_FLOAT)
gg.toast("Цвет изменён")

   end

end

function InfoScript()
  gg.alert("Мой скрипт\n версия 1.0\n функции: Много денег\n Бесконечные патроны, бензин\n Бесконечное HP машин\n Изменение цвета интерфейса\n Автор:𓆩𓅃ᦋ⃟ꪹꪮ⃢ꪑ⃞ỉꪶ⃝ꪖ𓆪 \n сделано для Dead Venture v1.2.4, armeadi-v7a, Android TV 11")
end

while true do 
   if gg.isVisible(true) then
    gg.setVisible(false)
    menu()
  end
end
