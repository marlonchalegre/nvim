local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- remap leader key
keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- VSCode Neovim keymaps
-- File navigation
keymap("n", "<C-p>", "<Cmd>call VSCodeNotify('workbench.action.quickOpen')<CR>", opts)
keymap("n", "<C-S-p>", "<Cmd>call VSCodeNotify('workbench.action.showCommands')<CR>", opts)
keymap("n", "<C-b>", "<Cmd>call VSCodeNotify('workbench.action.toggleSidebarVisibility')<CR>", opts)

-- File explorer
keymap("n", "<C-e>", "<Cmd>call VSCodeNotify('workbench.view.explorer')<CR>", opts)

-- Search
keymap("n", "<C-f>", "<Cmd>call VSCodeNotify('actions.find')<CR>", opts)
keymap("n", "<C-S-f>", "<Cmd>call VSCodeNotify('workbench.action.findInFiles')<CR>", opts)

-- Editor management
keymap("n", "<C-w>", "<Cmd>call VSCodeNotify('workbench.action.closeActiveEditor')<CR>", opts)
keymap("n", "<C-S-t>", "<Cmd>call VSCodeNotify('workbench.action.reopenClosedEditor')<CR>", opts)
keymap("n", "<C-tab>", "<Cmd>call VSCodeNotify('workbench.action.nextEditor')<CR>", opts)
keymap("n", "<C-S-tab>", "<Cmd>call VSCodeNotify('workbench.action.previousEditor')<CR>", opts)

-- Terminal
keymap("n", "<C-`>", "<Cmd>call VSCodeNotify('workbench.action.terminal.toggleTerminal')<CR>", opts)
keymap("n", "<C-S-`>", "<Cmd>call VSCodeNotify('workbench.action.terminal.new')<CR>", opts)

-- Git
keymap("n", "<C-S-g>", "<Cmd>call VSCodeNotify('workbench.view.scm')<CR>", opts)

-- Extensions
keymap("n", "<C-S-x>", "<Cmd>call VSCodeNotify('workbench.extensions.action.showInstalledExtensions')<CR>", opts)

-- Settings
keymap("n", "<C-,>", "<Cmd>call VSCodeNotify('workbench.action.openSettings')<CR>", opts)

-- Command palette
keymap("n", "<C-S-p>", "<Cmd>call VSCodeNotify('workbench.action.showCommands')<CR>", opts)

-- Go to line
keymap("n", "<C-g>", "<Cmd>call VSCodeNotify('workbench.action.gotoLine')<CR>", opts)

-- Toggle comment
keymap("n", "<C-/>", "<Cmd>call VSCodeNotify('editor.action.commentLine')<CR>", opts)
keymap("v", "<C-/>", "<Cmd>call VSCodeNotify('editor.action.commentLine')<CR>", opts)

-- Format document
keymap("n", "<C-S-f>", "<Cmd>call VSCodeNotify('editor.action.formatDocument')<CR>", opts)

-- Quick fix
keymap("n", "<C-.>", "<Cmd>call VSCodeNotify('editor.action.quickFix')<CR>", opts)

-- Navigate back/forward (Neovim style)
keymap("n", "<C-o>", "<Cmd>call VSCodeNotify('workbench.action.navigateBack')<CR>", opts)
keymap("n", "<C-i>", "<Cmd>call VSCodeNotify('workbench.action.navigateForward')<CR>", opts)

-- Split editor
keymap("n", "<C-\\>", "<Cmd>call VSCodeNotify('workbench.action.splitEditorRight')<CR>", opts)
keymap("n", "<C-S-\\>", "<Cmd>call VSCodeNotify('workbench.action.splitEditorDown')<CR>", opts)

-- Focus editor groups
keymap("n", "<C-1>", "<Cmd>call VSCodeNotify('workbench.action.focusFirstEditorGroup')<CR>", opts)
keymap("n", "<C-2>", "<Cmd>call VSCodeNotify('workbench.action.focusSecondEditorGroup')<CR>", opts)
keymap("n", "<C-3>", "<Cmd>call VSCodeNotify('workbench.action.focusThirdEditorGroup')<CR>", opts)

-- Zoom
keymap("n", "<C-=>", "<Cmd>call VSCodeNotify('workbench.action.zoomIn')<CR>", opts)
keymap("n", "<C-->", "<Cmd>call VSCodeNotify('workbench.action.zoomOut')<CR>", opts)
keymap("n", "<C-0>", "<Cmd>call VSCodeNotify('workbench.action.zoomReset')<CR>", opts)

-- Problems panel
keymap("n", "<C-S-m>", "<Cmd>call VSCodeNotify('workbench.actions.view.problems')<CR>", opts)

-- Output panel
keymap("n", "<C-S-u>", "<Cmd>call VSCodeNotify('workbench.action.output.toggleOutput')<CR>", opts)

-- Bookmarks
keymap("n", "<C-Alt-k>", "<Cmd>call VSCodeNotify('bookmarks.toggleBookmark')<CR>", opts)
keymap("n", "<C-Alt-l>", "<Cmd>call VSCodeNotify('bookmarks.jumpToNextBookmark')<CR>", opts)
keymap("n", "<C-Alt-j>", "<Cmd>call VSCodeNotify('bookmarks.jumpToPreviousBookmark')<CR>", opts)

