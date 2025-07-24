-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:51
-- Luau version 6, Types version 3
-- Time taken: 0.001293 seconds

local Parent = script:FindFirstAncestor("Foundation").Parent
local ReactIs_upvr = require(Parent.ReactIs)
local React_upvr = require(Parent.React)
return function(arg1, arg2) -- Line 11, Named "getOriginalBackgroundStyle"
	--[[ Upvalues[2]:
		[1]: ReactIs_upvr (readonly)
		[2]: React_upvr (readonly)
	]]
	if ReactIs_upvr.isBinding(arg1) and ReactIs_upvr.isBinding(arg2) then
		local module_3 = {}
		module_3.Color3 = arg1
		module_3.Transparency = arg2
		return React_upvr.joinBindings(module_3)
	end
	if ReactIs_upvr.isBinding(arg1) then
		return arg1:map(function(arg1_2) -- Line 21
			--[[ Upvalues[1]:
				[1]: arg2 (readonly)
			]]
			local module = {}
			module.Color3 = arg1_2
			module.Transparency = arg2
			return module
		end)
	end
	if ReactIs_upvr.isBinding(arg2) then
		return arg2:map(function(arg1_3) -- Line 25
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local module_4 = {}
			module_4.Color3 = arg1
			module_4.Transparency = arg1_3
			return module_4
		end)
	end
	local module_2 = {}
	module_2.Color3 = arg1
	module_2.Transparency = arg2
	return module_2
end