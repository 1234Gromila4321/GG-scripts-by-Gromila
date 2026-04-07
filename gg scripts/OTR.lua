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
  if t == 14 then InfoScript() end
  if t == 15 then os.exit() end
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

function InfoScript()
  gg.alert("Мой скрипт\nВерсия 1.0\nФункции\n Нитро(без кд)\n бесплатные кард-паки\n много всего(денег, XP, и т.д.\n добавление нитро, починок\n изменение цвета интерфейса\n режим призрака, неподвижность(PlayerList хаки)\n изменение гравитации\n открытие секретных машин\n изменение ника\n изменение текстур прицепов на текстуры машин\n изменение груза(только на машинах Zed, Hercules\n выход из машины в мультиплеере\n покупка всех машин(Открыть машины)\nИспользуй скрипт только в добрых намериваниях для игроков!\n Автор:𓆩𓅃ᦋ⃟ꪹꪮ⃢ꪑ⃞ỉꪶ⃝ꪖ𓆪 \n сделано для Off The Road v.1.18.1 armeadi-v7a, Android TV 11")
end

while true do 
   if gg.isVisible(true) then
    gg.setVisible(false)
    menu()
  end
end
