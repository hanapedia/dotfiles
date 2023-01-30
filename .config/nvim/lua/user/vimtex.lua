-- Configuration for vimtex
-- Viewer options: One may configure the viewer either by specifying a built-in
-- viewer method:
vim.g.vimtex_view_method = 'zathura'

-- VimTeX uses latexmk as the default compiler backend. If you use it, which is
-- strongly recommended, you probably don't need to configure anything. If you
-- want another compiler backend, you can change it as follows. The list of
-- supported backends and further explanation is provided in the documentation,
-- see ":help vimtex-compiler".
-- vim.g.vimtex_compiler_method = 'tectonic'
vim.g.vimtex_compiler_method = 'latexmk'
-- Requirements: tectonic and entr
--[[ vim.g.vimtex_compiler_method = 'generic' ]]
--[[ vim.g.vimtex_compiler_generic = { command = 'ls *.tex | entr -c tectonic --synctex --keep-logs' } ]]
