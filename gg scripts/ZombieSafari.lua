function menu()
  local t = gg.choice({
    "Цвет интерфейса",
    "Много всего",
    "Прокачка машин",
    "Улучшения оружий",
    "Информация о скрипте",
    "Выход"
  },nil, "Мой скрипт")
  if t == nil then return end
  if t == 1 then ColorMenu() end
  if t == 2 then GemsMenu() end
  if t == 3 then UpgradeCar() end
  if t == 4 then GunMenu() end
  if t == 5 then InfoScript() end
  if t == 6 then os.exit() end
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

function GemsMenu()

  local t = gg.choice({
    "Много алмазов",
    "Много XP",
    "Большой уровень",
    "Назад"
  }, nil, "Много всего")

  if t == nil then return end

  if t == 1 then Diamonds() end
  if t == 2 then XP() end
  if t == 3 then LevelHack() end

end

function Diamonds()

  local input = gg.prompt({
    "Введи количество алмазов"
  }, nil, {"number"})

  if input == nil then return end

  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
  gg.searchNumber(input[1], gg.TYPE_DWORD)

  gg.toast("Измени количество алмазов (30 сек)")
  gg.sleep(30000)

  local input2 = gg.prompt({
    "Сколько стало?"
  }, nil, {"number"})
  if input2 == nil then return end

  gg.refineNumber(input2[1], gg.TYPE_DWORD)

  gg.toast("Снова измени (30 сек)")
  gg.sleep(30000)

  local input3 = gg.prompt({
    "Сколько теперь?"
  }, nil, {"number"})
  if input3 == nil then return end

  gg.refineNumber(input3[1], gg.TYPE_DWORD)

  local r = gg.getResults(100)
  if #r == 0 then
   gg.toast("Не найдено")
   return
end

local list = {}
for i, v in ipairs(r) do
  table.insert(list, {
    address = v.address,
    flags = gg.TYPE_DWORD,
    value = 9999999,
    freeze = true
  })
end

gg.addListItems(list)

gg.toast("Готово, открой кейс, или купи что-то за алмазы чтоб число обновилось")

end

function XP()

  local input = gg.prompt({
    "Введи количество XP"
  }, nil, {"number"})

  if input == nil then return end

  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
  gg.searchNumber(input[1], gg.TYPE_DWORD)

  gg.toast("Подними XP (30 сек)")
  gg.sleep(30000)

  local input2 = gg.prompt({
    "Сколько стало?"
  }, nil, {"number"})
  if input2 == nil then return end

  gg.refineNumber(input2[1], gg.TYPE_DWORD)

  gg.toast("Снова подними XP (30 сек)")
  gg.sleep(30000)

  local input3 = gg.prompt({
    "Сколько теперь?"
  }, nil, {"number"})
  if input3 == nil then return end

  gg.refineNumber(input3[1], gg.TYPE_DWORD)

  local r = gg.getResults(100)
  if #r == 0 then
   gg.toast("Не найдено")
   return
end

local list = {}
for i, v in ipairs(r) do
  table.insert(list, {
    address = v.address,
    flags = gg.TYPE_DWORD,
    value = 99999999,
    freeze = true
  })
end

gg.addListItems(list)

gg.toast("XP увеличен и заморожен")

end

function LevelHack()

  local input = gg.prompt({
    "Введи текущий уровень"
  }, nil, {"number"})

  if input == nil then return end

  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
  gg.searchNumber(input[1], gg.TYPE_DWORD)

  gg.toast("Подними уровень (30 сек)")
  gg.sleep(30000)

  local input2 = gg.prompt({
    "Сколько стало?"
  }, nil, {"number"})
  if input2 == nil then return end

  gg.refineNumber(input2[1], gg.TYPE_DWORD)

  gg.toast("Снова подними уровень (30 сек)")
  gg.sleep(30000)

  local input3 = gg.prompt({
    "Сколько теперь?"
  }, nil, {"number"})
  if input3 == nil then return end

  gg.refineNumber(input3[1], gg.TYPE_DWORD)

  local r = gg.getResults(100)
  if #r == 0 then
   gg.toast("Не найдено")
   return
end

local set = gg.prompt({
  "Какой уровень хочешь?"
}, nil, {"number"})
if set == nil then return end

local list = {}
for i, v in ipairs(r) do
  table.insert(list, {
    address = v.address,
    flags = gg.TYPE_DWORD,
    value = set[1],
    freeze = true
  })
