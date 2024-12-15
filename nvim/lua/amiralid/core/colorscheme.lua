local status, flow = pcall(require, "flow")

if not status then
    return
end

flow.setup{
    dark_theme=true,
    high_contrast=false,
    transparent=true,
    fluo_color="pink",
    mode = "base",
    aggressive_spell=false
}

vim.cmd "colorscheme flow"
