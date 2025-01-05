local beat = require("typebeat")

beat.setup()

require('lualine').setup {
    sections = {
        lualine_y = {
            beat.get_kpm
        }
    }
}

