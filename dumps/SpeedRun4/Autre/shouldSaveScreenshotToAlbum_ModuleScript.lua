-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:03
-- Luau version 6, Types version 3
-- Time taken: 0.001085 seconds

local UserInputService_upvr = game:GetService("UserInputService")
local GetFFlagScreenshotHudApi_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.Flags.GetFFlagScreenshotHudApi)
local CachedPolicyService_upvr = require(game:GetService("CorePackages").Workspace.Packages.CachedPolicyService)
return function() -- Line 9
	--[[ Upvalues[3]:
		[1]: UserInputService_upvr (readonly)
		[2]: GetFFlagScreenshotHudApi_upvr (readonly)
		[3]: CachedPolicyService_upvr (readonly)
	]]
	local any_GetPlatform_result1 = UserInputService_upvr:GetPlatform()
	local var6
	if any_GetPlatform_result1 ~= Enum.Platform.IOS then
		if any_GetPlatform_result1 ~= Enum.Platform.Android then
			var6 = false
		else
			var6 = true
		end
	end
	local var7
	if GetFFlagScreenshotHudApi_upvr() and var6 and not CachedPolicyService_upvr:IsSubjectToChinaPolicies() then
		var7 = true
	end
	return var7
end