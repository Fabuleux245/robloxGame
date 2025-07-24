-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:42:52
-- Luau version 6, Types version 3
-- Time taken: 0.001083 seconds

local CoreGui = game:GetService("CoreGui")
local getCamMicPermissions_upvr = require(CoreGui.RobloxGui.Modules.Settings.getCamMicPermissions)
if require(CoreGui:WaitForChild("RobloxGui").Modules.Flags.getFFlagDoNotPromptCameraPermissionsOnMount)() then
	local default_upvr = require(game:GetService("CorePackages").Workspace.Packages.PermissionsProtocol).PermissionsProtocol.default
	return function(arg1, arg2, arg3) -- Line 18
		--[[ Upvalues[2]:
			[1]: default_upvr (readonly)
			[2]: getCamMicPermissions_upvr (readonly)
		]]
		local var5
		if arg2 then
			if arg2 == "camera" then
				var5 = {default_upvr.Permissions.CAMERA_ACCESS}
			elseif arg2 == "microphone" then
				var5 = {default_upvr.Permissions.MICROPHONE_ACCESS}
			end
		end
		getCamMicPermissions_upvr(function(arg1_2) -- Line 29
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1(arg1_2.hasCameraPermissions, arg1_2.hasMicPermissions)
		end, var5, arg3, "ExperienceChat.getPermissions")
	end
end
return function(arg1) -- Line 37
	--[[ Upvalues[1]:
		[1]: getCamMicPermissions_upvr (readonly)
	]]
	getCamMicPermissions_upvr(function(arg1_3) -- Line 38
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1(arg1_3.hasCameraPermissions, arg1_3.hasMicPermissions)
	end)
end