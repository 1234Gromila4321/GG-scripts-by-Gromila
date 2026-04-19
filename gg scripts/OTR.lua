function menu()
  local t = gg.choice({
    "Нитро",
    "бесплатные карт-паки",
    "много всего",
    "добавить нитро починки",
    "Цвет интерфейса",
    "PlayerList хаки",
    "Гравитация",
    "Секретные машины",
    "Изменение ника",
    "Прицепы/Машины",
    "Груз (Zed/Hercules)",
    "Выход из машины",
    "Открыть машины",
    "Большой уровень",
    "Летающая яхта",
    "Информация о скрипте",
    "Выход"
  },nil, "Мой скрипт")
  if t == nil then return end
  if t == 1 then Nitro() end
  if t == 2 then Free_card_pack() end
  if t == 3 then NitroMenu() end
  if t == 4 then Add_Nitro_Repair() end
  if t == 5 then ColorMenu() end
  if t == 6 then PlayerMenu() end
  if t == 7 then GravityMenu() end
  if t == 8 then Secret_cars() end
  if t == 9 then Change_Nick() end
  if t == 10 then TrailerMenu() end
  if t == 11 then CargoMenu() end
  if t == 12 then ExitCarMenu() end
  if t == 13 then CarUnlock() end
  if t == 14 then LVL() end
  if t == 15 then Fly() end
  if t == 16 then InfoScript() end
  if t == 17 then os.exit() end
end

