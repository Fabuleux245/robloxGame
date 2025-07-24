-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:24
-- Luau version 6, Types version 3
-- Time taken: 0.000519 seconds

local Parent = script.Parent.Parent.Parent
local AppCommonLib_upvr = require(Parent.AppCommonLib)
local GuiService_upvr = game:GetService("GuiService")
local React_upvr = require(Parent.React)
return function(arg1) -- Line 7
	--[[ Upvalues[3]:
		[1]: AppCommonLib_upvr (readonly)
		[2]: GuiService_upvr (readonly)
		[3]: React_upvr (readonly)
	]]
	if AppCommonLib_upvr.IsVRAppBuild() or GuiService_upvr:IsTenFootInterface() then
		return arg1
	end
	local module = {}
	module.Component = arg1
	return React_upvr.createElement("ScreenGui", {
		Enabled = true;
		ZIndexBehavior = Enum.ZIndexBehavior.Global;
		DisplayOrder = 10;
		IgnoreGuiInset = true;
	}, module)
end