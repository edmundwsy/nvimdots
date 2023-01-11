local o, wo, bo = vim.o, vim.wo, vim.bo
local options = {}

options.scope = {}
options.scope.option = { o }
options.scope.window = { wo }
options.scope.buffer = { bo }

options.set = function(scope, option, value)
	for _, s in ipairs(scope) do
		s[option] = value
	end
end

return options