function Nitro()
  gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
  gg.searchNumber("2;30::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.processResume()

  local t = gg.getResults(100000)

  for i, v in ipairs(t) do
	if v.flags == gg.TYPE_FLOAT then
	 v.value = "0"
	 v.freeze = true
  end
end
    gg.addListItems(t)
    gg.toast ("готово")
end

function Free_card_pack()
  gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
  gg.searchNumber("7500;15000;35000;30;60;140::21", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.processResume()

  local t = gg.getResults(100000)

  gg.editAll("0", gg.TYPE_DWORD)
  gg.processResume()

  gg.toast ("готово")
end

function NitroMenu()

  local t = gg.choice({
    "Найти нитро",
    "Много всего №1",
    "Много всего №2",
    "Много всего №3",
    "Много всего №4",
    "Много всего №5",
    "Много всего №6",
    "Назад"
}, nil, "Нитро меню")

if t == nil then return end

if t == 1 then
 local input = gg.prompt({"Введи количество нитро"}, nil, {"number"})
 if input == nil then return end

 gg.clearResults()
 gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
 gg.searchNumber(input[1], gg.TYPE_DWORD)
 gg.toast("Теперь потрать нитро и снова открой меню")
end

if t == 2 then
 local t = gg.getResults(10)
 if #t == 0 then
gg.toast("Сначала найди нитро")
return end

 local list = {}
 for i, v in ipairs(t) do
   table.insert(list, {
     address = v.address + 4,
     flags = gg.TYPE_DWORD,
     value = 10,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("№1 готово")
end

if t == 3 then
 local t = gg.getResults(10)
 if #t == 0 then
gg.toast("Сначала найди нитро")
return end

 local list = {}
 for i, v in ipairs(t) do
   table.insert(list, {
     address = v.address + 8,
     flags = gg.TYPE_DWORD,
     value = 10,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("№2 готово")
end

if t == 4 then
 local t = gg.getResults(10)
 if #t == 0 then
gg.toast("Сначала найди нитро")
return end

 local list = {}
 for i, v in ipairs(t) do
   table.insert(list, {
     address = v.address + 10,
     flags = gg.TYPE_DWORD,
     value = 10,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("№3 готово")
end

if t == 5 then
 local t = gg.getResults(10)
 if #t == 0 then
gg.toast("Сначала найди нитро")
return end

 local list = {}
 for i, v in ipairs(t) do
   table.insert(list, {
     address = v.address + 14,
     flags = gg.TYPE_DWORD,
     value = 10,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("№4 готово")
end

if t == 6 then
 local t = gg.getResults(10)
 if #t == 0 then
gg.toast("Сначала найди нитро")
return end

 local list = {}
 for i, v in ipairs(t) do
   table.insert(list, {
     address = v.address + 18,
     flags = gg.TYPE_DWORD,
     value = 10,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("№5 готово")
end

if t == 7 then
 local t = gg.getResults(10)
 if #t == 0 then
gg.toast("Сначала найди нитро")
return end

 local list = {}
 for i, v in ipairs(t) do
   table.insert(list, {
     address = v.address + 20,
     flags = gg.TYPE_DWORD,
     value = 10,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("№6 готово")
end

end 

function Add_Nitro_Repair()

  local input = gg.prompt({
    "Введи число починок",
    "Введи число нитро"
  }, nil, {"number", "number"})

  if input == nil then return end

  local search = input[1] .. ";" .. input[2] .. "::5"

  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
  gg.searchNumber(search, gg.TYPE_DWORD)

  local r = gg.getResults(100)
  if #r == 0 then
   gg.toast("Ничего не найдено")
   return
end

  gg.toast("Найдено, теперь введи сколько хочешь")

  local set = gg.prompt({"Сколько хочешь?"}, nil, {"number"})
  if set == nil then return end

  gg.editAll(set[1], gg.TYPE_DWORD)

  gg.toast("Готово")

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

function PlayerMenu()

  local t = gg.choice({
    "🔍Найти значения",
    "👻Призрак",
    "🚗Неподвижность",
    "♻️Стандарт",
    "Назад"
}, nil, "PlayersList")

if t == nil then return end

if t == 1 then
 gg.clearResults()
 gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
 gg.searchNumber("8", gg.TYPE_DWORD)

 gg.toast("Зайди в PlayersList")
 gg.sleep(5000)

 gg.refineNumber("14", gg.TYPE_DWORD)
 gg.toast("Выйди из PlayersList")
 gg.sleep(5000)

 gg.refineNumber("8", gg.TYPE_DWORD)
 gg.toast("Снова зайди")
 gg.sleep(5000)

 gg.refineNumber("14", gg.TYPE_DWORD)
 gg.toast("Снова выйди")
 gg.sleep(5000)

 gg.refineNumber("8", gg.TYPE_DWORD)

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Не найдено")
  return
end

gg.toast("Готово, теперь выбирай режим")
end

if t >=2 and t <= 4 then
 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала нажми 'Найти значения'")
  return
end
end

if t == 2 then
 gg.editAll("4", gg.TYPE_DWORD)
 gg.toast("Призрак включен")
end

if t == 3 then
 gg.editAll("2", gg.TYPE_DWORD)
 gg.toast("Неподвижность включена")
end

if t == 4 then
 gg.editAll("8", gg.TYPE_DWORD)
 gg.toast("Стандарт восстановлен")
end

end

function GravityMenu()

  local t = gg.choice({
    "🔍Найти гравитацию",
    "🌙Лунная",
    "🪶Слабая",
    "🌍Стандарт",
    "🪨Сильная",
    "🚀Антигравитация",
    "Назад"
}, nil, "Гравитация")

if t == nil then return end

if t == 1 then
 gg.clearResults()

    gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber("-12.5", gg.TYPE_FLOAT)
    gg.toast("Гравитация найдена")
 end

if t >= 2 and t <= 6 then
  local r = gg.getResults(10)
  if #r == 0 then
   gg.toast("Сначала нажми 'Найти гравитацию'")
   return
end
end

if t == 2 then gg.editAll("-3", gg.TYPE_FLOAT) end
if t == 3 then gg.editAll("-6", gg.TYPE_FLOAT) end
if t == 4 then gg.editAll("-12.5", gg.TYPE_FLOAT) end
if t == 5 then gg.editAll("-20", gg.TYPE_FLOAT) end
if t == 6 then gg.editAll("5", gg.TYPE_FLOAT) end

if t >= 2 and t <= 6 then
 gg.toast("Гравитация изменена")
end

end

function Secret_cars()

gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("101;0;10;0;25000::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("71;0;10;10;25000", gg.TYPE_DWORD)
gg.processResume()

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("102;0;10;0;25000::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("72;0;10;10;25000", gg.TYPE_DWORD)

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("103;0;10;0;25000::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("73;0;10;10;25000", gg.TYPE_DWORD)

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("104;0;10;0;25000::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("74;0;10;10;25000", gg.TYPE_DWORD)

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("110;5;650;0;25000::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("75;5;650;650;25000", gg.TYPE_DWORD)

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("111;5;650;0;25000::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("76;5;650;650;25000", gg.TYPE_DWORD)

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("113;3;600;0;25000::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("77;3;600;600;25000", gg.TYPE_DWORD)

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("114;5;1;0;25000::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("78;5;1;1;25000", gg.TYPE_DWORD)

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("115;14;1;0;25000::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("79;14;1;1;25000", gg.TYPE_DWORD)
gg.processResume()

gg.toast("Секретные машины открыты, использовать можно только в одиночном режиме")

end

function Change_Nick()

  local old = gg.prompt({"Введи текущий ник"}, nil, {"text"})
  if old == nil then return end

  local new = gg.prompt({
    "Введи новый ник\n⚠️Максимум 17 симловов!"
  }, nil, {"text"})

  if new == nil then return end

  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
  gg.searchNumber(":" .. old[1], gg.TYPE_BYTE)

  local r = gg.getResults(100000)
  if #r == 0 then
   gg.toast("Ник не найден")
   return
end

gg.editAll(":" .. new[1], gg.TYPE_BYTE)

gg.toast("Ник изменён (может быть только локально)")

end

function TrailerMenu()

  local t = gg.choice({
    "Найти прицеп(10)",
    "Найти прицеп(15)",
    "Найти прицеп(23)",
    "Найти прицеп(maz)",
    "Найти прицеп(28 LEmaz)",
    "Найти прицеп(26)",

    "Прицеп 10 (стандарт)",
    "Прицеп 15 (стандарт)",
    "Прицеп 23 (стандарт)",
    "Прицеп maz (стандарт)",
    "Прицеп 28 LEmaz (стандарт)",
    "Прицеп 26 (стандарт)",
    "🚗Carry",
    "🚗Fury",
    "🚗Ranger",
    "🚗Karma",
    "🚗Payback",
    "🚗Buggy",
    "🚗Dustmaker",
    "🚗Stinger",
    "🚗Spitfire",
    "🚗Lionheart",
    "🚗Lionpaw",
    "🚗Mudbee",
    "🚗Iron maiden",
    "🚗Sweet dream",
    "🚗Caprice",
    "🚗Gepard",
    "🚗Defender",
    "🚗Jupiter",
    "🚗Inferno",
    "🚗Mercury",
    "🚗Meridian",
    "🚗Novara",
    "🚗Ranger og",
    "🚗Somerset",
    "🚗Moonwalker",
    "🚗Moon rover",
    "🚗Jazzy",
    "🚗Legende",
    "🚗Onyx",
    "🚗Rainbow",
    "🚗Vulcan",
    "🚗Hellfire",
    "🚗Carboon yeti",
    "🚗Golden yeti",
    "🚗Taurus",
    "🚗Hurricane",
    "🚗Typhoon",
    "🚗Union",
    "🚗Aeon",
    "🚗Icarus",
    "🚗Voltage",
    "🚗Peacemaker",
    "🚗Behemoth",
    "🚗Educator",
    "🚗Goliath",
    "🚗Tuky",
    "🚗Rusty",
    "🚗Poo mobile",

    "🚛Maximus",
    "🚛Thunder",
    "🚛Titan",
    "🚛Titanium",
    "🚛Dachshund",
    "🚛Hercules",

    "❌Icebreaker",

    "Назад"
}, nil, "Меню прицепов")

if t == nil then return end

if t == 1 then
 gg.clearResults()

gg.setRanges(gg.REGION_CODE_APP)

gg.searchNumber(":Trailer_small" , gg.TYPE_BYTE)
    gg.toast("Найден Trailer_small")
 end

 if t == 2 then
  gg.clearResults()

gg.setRanges(gg.REGION_CODE_APP)

gg.searchNumber(":Trailer_medium" , gg.TYPE_BYTE)
    gg.toast("Найден Trailer_medium")
 end

if t == 3 then
 gg.clearResults()

gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber(":Trailer_big" , gg.TYPE_BYTE)
    gg.toast("Найден Trailer_big")
 end

 if t == 4 then
  gg.clearResults()

gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber(":Trailer_maz" , gg.TYPE_BYTE)
    gg.toast("Найден Trailer_maz")
 end

 if t == 5 then
  gg.clearResults()

gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber(":Trailer_LEmaz" , gg.TYPE_BYTE)
    gg.toast("Найден Trailer_LEmaz")
end

 if t == 6 then
  gg.clearResults()

gg.setRanges(gg.REGION_CODE_APP)
    gg.searchNumber(":Trailer_Icebreaker" , gg.TYPE_BYTE)
    gg.toast("Найден Trailer_Icebreaker")
end

 if t == 7 then
  local r = gg.getResults(100000)
  if #r == 0 then
   gg.toast("Сначала найди прицеп")
   return
end

gg.editAll(":Trailer_small", gg.TYPE_BYTE)
gg.toast("Прицеп 10 восстановлен")
end

if t == 8 then
 local r = gg.getResults(100000)
 if #r == 0 then
  gg.toast("Сначала найди прицеп")
  return
end

gg.editAll(":Trailer_medium", gg.TYPE_BYTE)
gg.toast("Прицеп 15 восстановлен")
end

if t == 9 then
 local r = gg.getResults(100000)
 if #r == 0 then
  gg.toast("Сначала найди прицеп")
  return
end

gg.editAll(":Trailer_big", gg.TYPE_BYTE)
gg.toast("Прицеп 23 восстановлен")
end

if t == 10 then
 local r = gg.getResults(100000)
 if #r == 0 then
  gg.toast("Сначала найди прицеп")
  return
end

gg.editAll(":Trailer_maz", gg.TYPE_BYTE)
gg.toast("Прицеп maz восстановлен")
end

if t == 11 then
 local r = gg.getResults(100000)
 if #r == 0 then
  gg.toast("Сначала найди прицеп")
  return
end

gg.editAll(":Trailer_LEmaz", gg.TYPE_BYTE)
gg.toast("Прицеп LEmaz восстановлен")
end

if t == 12 then
 local r = gg.getResults(100000)
 if #r == 0 then
  gg.toast("Сначала найди прицеп")
  return
end

gg.editAll(":Trailer_Icebreaker", gg.TYPE_BYTE)
gg.toast("Прицеп 26 восстановлен")
end

if t >= 13 and t <= 61 then

 local r = gg.getResults(100000)
 if #r == 0 then
  gg.toast("Сначала найди прицеп")
  return
end

local names = {

  "Carry",
  "Fury",
  "Ranger",
  "Karma",
  "Payback",
  "Buggy",
  "Dustmaker",
  "Stinger",
  "Spitfire",
  "Lionheart",
  "Lionpaw",
  "Mudbee",
  "Iron maiden",
  "Sweet dream",
  "Caprice",
  "Gepard",
  "Defender",
  "Jupiter",
  "Inferno",
  "Mercury",
  "Meridian",
  "Novara",
  "Ranger og",
  "Somerset",
  "Moonwalker",
  "Moon rover",
  "Jazzy",
  "Legende",
  "Onyx",
  "Rainbow",
  "Vulcan",
  "Hellfire",
  "Carboon yeti",
  "Golden yeti",
  "Taurus",
  "Hurricane",
  "Typhoon",
  "Union",
  "Aeon",
  "Icarus",
  "Voltage",
  "Peacemaker",
  "Behemoth",
  "Educator",
  "Goliath",
  "Tuky",
  "Rusty",
  "Poo mobile",

  "Maximus",
  "Thunder",
  "Titan",
  "Titanium",
  "Dachshund",
  "Hercules"
  }

  local index = t - 12
  local name = names[index]

  gg.editAll(":" .. name, gg.TYPE_BYTE)
  gg.toast(name .. " применён")
end

 if t == 62 then
 gg.toast("Не работает")
end

end

function CargoMenu()

  local t = gg.choice({
    "Поиск значения Zed (10)",
    "Поиск значения Hercules (28)",
    "Выбрать тип груза",
    "Выбрать количество/бесконечно",
    "Назад"
}, nil, "Груз меню")

if t == nil then return end

if t == 1 then
 gg.clearResults()
 gg.toast("Возьми груз")
 gg.sleep(5000)

 gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
 gg.searchNumber("10", gg.TYPE_DWORD)

 gg.toast("Выгрузи груз")
 gg.sleep(5000)
 gg.refineNumber("0", gg.TYPE_DWORD)

 gg.toast("Снова возьми груз")
 gg.sleep(5000)
 gg.refineNumber("10", gg.TYPE_DWORD)

 gg.toast("Снова выгрузи")
 gg.sleep(5000)
 gg.refineNumber("0", gg.TYPE_DWORD)

 gg.toast("Финальный раз возьми груз")
 gg.sleep(5000)
 gg.refineNumber("10", gg.TYPE_DWORD)

 gg.toast("Значение найдено")
end

if t == 2 then
 gg.clearResults()
 gg.toast("Возьми груз")
 gg.sleep(5000)

 gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
 gg.searchNumber("28", gg.TYPE_DWORD)

 gg.toast("Выгрузи груз")
 gg.sleep(5000)
 gg.refineNumber("0", gg.TYPE_DWORD)

 gg.toast("Снова возьми груз")
 gg.sleep(5000)
 gg.refineNumber("28", gg.TYPE_DWORD)

 gg.toast("Снова выгрузи")
 gg.sleep(5000)
 gg.refineNumber("0", gg.TYPE_DWORD)

 gg.toast("Финальный раз возьми груз")
 gg.sleep(5000)
 gg.refineNumber("28", gg.TYPE_DWORD)

 gg.toast("Значение найдено")
end

if t == 3 then
 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

local type = gg.choice({
  "🪨 Камень",
  "🪵 Дерево",
  "⛓ Железо",
  "🌾 Сено",
  "🔒🪨 Камень (заморозка)",
  "🔒🪵 Дерево (заморозка)",
  "🔒⛓ Железо (заморозка)",
  "🔒🌾 Сено (заморозка)"
}, nil, "Тип груза")

if type == nil then return end

local val = 0
local freeze = false

if type == 1 then val = 3 end
if type == 2 then val = 1 end
if type == 3 then val = 8 end
if type == 4 then val = 2 end

if type == 5 then val = 3 freeze = true end
if type == 6 then val = 1 freeze = true end
if type == 7 then val = 8 freeze = true end
if type == 8 then val = 2 freeze = true end

local list = {}
for i, v in ipairs(r) do
  table.insert(list, {
    address = v.address - 4,
    flags = gg.TYPE_DWORD,
    value = val,
    freeze = freeze
  })
end

if freeze then
 gg.addListItems(list)
 gg.toast("Тип груза изменён + заморозка")
else
gg.setValues(list)
gg.toast("Тип груза изменён")
end

end

if t == 4 then
 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

local mode = gg.choice({
  "Задать количество",
  "Бесконечно"
}, nil, "Количество")

if mode == nil then return end

if mode == 1 then
 local input = gg.prompt({
   "Введи количество (макс 255)"
 }, nil, {"number"})

 if input == nil then return end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address,
     flags = gg.TYPE_DWORD,
     value = input[1]
   })
end

gg.setValues(list)
gg.toast("Количество изменено")
end

if mode == 2 then
 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address,
     flags = gg.TYPE_DWORD,
     value = 255,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Бесконечный груз включён")
end
end

end

function ExitCarMenu()

  local t = gg.choice({
    "Найти значение",
    "Выйти из машины",
    "Стандарт",
    "Назад"
  }, nil, "Выход из машины")

  if t == nil then return end

  if t == 1 then
   gg.clearResults()
   gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
   gg.searchNumber("6", gg.TYPE_DWORD)

   gg.toast("Создай сервер (30 сек)")
   gg.sleep(30000)

   gg.refineNumber("3", gg.TYPE_DWORD)

   gg.toast("Выйди из сервера (10 сек)")
   gg.sleep(10000)

   gg.refineNumber("6", gg.TYPE_DWORD)

   gg.toast("Снова создай сервер (30 сек)")
   gg.sleep(30000)

   gg.refineNumber("3", gg.TYPE_DWORD)

   gg.toast("Значение найдено")
end

if t >= 2 and t <= 3 then
 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end
end

if t == 2 then
 gg.editAll("6", gg.TYPE_DWORD)
 gg.toast("Теперь можешь выйти из машины")
end

if t == 3 then
 gg.editAll("3", gg.TYPE_DWORD)
 gg.toast("Стандарт восстановлен")
end

end

function CarUnlock()

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("0;65000::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1", gg.TYPE_DWORD)
gg.processResume()
gg.processResume()

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("0;60000::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1", gg.TYPE_DWORD)
gg.processResume()

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("0;55000::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1", gg.TYPE_DWORD)

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("0;50000::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1", gg.TYPE_DWORD)
gg.processResume()

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("0;48000::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1", gg.TYPE_DWORD)

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("0;47000::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1", gg.TYPE_DWORD)

gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("0;45000::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1", gg.TYPE_DWORD)
gg.processResume()

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("0;45000::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1", gg.TYPE_DWORD)

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("0;44000::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1", gg.TYPE_DWORD)

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("0;43000::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1", gg.TYPE_DWORD)

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("0;42000::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1", gg.TYPE_DWORD)

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("0;40000::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1", gg.TYPE_DWORD)

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("0;37000::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1", gg.TYPE_DWORD)

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("0;35000::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1", gg.TYPE_DWORD)

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("0;32000::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1", gg.TYPE_DWORD)

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("0;30000::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1", gg.TYPE_DWORD)

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("0;28000::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1", gg.TYPE_DWORD)

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("0;25000::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1", gg.TYPE_DWORD)

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("0;20000::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1", gg.TYPE_DWORD)

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("0;18000::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1", gg.TYPE_DWORD)

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("0;15000::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1", gg.TYPE_DWORD)

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("0;10000::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1", gg.TYPE_DWORD)

gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("0;5000::9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
gg.refineNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1", gg.TYPE_DWORD)
gg.processResume()

gg.toast("Готово, теперь ты можешь купить все машины")
end

function LVL()

  local t = gg.choice({
    "Поиск",
    "Выбрать уровень",
    "Назад"
  }, nil, "LVL hack")
  if t == nil then return end
  if t == 1 then Search1() end
  if t == 2 then LVL_HACK() end
end

function Search1()

  local input = gg.prompt({
    "Введи количество нитро"
  }, nil, {"number"})
  if input == nil then return end

  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
  gg.searchNumber(input[1], gg.TYPE_DWORD)
  gg.toast("Потрать нитро, у тебя 35 сек")
  gg.sleep(35000)

  local input2 = gg.prompt({
    "Сколько стало?"
  }, nil, {"number"})

  gg.refineNumber(input2[1], gg.TYPE_DWORD)
  gg.toast("Потрать нитро, у тебя 35 сек")
  gg.sleep(35000)

  local input3 = gg.prompt({
    "Сколько стало?"
  }, nil, {"number"})

  gg.refineNumber(input3[1], gg.TYPE_DWORD)
  gg.toast("Потрать нитро, у тебя 35 сек")
  gg.sleep(35000)

  local input4 = gg.prompt({
    "Сколько стало?"
  }, nil, {"number"})

  gg.refineNumber(input4[1], gg.TYPE_DWORD)
  gg.toast("Готово, теперь выбирай себе уровень")

  r = gg.getResults(100000)

end

function LVL_HACK()

  local t = gg.choice({
    "Числа 1, 11, 111...",
    "Числа 2, 22, 222...",
    "Числа 3, 33, 333...",
    "Числа 4, 44, 444...",
    "Числа 5, 55, 555...",
    "Числа 6, 66, 666...",
    "Числа 7, 77, 777...",
    "Числа 8, 88, 888...",
    "Числа 9, 99, 999...",
    "Числа 10, 100, 1000...",
    "Разные числа типо 1234...",
    "Разные числа типо 9876...",
    "Разные числа типо 969696...",
    "Единицы тысяч",
    "Десятки тысяч",
    "Назад"
  }, nil, "Выбери группу чисел")
  if t == nil then return end
  if t == 1 then Number1() end
  if t == 2 then Number2() end
  if t == 3 then Number3() end
  if t == 4 then Number4() end
  if t == 5 then Number5() end
  if t == 6 then Number6() end
  if t == 7 then Number7() end
  if t == 8 then Number8() end
  if t == 9 then Number9() end
  if t == 10 then Number10() end
  if t == 11 then Number11() end
  if t == 12 then Number12() end
  if t == 13 then Number13() end
  if t == 14 then Number14() end
  if t == 15 then Number15() end
end

function Number1()

  local t = gg.choice({
    "1",
    "11",
    "111",
    "1111",
    "11111",
    "111111",
    "1111111",
    "11111111",
    "111111111",
    "1111111111",
    "Назад"
  }, nil, "Выбери желаемый уровень")
  if t == 1 then num1() end
  if t == 2 then num2() end
  if t == 3 then num3() end
  if t == 4 then num4() end
  if t == 5 then num5() end
  if t == 6 then num6() end
  if t == 7 then num7() end
  if t == 8 then num8() end
  if t == 9 then num9() end
  if t == 10 then num10() end
end

function num1()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 561669300,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 1, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num2()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 561657012,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 11, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num3()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 561583284,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 111, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num4()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 559469748,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 1111, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num5()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 560026801,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 11111, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num6()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 560616578,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 111111, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num7()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 559437482,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 1111111, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num8()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 569135493,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 11111111, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num9()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 669275993,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 111111111, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num10()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 1666470898,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 1111111111, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function Number2()

  local t = gg.choice({
    "2",
    "22",
    "222",
    "2222",
    "22222",
    "222222",
    "2222222",
    "22222222",
    "222222222",
    "Назад"
  }, nil, "Выбери желаемый уровень")
  if t == nil then return end
  if t == 1 then num11() end
  if t == 2 then num12() end
  if t == 3 then num13() end
  if t == 4 then num14() end
  if t == 5 then num15() end
  if t == 6 then num16() end
  if t == 7 then num17() end
  if t == 8 then num18() end
  if t == 9 then num19() end
end

function num11()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 561675444,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 2, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num12()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 561700020,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 22, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num13()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 561814708,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 222, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num14()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 561978549,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 2222, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num15()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 558636222,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 22222, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num16()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 559553752,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 222222, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num17()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 561911945,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 2222222, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num18()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 538320598,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 22222222, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num19()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 742792046,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 222222222, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function Number3()

  local t = gg.choice({
    "3",
    "33",
    "333",
    "3333",
    "33333",
    "333333",
    "3333333",
    "33333333",
    "333333333",
    "Назад"
  }, nil, "Выбери желаемое число")
  if t == nil then return end
  if t == 1 then num20() end
  if t == 2 then num21() end
  if t == 3 then num22() end
  if t == 4 then num23() end
  if t == 5 then num24() end
  if t == 6 then num25() end
  if t == 7 then num26() end
  if t == 8 then num27() end
  if t == 9 then num28() end
end

function num20()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 561673396,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 3, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num21()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 561734836,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 33, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num22()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 560989364,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 333, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num23()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 559039669,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 3333, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num24()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 560710820,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 33333, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num25()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 558547990,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 333333, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num26()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 559727343,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 3333333, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num27()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 548979488,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 33333333, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num28()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 849397628,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 333333333, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function Number4()

  local t = gg.choice({
    "4",
    "44",
    "444",
    "4444",
    "44444",
    "444444",
    "4444444",
    "44444444",
    "444444444",
    "Назад"
  }, nil, "Выбери желаемое число")
  if t == nil then return end
  if t == 1 then num29() end
  if t == 2 then num30() end
  if t == 3 then num31() end
  if t == 4 then num32() end
  if t == 5 then num33() end
  if t == 6 then num34() end
  if t == 7 then num35() end
  if t == 8 then num36() end
  if t == 9 then num37() end
end

function num29()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 561663156,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 4, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num30()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 561712308,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 44, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num31()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 561482932,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 444, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num32()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 561024182,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 4444, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num33()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 559320225,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 44444, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num34()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 561679469,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 444444, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num35()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 556960974,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 4444444, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num36()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 602048625,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 44444444, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num37()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 990022401,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 444444444, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function Number5()

  local t = gg.choice({
    "5",
    "55",
    "555",
    "5555",
    "55555",
    "555555",
    "5555555",
    "55555555",
    "555555555",
    "Назад"
  }, nil, "Выбери желаемое число")
  if t == nil then return end
  if t == 1 then num38() end
  if t == 2 then num39() end
  if t == 3 then num40() end
  if t == 4 then num41() end
  if t == 5 then num42() end
  if t == 6 then num43() end
  if t == 7 then num44() end
  if t == 8 then num45() end
  if t == 9 then num46() end
end

function num38()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 561661108,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 5, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num39()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 561763508,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 55, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num40()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 560673972,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 555, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num41()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 559412406,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 5555, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num42()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 561149103,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 55555, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num43()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 560690619,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 555555, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num44()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 554792492,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 5555555, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num45()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 571831618,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 55555555, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num46()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 7173911,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 555555555, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function Number6()

  local t = gg.choice({
    "6",
    "66",
    "666",
    "6666",
    "66666",
    "666666",
    "6666666",
    "66666666",
    "666666666",
    "Назад",
  }, nil, "Выбери желаемое число")
  if t == nil then return end
  if t == 1 then num47() end
  if t == 2 then num48() end
  if t == 3 then num49() end
  if t == 4 then num50() end
  if t == 5 then num51() end
  if t == 6 then num52() end
  if t == 7 then num53() end
  if t == 8 then num54() end
  if t == 9 then num55() end
end

function num47()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 561667252,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 6, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num48()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 561544372,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 66, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num49()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 560905396,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 666, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num50()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 560610487,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 6666, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num51()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 559496340,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 66666, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num52()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 559627761,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 666666, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num53()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 557266947,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 6666666, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num54()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 582957980,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 66666666, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num55()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 114244388,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 666666666, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function Number7()

  local t = gg.choice({
    "7",
    "77",
    "777",
    "7777",
    "77777",
    "777777",
    "7777777",
    "77777777",
    "777777777",
    "Назад"
  }, nil, "Выбери желаемое число")
  if t == nil then return end
  if t == 1 then num56() end
  if t == 2 then num57() end
  if t == 3 then num58() end
  if t == 4 then num59() end
  if t == 5 then num60() end
  if t == 6 then num61() end
  if t == 7 then num62() end
  if t == 8 then num63() end
  if t == 9 then num64() end
end

function num56()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 561665204,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 7, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num57()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 561513652,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 77, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num58()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 560080052,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 777, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num59()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 558458039,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 7777, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num60()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 558163089,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 77777, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num61()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 558622159,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 777777, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num62()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 555082337,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 7777777, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num63()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 635560173,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 77777777, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num64()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 254404554,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 777777777, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function Number8()

  local t = gg.choice({
    "8",
    "88",
    "888",
    "8888",
    "88888",
    "888888",
    "8888888",
    "88888888",
    "888888888",
    "Назад"
  }, nil, "Выбери желаемое число")
  if t == nil then return end
  if t == 1 then num65() end
  if t == 2 then num66() end
  if t == 3 then num67() end
  if t == 4 then num68() end
  if t == 5 then num69() end
  if t == 6 then num70() end
  if t == 7 then num71() end
  if t == 8 then num72() end
  if t == 9 then num73() end
end

function num65()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 561654964,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 8, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num66()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 561556660,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 88, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num67()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 560049332,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 888, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num68()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 560966832,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 8888, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num69()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 560180383,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 88888, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num70()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 561753350,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 888888, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num71()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 569093184,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 8888888, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num72()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 604745022,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 88888888, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num73()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 361475039,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 888888888, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function Number9()

  local t = gg.choice({
    "9",
    "99",
    "999",
    "9999",
    "99999",
    "999999",
    "9999999",
    "99999999",
    "999999999",
    "Назад"
  }, nil, "Выбери желаемое число")
  if t == nil then return end
  if t == 1 then num74() end
  if t == 2 then num75() end
  if t == 3 then num76() end
  if t == 4 then num77() end
  if t == 5 then num78() end
  if t == 6 then num79() end
  if t == 7 then num80() end
  if t == 8 then num81() end
  if t == 9 then num82() end
end

function num74()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 561652916,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 9, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num75()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 561607860,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 99, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num76()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 560288948,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 999, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num77()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 557978800,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 9999, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num78()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 558797956,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 99999, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num79()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 560698716,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 999999, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num80()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 566859686,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 9999999, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num81()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 616403464,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 99999999, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num82()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 452302829,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 999999999, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function Number10()

  local t = gg.choice({
    "10",
    "100",
    "1000",
    "10000",
    "100000",
    "1000000",
    "10000000",
    "100000000",
    "1000000000",
    "Назад",
  }, nil, "Выбери желаемое число")
  if t == nil then return end
  if t == 1 then num83() end
  if t == 2 then num84() end
  if t == 3 then num85() end
  if t == 4 then num86() end
  if t == 5 then num87() end
  if t == 6 then num88() end
  if t == 7 then num89() end
  if t == 8 then num90() end
  if t == 9 then num91() end
end

function num83()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 561659060,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 10, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num84()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 561597620,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 100, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num85()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 560278708,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 1000, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num86()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 558034096,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 10000, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num87()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 558853252,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 100000, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num88()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 560491868,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 1000000, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num89()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 567177126,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 10000000, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num90()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 615672328,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 100000000, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num91()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 451571693,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 1000000000, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function Number11()

  local t = gg.choice({
    "123",
    "1234",
    "12345",
    "123456",
    "1234567",
    "12345678",
    "123456789",
    "1234567890",
    "Назад"
  }, nil, "Выбери желаемое число")
  if t == nil then return end
  if t == 1 then num92() end
  if t == 2 then num93() end
  if t == 3 then num94() end
  if t == 4 then num95() end
  if t == 5 then num96() end
  if t == 6 then num97() end
  if t == 7 then num98() end
  if t == 8 then num99() end
end

function num92()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 561624244,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 123, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num93()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 559742132,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 1234, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num94()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 561751218,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 12345, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num95()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 560491656,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 123456, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num96()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 558782190,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 1234567, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num97()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 569383736,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 12345678, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num98()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 638765005,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 123456789, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num99()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 1760362100,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 1234567890, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function Number12()

  local t = gg.choice({
    "9876",
    "98765",
    "987654",
    "9876543",
    "98765432",
    "987654321",
    "Назад"
  }, nil, "Выбери желаемое число")
  if t == nil then return end
  if t == 1 then num100() end
  if t == 2 then num101() end
  if t == 3 then num102() end
  if t == 4 then num103() end
  if t == 5 then num104() end
  if t == 6 then num105() end
end

function num100()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 558812336,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 9876, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num101()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 561251460,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 98765, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num102()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 560618838,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 987654, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num103()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 568039010,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 9876543, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num104()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 615098581,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 98765432, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num105()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 465561465,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 987654321, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function Number13()

  local t = gg.choice({
    "6969",
    "696969",
    "69696969",
    "9696",
    "969696",
    "96969696",
    "6767",
    "676767",
    "67676767",
    "Назад"
  }, nil, "Выбери желаемое число")
  if t == nil then return end
  if t == 1 then num106() end
  if t == 2 then num107() end
  if t == 3 then num108() end
  if t == 4 then num109() end
  if t == 5 then num110() end
  if t == 6 then num111() end
  if t == 7 then num112() end
  if t == 8 then num113() end
  if t == 9 then num114() end
end

function num106()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 560178359,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 6969, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num107()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 560866784,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 696969, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num108()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 626270299,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 69696969, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num109()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 559246512,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 9696, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num110()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 560295277,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 969696, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num111()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 614820928,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 96969696, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num112()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 560534711,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 67, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num113()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 560371198,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 676767, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num114()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 627611041,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 67676767, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function Number14()

  local t = gg.choice({
    "1000",
    "2000",
    "3000",
    "4000",
    "5000",
    "6000",
    "7000",
    "8000",
    "9000",
    "Назад"
  }, nil, "Выбери желаемое число")
  if t == nil then return end
  if t == 1 then num115() end
  if t == 2 then num116() end
  if t == 3 then num117() end
  if t == 4 then num118() end
  if t == 5 then num119() end
  if t == 6 then num120() end
  if t == 7 then num121() end
  if t == 8 then num122() end
  if t == 9 then num123() end
end

function num115()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 560278708,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 1000, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num116()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 558165172,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 2000, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num117()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 560442549,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 3000, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num118()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 558329013,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 4000, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num119()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 560344246,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 5000, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num120()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 557968566,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 6000, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num121()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 559983799,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 7000, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num122()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 557870263,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 8000, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num123()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 560147632,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 9000, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function Number15()

  local t = gg.choice({
    "10000",
    "20000",
    "30000",
    "40000",
    "50000",
    "60000",
    "70000",
    "80000",
    "90000",
    "Назад"
  }, nil, "Выбери желаемое число")
  if t == nil then return end
  if t == 1 then num124() end
  if t == 2 then num125() end
  if t == 3 then num126() end
  if t == 4 then num127() end
  if t == 5 then num128() end
  if t == 6 then num129() end
  if t == 7 then num130() end
  if t == 8 then num131() end
  if t == 9 then num132() end
end

function num124()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 558034096,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 10000, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num125()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 558591165,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 20000, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num126()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 559148218,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 30000, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num127()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 559443111,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 40000, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num128()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 560000172,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 50000, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num129()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 560557225,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 60000, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num130()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 561114262,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 70000, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num131()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 561933459,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 80000, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function num132()

 local r = gg.getResults(10)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address + 400,
     flags = gg.TYPE_DWORD,
     value = 558296223,
     freeze = true
   })
end

gg.addListItems(list)
gg.toast("Теперь у тебя уровень 90000, подними уровень,\n или поменяй мир чтоб значение обновилось")
end

function Fly()

  local t = gg.choice({
    "Найти значение",
    "Поставить свои параметры",
    "Назад"
  }, nil, "Летающая яхта")
  if t == nil then return end
  if t == 1 then Search2() end
  if t == 2 then YouFly() end
end

function Search2()

gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("29000;500;15500;4400::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("999999;30000;-65;999999", gg.TYPE_FLOAT)
gg.processResume()

 r = gg.getResults(1)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end

 local list = {}

 for i, v in ipairs(r) do

   table.insert(list, {
     address = v.address - 824,
     flags = gg.TYPE_FLOAT,
     value = 65,
   })

   table.insert(list, {
     address = v.address - 828,
     flags = gg.TYPE_FLOAT,
     value = 10000
   })
end

gg.setValues(list)
gg.toast("Готово, теперь можешь ставить свои параметры")
end

function YouFly()

  local t = gg.choice({
    "Высота",
    "Назад"
  }, nil, "Выбери что хочешь изменить")
  if t == nil then return end
  if t == 1 then you1() end
end

function you1()

  local t = gg.choice({
    "10 метров",
    "50 метров",
    "65 метров",
    "85 метров",
    "180 метров",
    "230 метров",
    "Ввести свою высоту",
    "Назад"
  }, nil, "Выбери высоту")
  if t == nil then return end
  if t == 1 then fly1() end
  if t == 2 then fly2() end
  if t == 3 then fly3() end
  if t == 4 then fly4() end
  if t == 5 then fly5() end
  if t == 6 then fly6() end
  if t == 7 then fly7() end
end

function fly1()

 local r = gg.getResults(1)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end


 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address - 824,
     flags = gg.TYPE_FLOAT,
     value = 10
   })
end

gg.setValues(list)
gg.toast("Готово, яхта будет летать на высоте 10 метров")
end

function fly2()

 local r = gg.getResults(1)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end


 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address - 824,
     flags = gg.TYPE_FLOAT,
     value = 50
   })
end

gg.setValues(list)
gg.toast("Готово, яхта будет летать на высоте 50 метров")
end

function fly3()

 local r = gg.getResults(1)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end


 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address - 824,
     flags = gg.TYPE_FLOAT,
     value = 65
   })
end

gg.setValues(list)
gg.toast("Готово, яхта будет летать на высоте 65 метров")
end

function fly4()

 local r = gg.getResults(1)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end


 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address - 824,
     flags = gg.TYPE_FLOAT,
     value = 85
   })
end

gg.setValues(list)
gg.toast("Готово, яхта будет летать на высоте 85 метров")
end

function fly5()

 local r = gg.getResults(1)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end


 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address - 824,
     flags = gg.TYPE_FLOAT,
     value = 180
   })
end

gg.setValues(list)
gg.toast("Готово, яхта будет летать на высоте 180 метров")
end

function fly6()

 local r = gg.getResults(1)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end


 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address - 824,
     flags = gg.TYPE_FLOAT,
     value = 230
   })
end

gg.setValues(list)
gg.toast("Готово, яхта будет летать на высоте 230 метров")
end

function fly7()

  local input = gg.prompt({
    "Введи своё растояние в метрах"
  }, nil, {"number"})
  if input == nil then return end

  local value = input[1]

 local r = gg.getResults(1)
 if #r == 0 then
  gg.toast("Сначала найди значение")
  return
end


 local list = {}
 for i, v in ipairs(r) do
   table.insert(list, {
     address = v.address - 824,
     flags = gg.TYPE_FLOAT,
     value = value
   })
end

gg.setValues(list)
gg.toast("Готово, яхта будет летать на высоте" .. value .. "метров")
end

function InfoScript()
  gg.alert("Мой скрипт\nВерсия 1.0\nФункции\n Нитро(без кд)\n бесплатные кард-паки\n много всего(денег, XP, и т.д.\n добавление нитро, починок\n изменение цвета интерфейса\n режим призрака, неподвижность(PlayerList хаки)\n изменение гравитации\n открытие секретных машин\n изменение ника\n изменение текстур прицепов на текстуры машин\n изменение груза(только на машинах Zed, Hercules\n выход из машины в мультиплеере\n покупка всех машин(Открыть машины)\n Большой уровень\n Летающая яхта\n Используй скрипт только в добрых намериваниях для игроков!\n Автор:𓆩𓅃ᦋ⃟ꪹꪮ⃢ꪑ⃞ỉꪶ⃝ꪖ𓆪 \n сделано для Off The Road v.1.18.1 armeadi-v7a, Android TV 11")
end

while true do 
   if gg.isVisible(true) then
    gg.setVisible(false)
    menu()
  end
end
