-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:27
-- Luau version 6, Types version 3
-- Time taken: 0.001448 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local React_upvr = require(Parent.React)
local Cryo_upvr = require(Parent.Cryo)
local tbl_upvr = {}
local useStyle_upvr = require(Parent.UIBlox).Core.Style.useStyle
local RemoveUserDialog_upvr = require(script.Parent.RemoveUserDialog)
local ResponseIndicator_upvr = require(AppChat.SocialLibraries).Components.ResponseIndicator
function RemoveUserDialogLayout(arg1) -- Line 42
	--[[ Upvalues[6]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: RemoveUserDialog_upvr (readonly)
		[6]: ResponseIndicator_upvr (readonly)
	]]
	local any_join_result1 = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local var6_result1 = useStyle_upvr()
	local module = {}
	local isModalVisible = any_join_result1.isModalVisible
	if isModalVisible then
		isModalVisible = React_upvr.createElement(RemoveUserDialog_upvr, any_join_result1)
	end
	module.RemoveUserDialog = isModalVisible
	isModalVisible = any_join_result1.isLoading
	local var14 = isModalVisible
	if var14 then
		var14 = React_upvr.createElement
		var14 = var14(ResponseIndicator_upvr, {
			soakAreaColor3 = var6_result1.Theme.Overlay.Color;
			soakAreaTransparency = var6_result1.Theme.Overlay.Transparency;
		})
	end
	module.ResponseIndicator = var14
	return React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
	}, module)
end
return React_upvr.memo(RemoveUserDialogLayout)