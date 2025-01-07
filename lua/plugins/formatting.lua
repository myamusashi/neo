-- ~/.config/nvim/lua/plugins/conform.lua
return {
  "stevearc/conform.nvim",
  optional = true,
  opts = {
    formatters_by_ft = {
      -- Mempertahankan formatter default LazyVim
      lua = { "stylua" },
      fish = { "fish_indent" },
      sh = { "shfmt" },
      
      -- Menambahkan formatter untuk C++
      cpp = { "clang-format" }, -- atau bisa menggunakan "astyle", "uncrustify"
      c = { "clang-format" },
    },
    
    -- Konfigurasi khusus untuk formatter
    formatters = {
      clang_format = {
        -- Opsional: tambahkan konfigurasi khusus untuk clang-format
        prepend_args = { 
          "--style=file", -- menggunakan .clang-format file jika ada
          -- atau bisa menggunakan style langsung:
          -- "--style={BasedOnStyle: llvm, IndentWidth: 4, ColumnLimit: 120}"
        },
      },
    },
  },
}
