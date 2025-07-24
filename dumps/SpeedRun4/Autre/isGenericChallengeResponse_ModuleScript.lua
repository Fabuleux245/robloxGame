-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:19
-- Luau version 6, Types version 3
-- Time taken: 0.001636 seconds

local GetFFlagEnablePerformPurchaseGCSHandling_upvr = require(script.Parent.Parent.Flags.GetFFlagEnablePerformPurchaseGCSHandling)
function isGenericChallengeResponse(arg1) -- Line 5
	--[[ Upvalues[1]:
		[1]: GetFFlagEnablePerformPurchaseGCSHandling_upvr (readonly)
	]]
	if type(arg1) ~= "string" then
		return false
	end
	local GetFFlagEnablePerformPurchaseGCSHandling_upvr_result1 = GetFFlagEnablePerformPurchaseGCSHandling_upvr()
	if GetFFlagEnablePerformPurchaseGCSHandling_upvr_result1 then
		GetFFlagEnablePerformPurchaseGCSHandling_upvr_result1 = false
		if arg1:match("rblx%-challenge%-response") ~= nil then
			GetFFlagEnablePerformPurchaseGCSHandling_upvr_result1 = false
			if arg1:match("rblx%-challenge%-id") ~= nil then
				GetFFlagEnablePerformPurchaseGCSHandling_upvr_result1 = false
				if arg1:match("rblx%-challenge%-metadata") ~= nil then
					if arg1:match("rblx%-challenge%-type") == nil then
						GetFFlagEnablePerformPurchaseGCSHandling_upvr_result1 = false
					else
						GetFFlagEnablePerformPurchaseGCSHandling_upvr_result1 = true
					end
				end
			end
		end
	end
	return GetFFlagEnablePerformPurchaseGCSHandling_upvr_result1
end
return isGenericChallengeResponse