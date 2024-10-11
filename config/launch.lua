local platform = require('utils.platform')()

local options = {
   default_prog = {},
   launch_menu = {},
}

if platform.is_win then
   options.default_prog = { 'pwsh', '-wd', 'D:/Workspace/' }
   options.launch_menu = {
      { label = 'PowerShell Core',    args = { 'pwsh', '-wd', 'D:/Workspace/' } },
      { label = 'PowerShell Desktop', args = { 'powershell' } },
      { label = 'Command Prompt',     args = { 'cmd' } },
      {
         label = 'Ubuntu 22.04',
         args = { 'wsl', '-d', 'Ubuntu' },
      },
      {
         label = '124.71.108.242',
         args = { 'ssh', '124.71.108.242', '-l', 'root' },
      },

   }
elseif platform.is_mac then
   options.default_prog = { '/opt/homebrew/bin/fish' }
   options.launch_menu = {
      { label = 'Bash',    args = { 'bash' } },
      { label = 'Fish',    args = { '/opt/homebrew/bin/fish' } },
      { label = 'Nushell', args = { '/opt/homebrew/bin/nu' } },
      { label = 'Zsh',     args = { 'zsh' } },
   }
end

return options
