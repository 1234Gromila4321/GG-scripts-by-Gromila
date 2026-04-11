function menu()
  local t = gg.choice({
    "Много денег, монет",
    "Информация о скрипте",
    "Выход"
  }, nil, "Мой скрипт")
  if t == nil then return end
  if t == 1 then Coins() end
  if t == 2 then InfoScript() end
  if t == 3 then os.exit() end
end

function Coins()

gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.clearResults()
gg.searchNumber("1047904911;3;1;1;0;1054615798;420;350;7000;0::37", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1047904911;3;1;1;0;1054615798;420;350;-2147000000;-2147000000", gg.TYPE_DWORD)
gg.processResume()

gg.setRanges(gg.REGION_ANONYMOUS + gg.REGION_OTHER)
gg.clearResults()
gg.searchNumber("1;15;3;0;1056964608;420;350;78000;25::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1;0;3;0;1056964608;420;350;-2147000000;-2147000000", gg.TYPE_DWORD)
gg.processResume()
end

function InfoScript()
  gg.alert("Мой скрипт\n версия 1.0\n функции: Много монет, алмазов\n Автор:𓆩𓅃ᦋ⃟ꪹꪮ⃢ꪑ⃞ỉꪶ⃝ꪖ𓆪 \n сделано для RedLine Rush v1.4.2, armeadi-v7a, Android TV 11")
end

while true do 
   if gg.isVisible(true) then
    gg.setVisible(false)
    menu()
  end
end
