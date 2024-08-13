# Windows11Workflow
All my dotfiles, using Neovim with PowerShell in the Windows Terminal along with fzf and bat for
fast navigation. Additionally, there is a quick setup for Tridactyl on Firefox, and for a toggleable
Vim mode on the ZSA Voyager keyboard. You will also find a list of other useful tools at the end.

https://github.com/ConnorSweeneyDev/Windows11Workflow/assets/75945279/5024fc72-1f39-445e-a506-57b8cd181d88

*Showcase: **cw** (cd directory), **ew** (explorer directory), **nw** (nvim directory), **ctrl+f**
in Neovim (new tab + nw), **ctrl+tab** (switch tabs), **f** (open firefox with tridactyl), **q or
:q** (close the terminal tab)*

# System Setup
### Full Paths to Repository Folders:
- PowerShell &rightarrow; `C:\Users\[USERNAME]\Documents\PowerShell`.
- nvim &rightarrow; `C:\Users\[USERNAME]\AppData\Local\nvim`.
- posh &rightarrow; `C:\posh`
- scripts &rightarrow; `C:\scripts`.

### Miscellaneous Prerequisites:
- Ensure "Developer Mode" is turned on in windows settings (Windows + I and then search
  `developer`).
- Ensure you are able to access and use the Windows Store, winget relies on this for certain things.
  If you can't access the store (it's known to be glitchy for some accounts) then you can find
  alternative installs for dependencies on Chocolatey or their official websites.

