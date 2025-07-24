-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:19:11
-- Luau version 6, Types version 3
-- Time taken: 0.000869 seconds

local Parent = script:FindFirstAncestor("RobloxAppHooks").Parent
local React_upvr = require(Parent.React)
local ExperienceService_upvr = require(Parent.ExperienceService).ExperienceService
return function(arg1) -- Line 10, Named "useIsUserInExperience"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: ExperienceService_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(arg1 or false)
	React_upvr.useEffect(function() -- Line 12
		--[[ Upvalues[2]:
			[1]: ExperienceService_upvr (copied, readonly)
			[2]: any_useState_result2_upvr (readonly)
		]]
		local tbl_upvr = {ExperienceService_upvr:RegisterForExperienceJoin(function() -- Line 14
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr (copied, readonly)
			]]
			any_useState_result2_upvr(true)
		end), ExperienceService_upvr:RegisterForExperienceLeave(function() -- Line 17
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr (copied, readonly)
			]]
			any_useState_result2_upvr(false)
		end)}
		return function() -- Line 22
			--[[ Upvalues[1]:
				[1]: tbl_upvr (readonly)
			]]
			for _, v in tbl_upvr do
				if v and v.Disconnect then
					v:Disconnect()
				end
			end
		end
	end, {})
	return any_useState_result1
end