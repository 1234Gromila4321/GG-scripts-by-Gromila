function menu()
  local t = gg.choice({
    "Бесконечный бензин",
    "Информация о скрипте",
    "Выход"
  }, nil, "Мой скрипт")
  if t == nil then return end
  if t == 1 then Fuel() end
  if t == 2 then InfoScript() end
  if t == 3 then os.exit() end
end

function Fuel()

gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.searchNumber("864;95;96;95;0;0;0;0;100::", gg.TYPE_FLOAT)
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

    table.insert(list, {
      address = v.address + 4,
      flags = gg.TYPE_FLOAT,
      value = 531.02380371094,
      freeze = true
    })

    table.insert(list, {
      address = v.address + 8,
      flags = gg.TYPE_FLOAT,
      value = 3.2919038e25,
      freeze = true
    })
end

gg.addListItems(list)
gg.toast("Готово, теперь можешь играть и не переживать что бензин кончится")
end

function InfoScript()
  gg.alert("Мой скрипт\n версия 1.0\n функции: Бесконечный бензин\n Автор:𓆩𓅃ᦋ⃟ꪹꪮ⃢ꪑ⃞ỉꪶ⃝ꪖ𓆪 \n сделано для Offroad Legends 2 v1.2.17, armeadi-v7a, Android TV 11")
end

while true do 
   if gg.isVisible(true) then
    gg.setVisible(false)
    menu()
  end
end