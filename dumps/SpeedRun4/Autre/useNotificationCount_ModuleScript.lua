-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:51
-- Luau version 6, Types version 3
-- Time taken: 0.000853 seconds

local React_upvr = require(game:GetService("CorePackages").Packages.React)
return function(arg1) -- Line 7
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	if arg1 and arg1.notification then
		local notification_upvr = arg1.notification
		local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(notification_upvr:get())
		React_upvr.useEffect(function() -- Line 13
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: any_useState_result2_upvr (readonly)
				[3]: notification_upvr (readonly)
			]]
			local any_connect_result1_upvr = arg1.notification:connect(function() -- Line 14
				--[[ Upvalues[2]:
					[1]: any_useState_result2_upvr (copied, readonly)
					[2]: notification_upvr (copied, readonly)
				]]
				any_useState_result2_upvr(notification_upvr:get())
			end)
			return function() -- Line 18
				--[[ Upvalues[1]:
					[1]: any_connect_result1_upvr (readonly)
				]]
				any_connect_result1_upvr:disconnect()
			end
		end, {arg1.id})
		if any_useState_result1 and any_useState_result1.type == "count" then
			return any_useState_result1.value
		end
		return 0
	end
	notification_upvr = warn
	notification_upvr("notification object not found")
	notification_upvr = 0
	return notification_upvr
end