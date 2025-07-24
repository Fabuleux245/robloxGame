-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:14
-- Luau version 6, Types version 3
-- Time taken: 0.000620 seconds

local React_upvr = require(script:FindFirstAncestor("AppChat").Parent.React)
local LocalizationService_upvr = game:GetService("LocalizationService")
return function() -- Line 7, Named "useRobloxLocale"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: LocalizationService_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(LocalizationService_upvr.RobloxLocaleId)
	React_upvr.useEffect(function() -- Line 10
		--[[ Upvalues[2]:
			[1]: LocalizationService_upvr (copied, readonly)
			[2]: any_useState_result2_upvr (readonly)
		]]
		local any_Connect_result1_upvr = LocalizationService_upvr:GetPropertyChangedSignal("RobloxLocaleId"):Connect(function() -- Line 11
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr (copied, readonly)
				[2]: LocalizationService_upvr (copied, readonly)
			]]
			any_useState_result2_upvr(LocalizationService_upvr.RobloxLocaleId)
		end)
		return function() -- Line 15
			--[[ Upvalues[1]:
				[1]: any_Connect_result1_upvr (readonly)
			]]
			any_Connect_result1_upvr:Disconnect()
		end
	end, {})
	return any_useState_result1
end