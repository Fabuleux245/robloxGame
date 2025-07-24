-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:51
-- Luau version 6, Types version 3
-- Time taken: 0.003787 seconds

local GuiService_upvr = game:GetService("GuiService")
local GameInvite = script:FindFirstAncestor("GameInvite")
local Parent = GameInvite.Parent
local GetFFlagLuaAppEnableTopBanner_upvr = require(Parent.SharedFlags).GetFFlagLuaAppEnableTopBanner
local function _(arg1) -- Line 23
	--[[ Upvalues[2]:
		[1]: GetFFlagLuaAppEnableTopBanner_upvr (readonly)
		[2]: GuiService_upvr (readonly)
	]]
	local var6 = 0
	if not GetFFlagLuaAppEnableTopBanner_upvr() or arg1 then
		if GuiService_upvr then
			var6 = GuiService_upvr:GetGuiInset().Y
			return var6
		end
		var6 = 50
	end
	return var6
end
local function _() -- Line 33
	return workspace.CurrentCamera.ViewportSize
end
local function _(arg1) -- Line 38
	local var9
	if arg1 >= 800 then
		var9 = false
	else
		var9 = true
	end
	return var9
end
local function _(arg1) -- Line 42
	local var11
	if arg1 >= 624 then
		var11 = false
	else
		var11 = true
	end
	return var11
end
local function _(arg1) -- Line 46
	-- KONSTANTERROR: [0] 1. Error Block 18 start (CF ANALYSIS FAILED)
	local var13
	if arg1.X >= 800 then
		var13 = false
	else
		var13 = true
	end
	-- KONSTANTERROR: [0] 1. Error Block 18 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 7. Error Block 19 start (CF ANALYSIS FAILED)
	if arg1.Y >= 624 then
		var13 = false
	else
		var13 = true
	end
	-- KONSTANTERROR: [8] 7. Error Block 19 end (CF ANALYSIS FAILED)
end
local function _(arg1, arg2) -- Line 50
	--[[ Upvalues[2]:
		[1]: GetFFlagLuaAppEnableTopBanner_upvr (readonly)
		[2]: GuiService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 28 start (CF ANALYSIS FAILED)
	local var15
	if arg1.X >= 800 then
		var15 = false
	else
		var15 = true
	end
	-- KONSTANTERROR: [0] 1. Error Block 28 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 7. Error Block 29 start (CF ANALYSIS FAILED)
	if arg1.Y >= 624 then
		var15 = false
	else
		var15 = true
	end
	-- KONSTANTERROR: [8] 7. Error Block 29 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [16] 13. Error Block 31 start (CF ANALYSIS FAILED)
	var15 = arg1.Y
	if not GetFFlagLuaAppEnableTopBanner_upvr() or arg2 then
		if GuiService_upvr then
		else
		end
	end
	local var16 = var15 - 50
	if not var16 then
		-- KONSTANTERROR: [36] 30. Error Block 18 start (CF ANALYSIS FAILED)
		var16 = 624
		-- KONSTANTERROR: [36] 30. Error Block 18 end (CF ANALYSIS FAILED)
	end
	do
		return var16
	end
	-- KONSTANTERROR: [16] 13. Error Block 31 end (CF ANALYSIS FAILED)
end
local function var17_upvr(arg1, arg2) -- Line 56
	--[[ Upvalues[2]:
		[1]: GetFFlagLuaAppEnableTopBanner_upvr (readonly)
		[2]: GuiService_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 46 start (CF ANALYSIS FAILED)
	local var18
	if arg1.X >= 800 then
		var18 = false
	else
		var18 = true
	end
	-- KONSTANTERROR: [0] 1. Error Block 46 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 9. Error Block 47 start (CF ANALYSIS FAILED)
	if arg1.Y >= 624 then
		var18 = false
	else
		var18 = true
	end
	-- KONSTANTERROR: [11] 9. Error Block 47 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 15. Error Block 49 start (CF ANALYSIS FAILED)
	if not arg1.X then
		-- KONSTANTERROR: [22] 17. Error Block 11 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [22] 17. Error Block 11 end (CF ANALYSIS FAILED)
	end
	if arg1.X >= 800 then
	else
	end
	-- KONSTANTERROR: [19] 15. Error Block 49 end (CF ANALYSIS FAILED)
end
local function _(arg1) -- Line 62
	-- KONSTANTERROR: [0] 1. Error Block 17 start (CF ANALYSIS FAILED)
	local var20
	if arg1.X >= 800 then
		var20 = false
	else
		var20 = true
	end
	-- KONSTANTERROR: [0] 1. Error Block 17 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 7. Error Block 18 start (CF ANALYSIS FAILED)
	if arg1.Y >= 624 then
		var20 = false
	else
		var20 = true
	end
	if var20 then
		-- KONSTANTERROR: [16] 13. Error Block 12 start (CF ANALYSIS FAILED)
		do
			return "compact"
		end
		-- KONSTANTERROR: [16] 13. Error Block 12 end (CF ANALYSIS FAILED)
	end
	do
		return "default"
	end
	-- KONSTANTERROR: [8] 7. Error Block 18 end (CF ANALYSIS FAILED)
end
local React_upvr = require(Parent.React)
local GameInviteModalLayoutContext_upvr = require(GameInvite.Context.GameInviteModalLayoutContext)
return function(arg1) -- Line 66
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: var17_upvr (readonly)
		[3]: GameInviteModalLayoutContext_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 31 start (CF ANALYSIS FAILED)
	local _, _ = React_upvr.useState(var17_upvr(workspace.CurrentCamera.ViewportSize, arg1.isCoreScript))
	local var26 = React_upvr
	local var27
	if workspace.CurrentCamera.ViewportSize.Y >= 624 then
		var26 = false
	else
		var26 = true
	end
	local _, _ = var26.useState(var26)
	var27 = workspace.CurrentCamera
	if var27.ViewportSize.X >= 800 then
		-- KONSTANTWARNING: GOTO [51] #35
	end
	-- KONSTANTERROR: [0] 1. Error Block 31 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [50] 34. Error Block 34 start (CF ANALYSIS FAILED)
	local _, _ = React_upvr.useState(true)
	var27 = workspace.CurrentCamera.ViewportSize
	if var27.X >= 800 then
		var27 = false
	else
		var27 = true
	end
	-- KONSTANTERROR: [50] 34. Error Block 34 end (CF ANALYSIS FAILED)
end