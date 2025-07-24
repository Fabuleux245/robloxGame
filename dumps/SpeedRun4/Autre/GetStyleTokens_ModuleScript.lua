-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:12
-- Luau version 6, Types version 3
-- Time taken: 0.001104 seconds

local UIBlox = require(game:GetService("CorePackages").Packages.UIBlox)
local Constants_upvr = UIBlox.App.Style.Constants
local TenFootInterface_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.TenFootInterface)
local DeviceType_upvr = Constants_upvr.DeviceType
local Tokens_upvr = UIBlox.App.Style.Tokens
return function(arg1, arg2) -- Line 11
	--[[ Upvalues[4]:
		[1]: TenFootInterface_upvr (readonly)
		[2]: DeviceType_upvr (readonly)
		[3]: Tokens_upvr (readonly)
		[4]: Constants_upvr (readonly)
	]]
	local var7
	if TenFootInterface_upvr:IsEnabled() then
		var7 = DeviceType_upvr.Console
	else
		var7 = arg1
		if not var7 then
			var7 = DeviceType_upvr.DefaultDeviceType
		end
	end
	local var8 = arg2
	if not var8 then
		var8 = Constants_upvr.DefaultThemeName
	end
	return Tokens_upvr.getFoundationTokens(var7, var8)
end