### Terminal Installation:
- Windows Terminal &rightarrow; Run `winget install --id Microsoft.WindowsTerminal`.
- PowerShell (pwsh.exe) &rightarrow; Run `winget install --id Microsoft.Powershell --source winget`.
- NerdFont &rightarrow; Download from [here](https://www.nerdfonts.com/font-downloads) and put the
  contents in `C:\Documents\Fonts`, select all and right click then select "Install". You can delete
  the .ttf files from the folder after you've installed them.
- OhMyPosh &rightarrow; Run `winget install JanDeDobbeleer.OhMyPosh`, then paste the `C:\posh`
  folder to that location and run `oh-my-posh disable notice` to stop the annoying update message
  every so often.
### Terminal Settings:
- Startup &rightarrow; "Default profile" = PowerShell. "Default termial application" = Windows
  Terminal. "Launch size" = 120x30. "Launch parameters" = Center on launch enabled.
- Interaction &rightarrow; "Warn when closing more than one tab" = Off.
- Appearance &rightarrow; "Use acrylic material in the tab row" = On. "Use active terminal title as
  application title" = Off.
- Actions &rightarrow; Add a new action "Close tab" assigned to `ctrl+shift+d`. Set "Toggle
  fullscreen" to `alt+enter`. Set "Search" to `ctrl+shift+f`.
- Defaults &rightarrow; Appearance &rightarrow; "Font face" = CaskaydiaCove Nerd Font. "Font size" =
  19. "Background opacity" = 75%. "Cursor shape" = Filled box.
- Useful Shortcut &rightarrow; Go to `C:\Users\[USERNAME]\AppData\Local\Microsoft\WindowsApps` and
  right click `wt.exe` and create a shortcut. Move that to `C:\ProgramData\Microsoft\Windows\Start
  Menu\Programs` and edit it's properties - click `Change Icon...` and navigate to `C:\Program
  Files\WindowsApps\Microsoft.WindowsTerminal_[LONG NUMBER]` and open `WindowsTerminal.exe` and
  select the correct icon. Now you can run a new terminal by pressing the windows button and typing
  `wt`.
### PowerShell Settings:
- Command Line &rightarrow; `"[PATH TO PWSH.EXE]" -NoLogo`.
- Starting Directory &rightarrow; `C:\`.
- Appearance &rightarrow; "Font face" = CaskaydiaCove Nerd Font. "Font size" = 19. "Background
  opacity" = 75%.

### Dependencies for Neovim:
- Microsoft Visual C++ 2015-2022 Redistributable (x64) &rightarrow; Download from
  [here](https://learn.microsoft.com/en-us/cpp/windows/latest-supported-vc-redist?view=msvc-170) and
  run the installation wizard.
- Java &rightarrow; Download the compressed archive from
  [here](https://www.oracle.com/java/technologies/downloads/) and place the folder named
  `jdk-[VERSION]` in `C:\Program Files\Java` then add `C:\Program Files\Java\jdk-[VERSION]\bin` to
  your path.
- Git &rightarrow; Run `winget install --id Git.Git --source winget` then `git config --system
  core.longpaths true`.
- MinGW &rightarrow; Download from [here](https://winlibs.com/) and put the contents in `C:\MinGW`
  (I recommend 64-bit with POSIX threads for general purpose use). Add `C:\MinGW\bin` to your path.
- Python &rightarrow; Run `winget install --id Python.Python.3.12`.
- NodeJS &rightarrow; Run `winget install OpenJS.NodeJS` and say yes to installing Chocolatey.
- ripgrep &rightarrow; Run `winget install BurntSushi.ripgrep.MSVC`.
- fd &rightarrow; Run `winget install --id sharkdp.fd --source winget`.
- Neovim &rightarrow; Run `winget install neovim --version 0.10.0`.
- Python Provider &rightarrow; Run `pip install pynvim --upgrade`.
- NodeJS Provider &rightarrow; Run `npm install -g neovim`.
- Yarn &rightarrow; Run `winget install --id Yarn.Yarn`.
- Packer &rightarrow; Run `git clone https://github.com/wbthomason/packer.nvim
  "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.knvim"`.
- Paste the `C:\Users\[USERNAME]\Documents\PowerShell` folder to that location, edit
  `Microsoft.PowerShell_profile.ps1` and remove the `attend` and `music` functions, as they are
  specific to me.

### Dependencies for the Scripts Folder:
- fzf &rightarrow; Run `winget install --id=junegunn.fzf` or download the exe from
  [here](https://github.com/junegunn/fzf-bin/releases) and put it in `C:\Windows`.
- bat &rightarrow; Run `winget install sharkdp.bat`.
- Firefox &rightarrow; Download from [here](https://www.mozilla.org/en-GB/firefox/new/). Install to
  `C:\Program Files\Mozilla Firefox\firefox.exe`.
- NirCmd &rightarrow; Run `winget install --id NirSoft.NirCmd`.
- Tridactyl &rightarrow; Go
  [here](https://addons.mozilla.org/en-US/firefox/addon/tridactyl-vim/?utm_source=github.com&utm_content=readme.md)
  on Firefox.
- Paste the `C:\scripts` folder to that location. Put `C:\scripts\which` and `C:\scripts\firefox` in
  your path.

# Neovim Setup
I recommend manually recreating the `nvim` folder on your PC rather than just pasting it in, because
this will allow you to single out any unexpected errors as they happen.

You should start with the top level `init.lua`, replace "connor" with "[YOUR USERNAME]" then move on
to the `lua\[USERNAME]\init.lua` and replace my name with yours again. Then you can create
`lua\[USERNAME]\remap.lua` and `lua\[USERNAME]\set.lua` and paste the config into each. Running
`nvim .` in the nvim directory now should open Neovim and give you no errors.

Now you can create `lua\[USERNAME]\packer.lua`, populate it with only the following lines:
```lua
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
  use('wbthomason/packer.nvim')
end)
```
Now run `:so` and `:PackerSync`, then say yes to removing the packer directory if prompted and press
`q` after packer finishes.

Now, under the line `use('wbthomason\packer.nvim')` you can start adding plugins, do so in the
following pattern (with some exceptions):
- Add the line to `lua\[USERNAME]\packer.lua` and run `:so` then `:PackerSync` inside it.
- If it needs one, add an `after\plugin\[PLUGIN].lua` file for the plugin and run `:so` inside it.
- Run `:q` then `nvim .` incase the plugin needs a restart.

The following plugins require extra or different steps than those outlined above:
- Treesitter &rightarrow; After following the steps, you should see it compiling languages at the
  bottom of your screen, don't touch your keyboard until this is finished, though it is common to
  get errors at this point, if you do, generally restarting neovim a few times and deleting any
  directories manually that it says it doesn't have permission to delete will let them all figure
  themselves out. However if you get an error along the lines of `[LANGUAGE].so is not a valid Win32
  app`, this means either your version of MinGW does not match your operating system or treesitter
  is using the wrong compiler. After fixing the issue you can run `:TSInstall [LANGUAGE]` to
  recompile it.
- Coc &rightarrow; After following the steps, run `:CocInstall coc-discord-rpc coc-diagnostic
  coc-copilot coc-git coc-html coc-tsserver coc-css coc-cssmodules coc-json coc-xml coc-sql
  coc-pyright coc-java coc-omnisharp coc-clangd coc-clang-format-style-options` then `:q` to close
  the dialog once everything is installed and add `coc-settings.json`, where you should add the path
  to your java installation instead of my one, then restart again. If you don't want any of the
  listed servers, dont include them or just run `:CocUninstall [SERVER]` after the first command. If
  a language you want is missing, you can find it
  [here](https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions#implemented-coc-extensions).
- Copilot &rightarrow; If you don't have a license for Copilot then don't include this plugin. If
  you do, then after following the steps run `:Copilot setup` and follow the instructions.
- Colorscheme &rightarrow; You can use the one that I use, but if you don't want to you will have to
  change the lines in `lua\[USERNAME]\packer.lua`, `after\plugin\colors.lua` and
  `after\plugin\lualine.lua` accordingly.

You can now add the `after\ftplugin` folder and any files inside it, which are used for language
specific configuration. After all those plugins are installed, don't forget to include
`after\plugin\buffers.lua`, `after\plugin\colors.lua` and `after\plugin\source.lua` as they are not
directly tied to any plugins.

`colors.lua` will apply all the settings of the selected colorscheme, `source.lua` is a helper for
any files that need to be sourced after startup, and `buffers.lua` is optional, as it can slow down
the startup time but will open, in separate buffers, every file in the specified directory that has
any of the file extensions specified - this can be useful because renaming symbols across multiple
files can fail if you need to change words in a buffer that is not already open.

Finally, you can paste the `mapping-info` folder into the root for safe keeping. All keybinds can be
edited at `lua\[USERNAME]\remap.lua` or the respective `after\plugin\[PLUGIN].lua` file, and all
settings can be edited at `lua\[USERNAME]\set.lua`.

# Firefox with Tridactyl Setup
To use `firefoxfocusfix.bat` from the start menu rather than just the terminal, follow these steps:
- Go to `C:\ProgramData\Microsoft\Windows\Start Menu\Programs` and right click on the Firefox
  shortcut, then properties.
- Change the target to `C:\scripts\firefox\firefoxfocusfix.bat`.
- Change Run to `Minimized` (stops the terminal from opening).
- Click Change Icon and browse to `C:\Program Files\Mozilla Firefox` then select the Firefox icon.
- Apply the changes.

Now make firefox your default browser. After that go to Firefox settings and change the following:
- General &rightarrow; Use recommended performance settings = Off.
- General &rightarrow; Use hardware acceleration when available = Off.
- Home &rightarrow; Homepage and new windows &rightarrow; Custom URLs... &rightarrow; Open a new
  tab, then close it and go to your history, copy the url of that closed tab and paste it into the
  field - it should be of the form `moz-extension://[NUMBERS]/static/newtab.html`.
