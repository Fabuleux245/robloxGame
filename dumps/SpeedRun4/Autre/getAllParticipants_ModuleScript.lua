-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:58
-- Luau version 6, Types version 3
-- Time taken: 0.000788 seconds

local Cryo_upvr = require(script:FindFirstAncestor("AppChat").Parent.Cryo)
return function(arg1) -- Line 6
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	local module_upvr = {}
	Cryo_upvr.List.map(arg1, function(arg1_2) -- Line 8
		--[[ Upvalues[2]:
			[1]: Cryo_upvr (copied, readonly)
			[2]: module_upvr (readonly)
		]]
		Cryo_upvr.List.map(arg1_2.otherParticipants, function(arg1_3) -- Line 9
			--[[ Upvalues[1]:
				[1]: module_upvr (copied, readonly)
			]]
			module_upvr[arg1_3] = true
		end)
	end)
	return Cryo_upvr.Dictionary.keys(module_upvr)
end