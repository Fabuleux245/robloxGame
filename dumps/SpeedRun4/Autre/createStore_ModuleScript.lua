-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:05
-- Luau version 6, Types version 3
-- Time taken: 0.000743 seconds

local Parent = script.Parent
local Rodux_upvr = require(game:GetService("CorePackages").Packages.InGameMenuDependencies).Rodux
local GlobalConfig_upvr = require(Parent.GlobalConfig)
local reducer_upvr = require(Parent.reducer)
return function() -- Line 11, Named "createStore"
	--[[ Upvalues[3]:
		[1]: Rodux_upvr (readonly)
		[2]: GlobalConfig_upvr (readonly)
		[3]: reducer_upvr (readonly)
	]]
	local module = {Rodux_upvr.thunkMiddleware}
	if GlobalConfig_upvr.logStore then
		table.insert(module, Rodux_upvr.loggerMiddleware)
	end
	return Rodux_upvr.Store.new(reducer_upvr, nil, module)
end