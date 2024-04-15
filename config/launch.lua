local platform = require('utils.platform')()

local options = {
   default_prog = {},
   launch_menu = {},
}

if platform.is_win then
   options.default_prog = { 'pwsh' }
   options.launch_menu = {
      { label = 'PowerShell Core',    args = { 'pwsh' } },
      { label = 'PowerShell Desktop', args = { 'powershell' } },
      { label = 'Command Prompt',     args = { 'cmd' } },
      {
         label = 'Rocky Linux',
         args = { 'wsl', '-d', 'Rocky' },
      },
      {
         label = 'Ubuntu',
         args = { 'wsl', '-d', 'Ubuntu' },
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
