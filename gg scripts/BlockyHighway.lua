function menu()
  local t = gg.choice({
    "Много всего",
    "Информация о скрипте",
    "Выход"
  }, nil, "Мой скрипт")
  if t == nil then return end
  if t == 1 then Score() end
  if t == 2 then InfoScript() end
  if t == 3 then os.exit() end
end

function Score()

  local input = gg.prompt({
    "Введи количество очков Score"
  }, nil, {"number"})

  if input == nil then return end

  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
  gg.searchNumber(input[1], gg.TYPE_DWORD)

  gg.toast("Измени количество балов Score(30 сек)")
  gg.sleep(25000)
  gg.toast("Притормози, у тебя 5 сек")
  gg.sleep(5000)

  local input2 = gg.prompt({
    "Сколько стало?"
  }, nil, {"number"})

  gg.refineNumber(input2[1], gg.TYPE_DWORD)

  gg.toast("Снова измени количество балов Score(30 сек)")
  gg.sleep(25000)
  gg.toast("Притормози, у тебя 5 сек")
  gg.sleep(5000)

  local input3 = gg.prompt({
    "Сколько стало?"
  }, nil, {"number"})

  gg.refineNumber(input3[1], gg.TYPE_DWORD)

  gg.toast("И ещё раз измени количество балов Score(30 сек)")
  gg.sleep(25000)
  gg.toast("Притормози, у тебя 5 сек")
  gg.sleep(5000)

  local input4 = gg.prompt({
    "Сколько стало?"
  }, nil, {"number"})

  gg.refineNumber(input4[1], gg.TYPE_DWORD)

  gg.toast("Попади в аварию, перезапуски гонку, набери балы, и выйди в меню(30 сек)")
  gg.sleep(30000)

  local input5 = gg.prompt({
    "Сколько стало?"
  }, nil, {"number"})

  gg.refineNumber(input5[1], gg.TYPE_DWORD)

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

     table.insert(list, {
       address = v.address + 8,
       flags = gg.TYPE_DWORD,
       value = 2147000000,
       freeze = true
     })
  end

gg.addListItems(list)
gg.toast("Готово")
end

function InfoScript()
  gg.alert("Мой скрипт\n версия 1.0\n функции:\n Много всего(Деньги, Алмазы, балы в Score)\n Автор:𓆩𓅃ᦋ⃟ꪹꪮ⃢ꪑ⃞ỉꪶ⃝ꪖ𓆪 \n сделано для Blocky Highway v1.2.7, armeadi-v7a, Android TV 11")
end

while true do 
   if gg.isVisible(true) then
    gg.setVisible(false)
    menu()
  end
end
