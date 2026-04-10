function menu()
  local t = gg.choice({
    "Много монет, алмазов",
    "Много XP",
    "Много балов Score",
    "Нет кд супер способностей",
    "Информация о скрипте",
    "Выход"
  }, nil, "Мой скрипт")
  if t == nil then return end
  if t == 1 then Coins() end
  if t == 2 then XP() end
  if t == 3 then Score() end
  if t == 4 then Super() end
  if t == 5 then InfoScript() end
  if t == 6 then os.exit() end
end

function Coins()

  local input = gg.prompt({
    "Введи количество монет"
  }, nil, {"number"})

  if input == nil then return end

  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
  gg.searchNumber(input[1], gg.TYPE_DWORD)

  gg.toast("Собери монеты, у тебя 30 сек")
  gg.sleep(25000)
  gg.toast("Зайди в меню, у тебя 5 сек")
  gg.sleep(5000)

  local input2 = gg.prompt({
    "Сколько стало?"
  }, nil, {"number"})

  gg.refineNumber(input2[1], gg.TYPE_DWORD)

  gg.toast("Собери монеты, у тебя 30 сек")
  gg.sleep(25000)
  gg.toast("Зайди в меню, у тебя 5 сек")
  gg.sleep(5000)

  local input3 = gg.prompt({
    "Сколько стало?"
  }, nil, {"number"})

  gg.refineNumber(input3[1], gg.TYPE_DWORD)

  gg.toast("Собери монеты, у тебя 30 сек")
  gg.sleep(25000)
  gg.toast("Зайди в меню, у тебя 5 сек")
  gg.sleep(5000)

  local input4 = gg.prompt({
    "Сколько стало?"
  }, nil, {"number"})

  gg.refineNumber(input4[1], gg.TYPE_DWORD)

  local r = gg.getResults(100000)
  if #r == 0 then
   gg.toast("Не найдено")
   return
end

  local list = {}

  for i, v in ipairs(r) do

    table.insert(list, {
      address = v.address,
      flags = gg.TYPE_DWORD,
      value = 2147000000,
      freeze = true
    })

    table.insert(list, {
      address = v.address + 4,
      flags = gg.TYPE_DWORD,
      value = 2147000000,
      freeze = true
    })
end

gg.addListItems(list)

gg.toast("Готово, теперь у тебя 2147000000 монет, алмазов")
end

function XP()

  local input = gg.prompt({
    "Введи количество XP"
  }, nil, {"number"})

  if input == nil then return end

  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
  gg.searchNumber(input[1], gg.TYPE_DWORD)

  gg.toast("Подними XP, у тебя 30 сек")
  gg.sleep(25000)
  gg.toast("У тебя осталось 5 сек")
  gg.sleep(5000)

  local input2 = gg.prompt({
    "Сколько стало?"
  }, nil, {"number"})

  gg.refineNumber(input2[1], gg.TYPE_DWORD)

  gg.toast("Подними XP, у тебя 30 сек")
  gg.sleep(25000)
  gg.toast("У тебя осталось 5 сек")
  gg.sleep(5000)

  local input3 = gg.prompt({
    "Сколько стало?"
  }, nil, {"number"})

  gg.refineNumber(input3[1], gg.TYPE_DWORD)

  gg.toast("Подними XP, у тебя 30 сек")
  gg.sleep(25000)
  gg.toast("У тебя осталось 5 сек")
  gg.sleep(5000)

  local input4 = gg.prompt({
    "Сколько стало?"
  }, nil, {"number"})

  gg.refineNumber(input4[1], gg.TYPE_DWORD)

  local r = gg.getResults(100000)
  if #r == 0 then
   gg.toast("Не найдено")
   return
end

  local input5 = gg.prompt({
    "Сколько хочешь? максимум\n 2147000000"
  }, nil, {"number"})

gg.editAll(input5[1], gg.TYPE_DWORD)
gg.toast("Сыграй раунд, и XP обновится")
end

function Score()

  local input = gg.prompt({
    "Введи количество балов в Score"
  }, nil, {"number"})

  if input == nil then return end

  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
  gg.searchNumber(input[1], gg.TYPE_DWORD)

  gg.toast("Играй чтоб балы Score увеличивались, у тебя 20 сек")
  gg.sleep(15000)
  gg.toast("Зайди в меню, у тебя осталось 5 сек")
  gg.sleep(5000)

  local input2 = gg.prompt({
    "Сколько стало?"
  }, nil, {"number"})

  gg.refineNumber(input2[1], gg.TYPE_DWORD)

  gg.toast("Играй чтоб балы Score увеличивались, у тебя 20 сек")
  gg.sleep(15000)
  gg.toast("Зайди в меню, у тебя осталось 5 сек")
  gg.sleep(5000)

  local input3 = gg.prompt({
    "Сколько стало?"
  }, nil, {"number"})

  gg.refineNumber(input3[1], gg.TYPE_DWORD)

  gg.toast("Играй чтоб балы Score увеличивались, у тебя 20 сек")
  gg.sleep(15000)
  gg.toast("Зайди в меню, у тебя осталось 5 сек")
  gg.sleep(5000)

  local input4 = gg.prompt({
    "Сколько стало?"
  }, nil, {"number"})

  gg.refineNumber(input4[1], gg.TYPE_DWORD)

  local r = gg.getResults(100000)
  if #r == 0 then
   gg.toast("Не найдено")
   return
end

  local list = {}
  for i, v in ipairs(r) do
    table.insert(list, {
      address = v.address,
      flags = gg.TYPE_DWORD,
      value = 2147000000,
      freeze = true
    })
end

gg.addListItems(list)
gg.toast("Готово, теперь балы Score 2147000000")
end

function Super()

  gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
  gg.searchNumber("24.3", gg.TYPE_FLOAT)

  local r = gg.getResults(100000)
  if #r == 0 then
   gg.toast("Не найдено")
   return
end

  local list = {}

  for i, v in ipairs(r) do

    table.insert(list, {
      address = v.address - 4,
      flags = gg.TYPE_FLOAT,
      value = 0,
      freeze = true
    })

    table.insert(list, {
      address = v.address,
      flags = gg.TYPE_DWORD,
      value = 24.3,
      freeze = true
    })
end

gg.addListItems(list)
gg.toast("Готово, у супер силы нет перезарядки")
end

function InfoScript()
  gg.alert("Мой скрипт\n версия 1.0\n функции:\n Много монет, алмазов\n Много XP\n Много балов Score\n Нет кд супер способностей\n Автор:𓆩𓅃ᦋ⃟ꪹꪮ⃢ꪑ⃞ỉꪶ⃝ꪖ𓆪 \n сделано для 8bitninja v1.4.0, armeadi-v7a, Android TV 11")
end

while true do 
   if gg.isVisible(true) then
    gg.setVisible(false)
    menu()
  end
end