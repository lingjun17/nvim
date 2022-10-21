local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
  vim.notify("No bufferline found!")
  return
end


bufferline.setup{
  options = {
    -- close tab command
    close_command = "Bdelete! %d",
    right_mouse_command = "Bdelete! %d",

    -- 左侧让出 nvim-tree 的位置，显示文字 File Explorer
    offsets = {
      {
        filetype = "NvimTree",
        text = "NvimTree",
        highlight = "Directory",
        text_align = "left",
      }
    }
  }
}

