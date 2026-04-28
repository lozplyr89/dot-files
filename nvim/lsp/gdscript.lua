--Language server for GDScript, used by Godot Engine

local port = os.getenv 'GDScript_Port' or '6005'
local cmd = vim.lsp.rpc.connect('127.0.0.1', tonumber(port))
--Exec flags for Godot: --server .godothost --remote-send "<C-\><C-N>:n {file}<CR>{line}G{col} | "
return {
  cmd = cmd,
  filetypes = { 'gdscript' },
  root_markers = { 'project.godot', '.git' },
}
