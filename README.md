# nvim_config

I use NvChad for my neovim setup and these are the only files that I modify from the initial config.


In the plugins_init.lua file I add harpoon, undotree and fugitive.

In the mappings.lua file, I've modified some of the more basic motions to things that fit my typing style, if some ever forks this feel free to modify these.

In the core_init.lua file, I enable line numbers and relative line numbers to make jumping around easier.


install these via mason:

-- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",
    "codelldb",

    -- python stuff
    "pyright",
    "mypy",
    "ruff",
    "black",
    "debugpy",

    -- go stuff
    "gopls",
