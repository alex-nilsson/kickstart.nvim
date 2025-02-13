return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        require("bufferline").setup({
            options = {
                mode = "buffers", -- set to "tabs" if you want only tabs
                separator_style = "slant" or "padded_slant",
                always_show_bufferline = true,
                show_buffer_close_icons = true,
                show_close_icon = true,
                color_icons = true
            }
        })
    end
}