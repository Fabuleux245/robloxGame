-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:06
-- Luau version 6, Types version 3
-- Time taken: 0.000561 seconds

local GuiService = game:GetService("GuiService")
local pcall_result1, _ = pcall(GuiService.GetResolutionScale, GuiService)
local var4_upvw
if not pcall_result1 or not script:FindFirstAncestor("CorePackages") then
	var4_upvw = 1
end
if GuiService:IsTenFootInterface() then
	var4_upvw = 3
end
local GetImageSetData_upvr = require(script.Parent.Generated.GetImageSetData)
return function() -- Line 19, Named "getResolutionScale"
	--[[ Upvalues[2]:
		[1]: GetImageSetData_upvr (readonly)
		[2]: var4_upvw (read and write)
	]]
	local GetImageSetData_upvr_result1, GetImageSetData_upvr_result2 = GetImageSetData_upvr(var4_upvw)
	return GetImageSetData_upvr_result2
end