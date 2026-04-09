function menu()
  local t = gg.choice({
    "Много денег",
    "Информация о скрипте",
    "Выход"
  }, nil, "Мой скрипт")
  if t == nil then return end
  if t == 1 then Money() end
  if t == 2 then InfoScript() end
  if t == 3 then os.exit() end
end

function Money()

  local input = gg.prompt({
    "Введи количество денег"
  }, nil, {"number"})

  if input == nil then return end

  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
  gg.searchNumber(input[1], gg.TYPE_DWORD)

  gg.toast("Измени количество денег(60 сек)")
  gg.sleep(60000)

  local input2 = gg.prompt({
    "Сколько стало?"
  }, nil, {"number"})

  gg.refineNumber(input2[1], gg.TYPE_DWORD)

  gg.toast("Снова измени количество денег(60 сек)")
  gg.sleep(60000)

  local input3 = gg.prompt({
    "Сколько стало?"
  }, nil, {"number"})

  gg.refineNumber(input3[1], gg.TYPE_DWORD)

  gg.toast("Снова измени количество денег(60 сек)")
  gg.sleep(60000)

  local input4 = gg.prompt({
    "Сколько стало?"
  }, nil, {"number"})

  gg.refineNumber(input4[1], gg.TYPE_DWORD)

  local r = gg.getResults(100000)
  if #r == 0 then
    gg.toast("Не найдено")
   return
end

gg.toast("Вернись в главное меню, 30 сек")
gg.sleep(30000)

gg.editAll("2147000000", gg.TYPE_DWORD)
gg.toast("Готово, купи любую машину чтобы число обновилось")
end

function InfoScript()
  gg.alert("Мой скрипт\n версия 1.0\n функции: Много денег\n Автор:𓆩𓅃ᦋ⃟ꪹꪮ⃢ꪑ⃞ỉꪶ⃝ꪖ𓆪 \n сделано для Offroad Legends v1.3.16, armeadi-v7a, Android TV 11")
end

while true do 
   if gg.isVisible(true) then
    gg.setVisible(false)
    menu()
  end
end
