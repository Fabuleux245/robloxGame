-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:32:29
-- Luau version 6, Types version 3
-- Time taken: 0.000821 seconds

local Parent_2 = script.Parent
local Parent = Parent_2.Parent
local React_upvr = require(Parent.React)
local ExperienceService_upvr = require(Parent.ExperienceService).ExperienceService
local ToastNotificationWrapper_upvr = require(Parent_2.ToastNotificationWrapper)
return function(arg1) -- Line 14
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: ExperienceService_upvr (readonly)
		[3]: ToastNotificationWrapper_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(false)
	React_upvr.useEffect(function() -- Line 16
		--[[ Upvalues[2]:
			[1]: ExperienceService_upvr (copied, readonly)
			[2]: any_useState_result2_upvr (readonly)
		]]
		ExperienceService_upvr:RegisterForExperienceJoin(function() -- Line 17
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr (copied, readonly)
			]]
			any_useState_result2_upvr(true)
		end)
		ExperienceService_upvr:RegisterForExperienceLeave(function() -- Line 20
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr (copied, readonly)
			]]
			any_useState_result2_upvr(false)
		end)
	end, {})
	local var12 = not any_useState_result1
	if var12 then
		var12 = React_upvr.createElement
		var12 = var12(ToastNotificationWrapper_upvr, {
			displayOrder = arg1.displayOrder;
			renderLocation = "universalApp";
		})
	end
	return var12
end