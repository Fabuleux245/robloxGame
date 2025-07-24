-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:32:03
-- Luau version 6, Types version 3
-- Time taken: 0.001883 seconds

local Parent = script:FindFirstAncestor("GameCollections").Parent
local var2_upvw = "Other"
local UserInputService_upvr = game:GetService("UserInputService")
pcall(function() -- Line 11
	--[[ Upvalues[2]:
		[1]: UserInputService_upvr (readonly)
		[2]: var2_upvw (read and write)
	]]
	local any_GetPlatform_result1 = UserInputService_upvr:GetPlatform()
	if any_GetPlatform_result1 == Enum.Platform.Android then
		var2_upvw = "Android"
	else
		if any_GetPlatform_result1 == Enum.Platform.IOS then
			var2_upvw = "iOS"
			return
		end
		if any_GetPlatform_result1 == Enum.Platform.Windows then
			var2_upvw = "Win"
			return
		end
		if any_GetPlatform_result1 == Enum.Platform.UWP then
			var2_upvw = "UWP"
			return
		end
		if any_GetPlatform_result1 == Enum.Platform.OSX then
			var2_upvw = "Mac"
			return
		end
		if any_GetPlatform_result1 == Enum.Platform.XBox360 or any_GetPlatform_result1 == Enum.Platform.XBoxOne then
			var2_upvw = "XBox"
			return
		end
		if any_GetPlatform_result1 == Enum.Platform.PS4 or game:GetEngineFeature("PlatformEnumPS5") and any_GetPlatform_result1 == Enum.Platform.PS5 then
			var2_upvw = "PS"
		end
	end
end)
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
local IsVRAppBuild_upvr = require(Parent.AppCommonLib).IsVRAppBuild
return function(arg1, arg2, arg3, arg4) -- Line 32
	--[[ Upvalues[3]:
		[1]: AppPage_upvr (readonly)
		[2]: var2_upvw (read and write)
		[3]: IsVRAppBuild_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if not arg1 or not arg1.Diag then
	else
		if not arg2 then return end
		local var9 = "Other"
		if arg2 == AppPage_upvr.Home or arg2 == AppPage_upvr.Games then
			if arg4 == 1 then
				var9 = "GamesList"
			else
				local var10 = AppPage_upvr
				if arg2 == var10.Home then
					var9 = "Home"
				else
					if arg2 ~= AppPage_upvr.Games then
					else
					end
					assert(true, `{arg2} should always be Games here`)
					var9 = "Games"
				end
			end
		elseif arg2 == "recommended" then
			var9 = "GameDetail"
		elseif arg2 == AppPage_upvr.SearchPage then
			var9 = "SearchPage"
		end
		local var11 = var2_upvw
		if IsVRAppBuild_upvr() then
			var11 = "VR"
		end
		arg1.Diag:reportCounterSimple(var11.."-GameImps-"..var9, arg3)
	end
end