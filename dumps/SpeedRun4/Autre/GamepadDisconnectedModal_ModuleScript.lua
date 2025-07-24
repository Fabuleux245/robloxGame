-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:13:16
-- Luau version 6, Types version 3
-- Time taken: 0.001150 seconds

local Players_upvr = game:GetService("Players")
local var2_upvw
pcall(function() -- Line 6
	--[[ Upvalues[1]:
		[1]: var2_upvw (read and write)
	]]
	var2_upvw = game:GetService("ThirdPartyUserService")
end)
local function _() -- Line 11, Named "getPlatformOrRobloxUsername"
	--[[ Upvalues[2]:
		[1]: var2_upvw (read and write)
		[2]: Players_upvr (readonly)
	]]
	local var4 = ""
	if var2_upvw then
		var4 = var2_upvw:GetUserPlatformName()
	end
	local function INLINED() -- Internal function, doesn't exist in bytecode
		local LocalPlayer_2 = Players_upvr.LocalPlayer
		return LocalPlayer_2
	end
	if var4 == "" or var4 == nil or INLINED() then
		local DisplayName = LocalPlayer_2.DisplayName
		if not DisplayName then
			DisplayName = LocalPlayer_2.Name
		end
		var4 = DisplayName
	end
	return var4 or ""
end
local React_upvr = require(script:FindFirstAncestor("InputUi").Parent.React)
local GamepadDisconnectedModalView_upvr = require(script.Parent.GamepadDisconnectedModalView)
return function(arg1) -- Line 25
	--[[ Upvalues[4]:
		[1]: var2_upvw (read and write)
		[2]: Players_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: GamepadDisconnectedModalView_upvr (readonly)
	]]
	local var10 = ""
	if var2_upvw then
		var10 = var2_upvw:GetUserPlatformName()
	end
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		local LocalPlayer = Players_upvr.LocalPlayer
		return LocalPlayer
	end
	if var10 == "" or var10 == nil or INLINED_2() then
		local DisplayName_2 = LocalPlayer.DisplayName
		if not DisplayName_2 then
			DisplayName_2 = LocalPlayer.Name
		end
		var10 = DisplayName_2
	end
	var10 = React_upvr.createElement
	var10 = var10(GamepadDisconnectedModalView_upvr, {
		username = var10 or "";
	})
	return var10
end