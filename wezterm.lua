local Config = require('config')

require('events.right-status').setup()
require('events.tab-title').setup()
require('events.new-tab-button').setup()

return Config:init()
    :append(require('config.appearance'))
    :append(require('config.bindings'))
    :append(require('config.domains'))
    :append(require('config.fonts'))
    :append(require('config.general'))
    -- :append(require('config.full_screen'))
    :append(require('config.mixmize'))
    :append(require('config.launch')).options
