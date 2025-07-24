-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:08
-- Luau version 6, Types version 3
-- Time taken: 0.001307 seconds

local any_GetPlatform_result1_upvr = game:GetService("UserInputService"):GetPlatform()
local FStringLuaAppEphemeralCounterPrefix_upvr = require(script:FindFirstAncestor("AuthCommon").Parent.SharedFlags).FStringLuaAppEphemeralCounterPrefix
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
return function(arg1, arg2) -- Line 13
	--[[ Upvalues[3]:
		[1]: any_GetPlatform_result1_upvr (readonly)
		[2]: FStringLuaAppEphemeralCounterPrefix_upvr (readonly)
		[3]: RbxAnalyticsService_upvr (readonly)
	]]
	pcall(function() -- Line 14
		--[[ Upvalues[5]:
			[1]: arg1 (read and write)
			[2]: arg2 (read and write)
			[3]: any_GetPlatform_result1_upvr (copied, readonly)
			[4]: FStringLuaAppEphemeralCounterPrefix_upvr (copied, readonly)
			[5]: RbxAnalyticsService_upvr (copied, readonly)
		]]
		local var6
		if type(arg1) ~= "string" then
			var6 = false
		else
			var6 = true
		end
		assert(var6, "Expected counterName to be a string")
		var6 = arg1
		arg1 = var6 or ""
		var6 = arg2
		arg2 = var6 or 1
		var6 = Enum.Platform.Android
		if any_GetPlatform_result1_upvr == var6 then
			var6 = "Android-"
			arg1 = var6..tostring(arg1)
		else
			var6 = Enum.Platform.IOS
			if any_GetPlatform_result1_upvr == var6 then
				var6 = "iOS-"
				arg1 = var6..tostring(arg1)
			else
				var6 = Enum.Platform.Windows
				if any_GetPlatform_result1_upvr == var6 then
					var6 = "Win32-"
					arg1 = var6..tostring(arg1)
				else
					var6 = Enum.Platform.UWP
					if any_GetPlatform_result1_upvr == var6 then
						var6 = "UWP-"
						arg1 = var6..tostring(arg1)
					else
						var6 = Enum.Platform.OSX
						if any_GetPlatform_result1_upvr == var6 then
							var6 = "Mac-"
							arg1 = var6..tostring(arg1)
						elseif FStringLuaAppEphemeralCounterPrefix_upvr ~= "" then
							var6 = FStringLuaAppEphemeralCounterPrefix_upvr
							arg1 = var6..tostring(arg1)
						end
					end
				end
			end
		end
		RbxAnalyticsService_upvr:ReportCounter(arg1, arg2)
	end)
end