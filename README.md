# bril.nvim

This plugin is a simple wrapper around [`sampsyo/bril/bril-vim`](https://github.com/sampsyo/bril/tree/main/bril-vim).
There's nothing fancy here.

## 📦 Install

> [!NOTE]
> This section assumes a Unix-like operating system.

First, install the Bril LSP:

```sh
cargo install --locked --git https://gitlab.com/ethanuppal/cs6120 bril-lsp
```

Be sure to update the LSP regularly as I make changes.

Then, install the plugin with [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{ "ethanuppal/bril.nvim" }
```

You can supply configuration with the optional `opts` field, as in

```lua
{
    "ethanuppal/bril.nvim",
    opts = {
        lsp_command = "custom/path/to/bril/langauge/server",
    }
}
```

Please do not add `lazy = true`; the plugin is already lazy.

