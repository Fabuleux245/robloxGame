-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:25:39
-- Luau version 6, Types version 3
-- Time taken: 0.000677 seconds

local Parent = script.Parent.Parent.Parent.Parent
local Types = Parent.Types
local Dash_upvr = require(Parent.Parent.Dash)
return function(arg1) -- Line 8
	--[[ Upvalues[1]:
		[1]: Dash_upvr (readonly)
	]]
	local module_upvr = {}
	Dash_upvr.forEach(arg1.responseBody.userContactIds, function(arg1_2) -- Line 12
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		module_upvr[arg1_2] = {}
	end)
	return module_upvr
end