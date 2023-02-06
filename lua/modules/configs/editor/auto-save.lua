return function()
	require("auto-save").setup({
		execution_message = {
			message = function() -- m fessage to print on save
				return ("AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"))
			end,
			dim = 0.18, -- dim the color of `message`
			cleaning_interval = 1250, -- (milliseconds) automatically clean MsgArea after displaying `message`. See :h MsgArea
		},
		noautocmd_save = true, -- prevent auto-save from triggering events like autoformatting
		-- trigger_events = {
		-- 	"BufLeave",
		-- 	"BufHidden",
		-- 	"WinLeave",
		-- },
		-- condition = function(buf)
		-- 	local fn = vim.fn
		-- 	local utils = require("auto-save.utils.data")
		--
		-- 	if fn.getbufvar(buf, "&modifiable") == 1 and utils.not_in(fn.getbufvar(buf, "&filetype"), {}) then
		-- 		return true -- met condition(s), can save
		-- 	end
		-- 	return false -- can't save
		-- end,
		-- debounce_delay = 135, -- saves the file at most every `debounce_delay` milliseconds
		-- callbacks = { -- functions to be executed at different intervals
		-- 	enabling = nil, -- ran when enabling auto-save
		-- 	disabling = nil, -- ran when disabling auto-save
		-- 	before_asserting_save = nil, -- ran before checking `condition`
		-- 	before_saving = nil, -- ran before doing the actual save
		-- 	after_saving = nil, -- ran after doing the actual save
		-- },
	})
end
