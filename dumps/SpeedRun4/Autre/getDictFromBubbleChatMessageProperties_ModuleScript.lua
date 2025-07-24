-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:02:54
-- Luau version 6, Types version 3
-- Time taken: 0.005682 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local Config_upvr = require(ExpChat.Config)
local getFFlagReplicateUIPaddingChildProperties_upvr = require(ExpChat.Flags.getFFlagReplicateUIPaddingChildProperties)
return function(arg1) -- Line 6
	--[[ Upvalues[2]:
		[1]: Config_upvr (readonly)
		[2]: getFFlagReplicateUIPaddingChildProperties_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module = {}
	for i, _ in pairs(Config_upvr.DefaultBubbleChatMessagePropertiesInstanceSettings) do
		module[i] = arg1[i]
	end
	local class_ImageLabel_2 = arg1:FindFirstChildOfClass("ImageLabel")
	if class_ImageLabel_2 then
		local tbl_6 = {}
		i = Config_upvr.DefaultBubbleChatChildrenCustomizationProperties.ImageLabel
		for i_2, _ in pairs(i) do
			tbl_6[i_2] = class_ImageLabel_2[i_2]
			local _
		end
		module.ImageLabel = tbl_6
	end
	local class_UIGradient = arg1:FindFirstChildOfClass("UIGradient")
	if class_UIGradient then
		local tbl_2 = {}
		for i_3, _ in pairs(Config_upvr.DefaultBubbleChatChildrenCustomizationProperties.UIGradient) do
			tbl_2[i_3] = class_UIGradient[i_3]
			local _
		end
		module.UIGradient = tbl_2
	end
	local class_UICorner = arg1:FindFirstChildOfClass("UICorner")
	if class_UICorner then
		local tbl_7 = {}
		for i_4, v_4 in pairs(Config_upvr.DefaultBubbleChatChildrenCustomizationProperties.UICorner) do
			tbl_7[i_4] = class_UICorner[i_4]
			local _
		end
		module.UICorner = tbl_7
	end
	if getFFlagReplicateUIPaddingChildProperties_upvr() then
		local class_UIPadding_2 = arg1:FindFirstChildOfClass("UIPadding")
		if class_UIPadding_2 then
			local tbl_5 = {}
			v_4 = Config_upvr.DefaultBubbleChatChildrenCustomizationProperties
			for i_5, _ in pairs(v_4.UIPadding) do
				tbl_5[i_5] = class_UIPadding_2[i_5]
				local _
			end
			module.UIPadding = tbl_5
		end
	end
	return module
end