- Home &rightarrow; Default search engine = Google.
- Now go to this url `about:config` and search for `full-screen-api.transition-duration.enter` and
  `full-screen-api.transition-duration.leave` and change both to `0 0`.
- Scan the rest of the settings and disable things you don't want that will slow down the browser.

Using Tridactyl, press `:` and type the following commands:
- `set newtab about:blank`.
- `set searchengine google`.
- `set modeindicatorshowkeys true`.
- `set modeindicatormodes
  {"normal":"true","insert":"true","input":"true","ignore":"false","ex":"true","hint":"true","visual":"true"}`.

You can go [here](https://github.com/tridactyl/tridactyl?tab=readme-ov-file#highlighted-features) to
view all the most important bindings.

# Vim Mode on ZSA Voyager
If you happen to use a ZSA Voyager keyboard, you can follow the instructions in my
[VimForVoyager](https://github.com/ConnorSweeneyDev/VimForVoyager) repository to set up a native vim
toggle using a smart combination of utility keys like `home`, `end`, `delete` etc. and modifiers
like `shift + arrow`, `ctrl + arrow` etc. meaning these bindings work almost everywhere.

This is achieved using the QMK firmware, more specifically ZSA's fork of it, and programming certain
actions to be triggered by certain key combinations. Details of exactly what is supported can be
found in the repository.

# Other Useful Tools
PowerToys &rightarrow; Run `winget install Microsoft.PowerToys --source winget` - enable Run at
startup - my favourite tools are:
- Run with an activation shortcut of `shift+backspace`, input smoothing disabled, clear previous
  query on launch enabled, preferred monitor primary, all plugins off except window walker - this
  allows switching windows by searching their name instead of alt tabbing.
- Color Picker with an activation shortcut of `win+shift+c` and HEX, RGB and VEC4 enabled.
- Mouse Jump with an activation shortcut of `win+shift+d` and a max size of `1200x900`.
- Screen Ruler with an activation shortcut of `win+shift+p`.
- Text Extractor with an activation shortcut of `win+shift+t`.
- File Locksmith enabled.
- Command Not Found enabled.

SysInternals &rightarrow; Download from
[here](https://learn.microsoft.com/en-us/sysinternals/downloads/) and choose the executables that
you want - the only one I use is ZoomIt with the following settings:
- Run ZoomIt when Windows starts and Show tray icon both enabled.
- Zoom on `ctrl+/` with animate zoom in and zoom out disabled.
- Draw on `ctrl+'`.
- Record on `ctrl+;`.

Visual Studio 2022 &rightarrow; Download from [here](https://visualstudio.microsoft.com/vs/) and go
through the installation wizard.

Dependencies &rightarrow; Download from [here](https://github.com/lucasg/Dependencies) and put the
contents in `C:\Dependencies`, make that folder is an environment variable, then right click
`DependenciesGui.exe` and select "Create shortcut" and rename it to `Dependencies`, then move that
to `C:\ProgramData\Microsoft\Windows\Start Menu\Programs`.

Everything &rightarrow; Download the portable zip from [here](https://www.voidtools.com/) and put
the contents in `C:\Everything`. Right click `Everything.exe` and select "Create shortcut", then
rename it to `Everything` and place this shortcut in `C:\ProgramData\Microsoft\Windows\Start
Menu\Programs`.

Cutter &rightarrow; Download from [here](https://github.com/rizinorg/cutter/releases) and put the
contents in `C:\Cutter`. Right click `cutter.exe` and select "Create shortcut", then rename it to
`Cutter` and place this shortcut in `C:\ProgramData\Microsoft\Windows\Start Menu\Programs`.

Portal &rightarrow; Run `winget install SpatiumPortae.portal`, go
[here](https://github.com/SpatiumPortae/portal) for instructions.

Mp3tag &rightarrow; Download from [here](https://www.mp3tag.de/en/download.html).

scc &rightarrow; As an admin, run `choco install scc` - details can be found
[here](https://github.com/boyter/scc).

Windows11CursorConceptV2.2 &rightarrow; Go
[here](https://www.deviantart.com/jepricreations/art/Windows-11-Cursors-Concept-HD-v2-890672103) for
a more fitting cursor. After buying, extract the contents to a known location and go to the version
you desire, right click the `install.inf` file, click install and accept any dialogs that appear.
