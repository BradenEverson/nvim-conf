-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/braden/.cache/nvim/packer_hererocks/2.1.1713484068/share/lua/5.1/?.lua;/home/braden/.cache/nvim/packer_hererocks/2.1.1713484068/share/lua/5.1/?/init.lua;/home/braden/.cache/nvim/packer_hererocks/2.1.1713484068/lib/luarocks/rocks-5.1/?.lua;/home/braden/.cache/nvim/packer_hererocks/2.1.1713484068/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/braden/.cache/nvim/packer_hererocks/2.1.1713484068/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/braden/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/braden/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  catppucin = {
    loaded = true,
    path = "/home/braden/.local/share/nvim/site/pack/packer/start/catppucin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmake-tools.nvim"] = {
    loaded = true,
    path = "/home/braden/.local/share/nvim/site/pack/packer/start/cmake-tools.nvim",
    url = "https://github.com/Civitasv/cmake-tools.nvim"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/braden/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  harpoon = {
    loaded = true,
    path = "/home/braden/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/theprimeagen/harpoon"
  },
  ["iceberg.vim"] = {
    loaded = true,
    path = "/home/braden/.local/share/nvim/site/pack/packer/start/iceberg.vim",
    url = "https://github.com/cocopon/iceberg.vim"
  },
  kanagawa = {
    loaded = true,
    path = "/home/braden/.local/share/nvim/site/pack/packer/start/kanagawa",
    url = "https://github.com/rebelot/kanagawa.nvim"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/home/braden/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/braden/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/braden/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/braden/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nordic.nvim"] = {
    loaded = true,
    path = "/home/braden/.local/share/nvim/site/pack/packer/start/nordic.nvim",
    url = "https://github.com/AlexvZyl/nordic.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/braden/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/braden/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/braden/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-spotify"] = {
    config = { "\27LJ\2\n�\1\0\0\5\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\3B\1\2\1K\0\1\0\vstatus\1\0\1\vstatus\0\1\0\2\20update_interval\3�N\vformat\16%s %t by %a\nsetup\17nvim-spotify\frequire\0" },
    loaded = true,
    path = "/home/braden/.local/share/nvim/site/pack/packer/start/nvim-spotify",
    url = "https://github.com/KadoBOT/nvim-spotify"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/braden/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/braden/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["omnisharp-vim"] = {
    loaded = true,
    path = "/home/braden/.local/share/nvim/site/pack/packer/start/omnisharp-vim",
    url = "https://github.com/OmniSharp/omnisharp-vim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/braden/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/braden/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/braden/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rainbow_csv.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\16rainbow_csv\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/braden/.local/share/nvim/site/pack/packer/opt/rainbow_csv.nvim",
    url = "https://github.com/cameron-wags/rainbow_csv.nvim"
  },
  ["rust-tools.nvim"] = {
    loaded = true,
    path = "/home/braden/.local/share/nvim/site/pack/packer/start/rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/braden/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    loaded = true,
    path = "/home/braden/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["transparent.nvim"] = {
    loaded = true,
    path = "/home/braden/.local/share/nvim/site/pack/packer/start/transparent.nvim",
    url = "https://github.com/xiyaowong/transparent.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/braden/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  vague = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\22colorscheme vague\bcmd\bvim\0" },
    loaded = true,
    path = "/home/braden/.local/share/nvim/site/pack/packer/start/vague",
    url = "https://github.com/vague2k/vague.nvim"
  },
  ["vim-be-good"] = {
    loaded = true,
    path = "/home/braden/.local/share/nvim/site/pack/packer/start/vim-be-good",
    url = "https://github.com/ThePrimeagen/vim-be-good"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/braden/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^rainbow_csv"] = "rainbow_csv.nvim",
  ["^rainbow_csv%.fns"] = "rainbow_csv.nvim"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Config for: vague
time([[Config for vague]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\22colorscheme vague\bcmd\bvim\0", "config", "vague")
time([[Config for vague]], false)
-- Config for: nvim-spotify
time([[Config for nvim-spotify]], true)
try_loadstring("\27LJ\2\n�\1\0\0\5\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\3B\1\2\1K\0\1\0\vstatus\1\0\1\vstatus\0\1\0\2\20update_interval\3�N\vformat\16%s %t by %a\nsetup\17nvim-spotify\frequire\0", "config", "nvim-spotify")
time([[Config for nvim-spotify]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType rfc_csv ++once lua require("packer.load")({'rainbow_csv.nvim'}, { ft = "rfc_csv" }, _G.packer_plugins)]]
vim.cmd [[au FileType rfc_semicolon ++once lua require("packer.load")({'rainbow_csv.nvim'}, { ft = "rfc_semicolon" }, _G.packer_plugins)]]
vim.cmd [[au FileType csv_whitespace ++once lua require("packer.load")({'rainbow_csv.nvim'}, { ft = "csv_whitespace" }, _G.packer_plugins)]]
vim.cmd [[au FileType tsv ++once lua require("packer.load")({'rainbow_csv.nvim'}, { ft = "tsv" }, _G.packer_plugins)]]
vim.cmd [[au FileType csv_semicolon ++once lua require("packer.load")({'rainbow_csv.nvim'}, { ft = "csv_semicolon" }, _G.packer_plugins)]]
vim.cmd [[au FileType csv ++once lua require("packer.load")({'rainbow_csv.nvim'}, { ft = "csv" }, _G.packer_plugins)]]
vim.cmd [[au FileType csv_pipe ++once lua require("packer.load")({'rainbow_csv.nvim'}, { ft = "csv_pipe" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
