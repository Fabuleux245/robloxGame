-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:22:47
-- Luau version 6, Types version 3
-- Time taken: 0.001294 seconds

local Parent = script.Parent.Parent
local CaptureType = require(Parent.Enums.CaptureType)
local tbl_upvr = {{
	contentId = "rbxasset://textures/AvatarEditorImages/AvatarEditor.png";
	filePath = "c://some/path/to/2231221_1818_1234598400000.png";
	type = CaptureType.Screenshot;
}, {
	contentId = "rbxasset://textures/AvatarEditorImages/AvatarEditor_LightTheme.png";
	filePath = "c://some/path/to/2231221_14375697_1653030000000.png";
	type = CaptureType.Screenshot;
}}
local Dash_upvr = require(Parent.Parent.Dash)
return function(arg1) -- Line 30
	--[[ Upvalues[2]:
		[1]: Dash_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	local module = {}
	for i = 1, arg1 do
		local any_joinDeep_result1 = Dash_upvr.joinDeep(tbl_upvr[i % #tbl_upvr + 1], {})
		any_joinDeep_result1.contentId = "rbxasset://textures/".."/./":rep(math.floor(i / #tbl_upvr))..string.sub(any_joinDeep_result1.contentId, 21)
		table.insert(module, any_joinDeep_result1)
	end
	return module
end