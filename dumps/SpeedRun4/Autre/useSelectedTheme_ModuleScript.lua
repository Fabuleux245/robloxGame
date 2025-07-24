-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:18:42
-- Luau version 6, Types version 3
-- Time taken: 0.000637 seconds

local React_upvr = require(script:FindFirstAncestor("RoactUtils").Parent.React)
local NotificationService_upvr = game:GetService("NotificationService")
return function() -- Line 13, Named "useSelectedTheme"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: NotificationService_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(string.lower(NotificationService_upvr.SelectedTheme))
	React_upvr.useEffect(function() -- Line 16
		--[[ Upvalues[2]:
			[1]: NotificationService_upvr (copied, readonly)
			[2]: any_useState_result2_upvr (readonly)
		]]
		local any_Connect_result1_upvr = NotificationService_upvr:GetPropertyChangedSignal("SelectedTheme"):Connect(function() -- Line 17
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr (copied, readonly)
				[2]: NotificationService_upvr (copied, readonly)
			]]
			any_useState_result2_upvr(string.lower(NotificationService_upvr.SelectedTheme))
		end)
		return function() -- Line 21
			--[[ Upvalues[1]:
				[1]: any_Connect_result1_upvr (readonly)
			]]
			any_Connect_result1_upvr:Disconnect()
		end
	end)
	return any_useState_result1
end