#SingleInstance Force

RunWait("pwsh -Command if ((Get-Process -Name 'komorebi' -ErrorAction SilentlyContinue) -eq $null) { } else { komorebic stop }", , "Hide")
RunWait("pwsh -Command if ((Get-Process -Name 'yasb' -ErrorAction SilentlyContinue) -eq $null) { } else { Stop-Process -Name 'yasb' -Force }", , "Hide")
RunWait("pwsh -Command komorebic start", , "Hide")
RunWait("pwsh -Command yasb", , "Hide")

Komorebic(cmd) {
  RunWait(format("komorebic.exe {}", cmd), , "Hide")
}

#c::Komorebic("close")
#z::Komorebic("minimize")
#^!0::Komorebic("toggle-float")

#^!1::Komorebic("focus left")
#^!2::Komorebic("focus down")
#^!3::Komorebic("focus up")
#^!4::Komorebic("focus right")
#^!+1::Komorebic("move left")
#^!+2::Komorebic("move down")
#^!+3::Komorebic("move up")
#^!+4::Komorebic("move right")

#^!5::Komorebic("focus-workspace 0")
#^!6::Komorebic("focus-workspace 1")
#^!7::Komorebic("focus-workspace 2")
#^!8::Komorebic("focus-workspace 3")
#^!9::Komorebic("focus-workspace 4")
#^!+5::Komorebic("move-to-workspace 0")
#^!+6::Komorebic("move-to-workspace 1")
#^!+7::Komorebic("move-to-workspace 2")
#^!+8::Komorebic("move-to-workspace 3")
#^!+9::Komorebic("move-to-workspace 4")

#f::Run("pwsh -Command f", , "Hide")
#t::Run("pwsh -Command wt", , "Hide")
