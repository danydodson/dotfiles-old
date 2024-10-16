---@diagnostic disable: lowercase-global, undefined-global

rocks_trees = {
   { name = "user",   root = home .. "/.local/opt/lua" },
   { name = "system", root = home .. "/.local/opt/lua" },
}
lua_interpreter = "lua5.1";
variables = {
   LUA_DIR = "/opt/homebrew/opt/lua",
   LUA_BINDIR = "/opt/homebrew/opt/lua/bin",
   LUAROCKS_CONFIG = home .. "/.config/lua/config-5.1.lua",
}
