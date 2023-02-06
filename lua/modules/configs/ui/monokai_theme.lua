return function()
	local transparent_background = false -- Set background transparency here!
	require("monokai").setup({})
	require("monokai").setup({ palette = require("monokai").pro })
	require("monokai").setup({ palette = require("monokai").soda })
	require("monokai").setup({ palette = require("monokai").ristretto })
end
