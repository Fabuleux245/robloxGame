-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:49:45
-- Luau version 6, Types version 3
-- Time taken: 0.000651 seconds

local Parent = script:FindFirstAncestor("Foundation").Parent
local React_upvr = require(Parent.React)
local Cryo_upvr = require(Parent.Cryo)
return function(arg1, arg2) -- Line 10, Named "useDefaultTags"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	local module = {}
	module[1] = arg1
	module[2] = arg2
	return React_upvr.useMemo(function() -- Line 11
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: Cryo_upvr (copied, readonly)
		]]
		if arg1 ~= nil then
			if type(arg1) == "string" then
				return `{arg2} {arg1}`
			end
			return Cryo_upvr.Dictionary.join(arg1, {
				[arg2] = true;
			})
		end
		return arg2
	end, module)
end