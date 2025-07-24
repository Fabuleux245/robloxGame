-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:36:06
-- Luau version 6, Types version 3
-- Time taken: 0.000686 seconds

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")
local Rodux_upvr = require(VirtualEvents.Parent.Rodux)
local Cryo_upvr = require(VirtualEvents.Parent.Cryo)
return function(arg1) -- Line 11
	--[[ Upvalues[2]:
		[1]: Rodux_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	return Rodux_upvr.createReducer({}, {
		[arg1.GetExperienceMedia.Succeeded.name] = function(arg1_2, arg2) -- Line 13
			--[[ Upvalues[1]:
				[1]: Cryo_upvr (copied, readonly)
			]]
			return Cryo_upvr.Dictionary.join(arg1_2, {
				[arg2.ids[1]] = arg2.responseBody.data;
			})
		end;
		[arg1.GetExperienceMedia.Failed.name] = function(arg1_3, arg2) -- Line 21
			return arg1_3
		end;
	})
end