end

gg.addListItems(list)

gg.toast("Готово, подними уровень чтобы обновилось")

end

function UpgradeCar()

gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.toast("Подними уровень прокачки до 2, у тебя 15 сек")
gg.sleep(15000)
gg.refineNumber("1", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.toast("Подними уровень прокачки до 3, у тебя 15 сек")
gg.sleep(15000)
gg.refineNumber("2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.toast("Подними уровень прокачки до 4, у тебя 15 сек")
gg.sleep(15000)
gg.refineNumber("3", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.toast("Подними уровень прокачки до 5, у тебя 15 сек")
gg.sleep(15000)
gg.refineNumber("4", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.toast("Подними уровень прокачки до 6, у тебя 15 сек")
gg.sleep(15000)
gg.refineNumber("5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.toast("Подними уровень прокачки до 7, у тебя 15 сек")
gg.sleep(15000)
gg.refineNumber("6", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("9999998", gg.TYPE_DWORD)
gg.processResume()
gg.processResume()
gg.processResume()
gg.toast("Готово, теперь поменяй машину на другую, верни обратно, и твоей машинe всё равно на урон от зомби")
end

function GunMenu()

  local t = gg.choice({
    "MACHINE GUN",
    "SHOTGUN",
    "ROCKET LAUNCHER",
    "ELECTRIC GUN",
    "Назад"
  }, nil, "Выбери своё оружие")

  if t == nil then return end

  if t == 1 then Machine_Gun() end
  if t == 2 then ShotGun() end
  if t == 3 then Rocket_Launcher() end
  if t == 4 then Electric_Gun() end

end

function Machine_Gun()

  local input = gg.prompt({
    "Введи количество патронов"
  }, nil, {"number"})

  if input == nil then return end

  local value = input[1]
  
  gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
  gg.searchNumber("200;" .. value .. ";100;400::13", gg.TYPE_DWORD)

  local r = gg.getResults(100)
  if #r == 0 then
   gg.toast("Не найдено")
   return
end

gg.editAll("100000;999;999;400", gg.TYPE_DWORD)
gg.toast("Готово, теперь у оружия 100к урон, и 999 патронов")
end

function ShotGun()

  local input = gg.prompt({
    "Введи количество патронов"
  }, nil, {"number"})

  if input == nil then return end

  local value = input[1]
  
  gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
  gg.searchNumber("250;" .. value .. ";50;130::13", gg.TYPE_DWORD)

  local r = gg.getResults(100)
  if #r == 0 then
   gg.toast("Не найдено")
   return
end

gg.editAll("100000;999;999;130", gg.TYPE_DWORD)
gg.toast("Готово, теперь у оружия 100к урон и 999 патронов")
end

function Rocket_Launcher()

  local input = gg.prompt({
    "Введи количество патронов"
  }, nil, {"number"})

  if input == nil then return end

  local value = input[1]
  
  gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
  gg.searchNumber("1500;" .. value .. ";18;50::13", gg.TYPE_DWORD)

  local r = gg.getResults(100)
  if #r == 0 then
   gg.toast("Не найдено")
   return
end

gg.editAll("100000;999;999;50", gg.TYPE_DWORD)
gg.toast("Готово, теперь у оружия 100к урон и 999 патронов")
end

function Electric_Gun()

  local input = gg.prompt({
    "Введи количество патронов"
  }, nil, {"number"})

  if input == nil then return end

  local value = input[1]
  
  gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
  gg.searchNumber("400;" .. value .. ";40;150::13", gg.TYPE_DWORD)

  local r = gg.getResults(100)
  if #r == 0 then
   gg.toast("Не найдено")
   return
end

gg.editAll("100000;999;999;150", gg.TYPE_DWORD)
gg.toast("Готово, теперь у оружия 100к урон и 999 патронов")
end

function InfoScript()
  gg.alert("Мой скрипт\n версия 1.0\n функции:\n изменение цвета интерфейса\n Много всего(XP, LVL, алмазы)\n прокачка машин\n улучшение оружий\n Автор:𓆩𓅃ᦋ⃟ꪹꪮ⃢ꪑ⃞ỉꪶ⃝ꪖ𓆪 \n сделано для Zombie Safari v1.2.8, armeadi-v7a, Android TV 11")
end

while true do 
   if gg.isVisible(true) then
    gg.setVisible(false)
    menu()
  end
end
