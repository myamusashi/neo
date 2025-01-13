-- ~/.config/nvim/lua/plugins/bufferline.lua
return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  opts = {
    options = {
      mode = "tabs", -- set to "tabs" untuk tampilan tab
      always_show_bufferline = true, -- selalu tampilkan
      show_buffer_close_icons = true,
      show_close_icon = true,
      color_icons = true,
      separator_style = "slant", -- bisa diganti: "thick", "thin", "slope", "padded_slant"
      indicator = {
        style = "underline", -- indikator tab aktif
      },
      diagnostics = "nvim_lsp",
      -- Mengaktifkan mouse actions
      themable = true, -- gunakan theming
      mouse_actions = {
        left_click = "buffer", -- klik kiri untuk pindah ke buffer
        middle_click = "delete", -- klik tengah untuk tutup buffer
        right_click = "close", -- klik kanan untuk tutup buffer
        wheel_up = "previous", -- scroll up untuk buffer sebelumnya
        wheel_down = "next", -- scroll down untuk buffer selanjutnya
      },
      -- Style
      tab_size = 18,
      max_name_length = 18,
      truncate_names = true, -- truncate nama file yang terlalu panjang
      -- Colors untuk active tab
      highlights = {
        buffer_selected = {
          bold = true,
          italic = false,
        },
      },
      -- Offset untuk neo-tree atau file explorer
      offsets = {
        {
          filetype = "neo-tree",
          text = "File Explorer",
          highlight = "Directory",
          separator = true,
        }
      },
    },
  },
  -- Key mappings
  keys = {
    { "<S-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev buffer" },
    { "<S-l>", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
    { "<leader>bc", "<cmd>BufferLinePickClose<cr>", desc = "Close buffer" },
    { "<leader>bp", "<cmd>BufferLinePick<cr>", desc = "Pick buffer" },
  },
}
