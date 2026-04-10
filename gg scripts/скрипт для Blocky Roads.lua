function menu()
  local t = gg.choice({
    "Много денег", 
    "Улучшение машин",
    "Информация о скрипте",
    "Выход"
  }, nil, "Мой скрипт")
  if t == nil then return end
  if t == 1 then Coins() end
  if t == 2 then CarMenu() end
  if t == 3 then InfoScript() end
  if t == 4 then os.exit() end
end

function Coins()

  local input = gg.prompt({
    "Введи количество монет"
  }, nil, {"number"})

  if input == nil then return end

  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
  gg.searchNumber(input[1], gg.TYPE_DWORD)

  gg.toast("Измени количество денег, у тебя 60 сек")
  gg.sleep(55000)
  gg.toast("Осталось 5 секунд, если ты в заезде, стань на паузу")
  gg.sleep(5000)

  local input2 = gg.prompt({
    "Сколько стало?"
  }, nil, {"number"})

  gg.refineNumber(input2[1], gg.TYPE_DWORD)

  gg.toast("Измени количество денег, у тебя 60 сек")
  gg.sleep(55000)
  gg.toast("Осталось 5 секунд, если ты в заезде, стань на паузу")
  gg.sleep(5000)

  local input3 = gg.prompt({
    "Сколько стало?"
  }, nil, {"number"})

  gg.refineNumber(input3[1], gg.TYPE_DWORD)

  local r = gg.getResults(100000)
  if #r == 0 then
    gg.toast("Не найдено")
   return
end

gg.editAll("2147000000", gg.TYPE_DWORD)
gg.toast("Готово")
end

function CarMenu()

  local t = gg.choice({
    "Бесконечный бензин",
    "Бесконечное здоровье",
    "Назад"
  }, nil, "Выбери что хочешь")
  if t == nil then return end
  if t == 1 then car1() end
  if t == 2 then car2() end
end

function car1()

gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("1050;100::5", gg.TYPE_FLOAT)
gg.refineNumber("100", gg.TYPE_FLOAT)

  local r = gg.getResults(100000)
  if #r == 0 then
   gg.toast("Не найдено")
   return
end

local list = {}
for i, v in ipairs(r) do
  table.insert(list, {
    address = v.address,
    flags = gg.TYPE_FLOAT,
    value = 100,
    freeze = true
  })
end

gg.addListItems(list)

gg.toast("Готово, у машины бесконечный бензин, до перезапуска(после рестарта бензин так и будет бесконечен)")

end

function car2()

  local input = gg.prompt({
    "Введи количество здоровья"
  }, nil, {"number"})

  if input == nil then return end

  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
  gg.searchNumber(input[1], gg.TYPE_DWORD)

  gg.toast("Получи урон, у тебя 20 сек")
  gg.sleep(20000)
  gg.toast("Остановись, или зайди в меню, у тебя 5 сек")
  gg.sleep(5000)

  local input2 = gg.prompt({
    "Сколько стало?"
  }, nil, {"number"})

  gg.refineNumber(input2[1], gg.TYPE_DWORD)

  gg.toast("Получи урон, у тебя 20 сек")
  gg.sleep(20000)
  gg.toast("Остановись, или зайди в меню, у тебя 5 сек")
  gg.sleep(5000)

  local input3 = gg.prompt({
    "Сколько стало?"
  }, nil, {"number"})

  gg.refineNumber(input3[1], gg.TYPE_DWORD)

  gg.toast("Получи урон, у тебя 20 сек")
  gg.sleep(20000)
  gg.toast("Остановись, или зайди в меню, у тебя 5 сек")
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

gg.editAll("2147000000", gg.TYPE_DWORD)
gg.toast("Готово, у машины 2147000000 здоровья")
end

function InfoScript()
gg.alert("Мой скрипт\n версия 1.0\n функции: Много денег\n Улучшение машин\n Автор:𓆩𓅃ᦋ⃟ꪹꪮ⃢ꪑ⃞ỉꪶ⃝ꪖ𓆪 \n сделано для Blocky Roads v1.3.8, armeadi-v7a, Android TV 11")
end

while true do 
   if gg.isVisible(true) then
    gg.setVisible(false)
    menu()
  end
end