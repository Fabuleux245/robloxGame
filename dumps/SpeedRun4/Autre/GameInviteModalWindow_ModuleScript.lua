-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:46
-- Luau version 6, Types version 3
-- Time taken: 0.002625 seconds

local GameInvite = script:FindFirstAncestor("GameInvite")
local Parent = GameInvite.Parent
local UIBlox = require(Parent.UIBlox)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local React_upvr = require(Parent.React)
local GameInviteModalLayoutContext_upvr = require(GameInvite.Context.GameInviteModalLayoutContext)
local ImageSet_upvr = UIBlox.Core.ImageSet
local FFlagLuaAppGameInviteFocusable_upvr = require(Parent.SharedFlags).FFlagLuaAppGameInviteFocusable
local GameInviteModalManager_upvr = require(GameInvite.GameInviteModalManager)
local Images_upvr = UIBlox.App.ImageSet.Images
local Rect_new_result1_upvr = Rect.new(8, 8, 9, 9)
return function(arg1) -- Line 22
	--[[ Upvalues[8]:
		[1]: useStyle_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: GameInviteModalLayoutContext_upvr (readonly)
		[4]: ImageSet_upvr (readonly)
		[5]: FFlagLuaAppGameInviteFocusable_upvr (readonly)
		[6]: GameInviteModalManager_upvr (readonly)
		[7]: Images_upvr (readonly)
		[8]: Rect_new_result1_upvr (readonly)
	]]
	local var5_result1 = useStyle_upvr()
	local Theme = var5_result1.Theme
	local var15
	local var16
	local var17
	local any_useContext_result1 = React_upvr.useContext(GameInviteModalLayoutContext_upvr)
	local var19
	if any_useContext_result1.isFullWidth or any_useContext_result1.isFullHeight then
		var15 = Vector2.new(0.5, 1)
		var16 = "component_assets/bullet_17"
		var19 = 1
		var17 = UDim2.new(0.5, 0, var19, 0)
	else
		var15 = Vector2.new(0.5, 0.5)
		var16 = "component_assets/circle_17"
		var19 = 0.5
		var17 = UDim2.new(0.5, 0, var19, 0)
	end
	local module = {}
	if FFlagLuaAppGameInviteFocusable_upvr then
		var19 = false
	else
		var19 = nil
	end
	module.Selectable = var19
	var19 = UDim2.new(1, 0, 1, 0)
	module.Size = var19
	var19 = UDim2.new(0.5, 0, 0.5, 0)
	module.Position = var19
	var19 = Vector2.new(0.5, 0.5)
	module.AnchorPoint = var19
	var19 = var5_result1.Theme.Overlay.Color
	module.BackgroundColor3 = var19
	var19 = var5_result1.Theme.Overlay.Transparency
	module.Transparency = var19
	var19 = false
	module.AutoButtonColor = var19
	var19 = 0
	module.ZIndex = var19
	var19 = React_upvr.Event.Activated
	module[var19] = function() -- Line 51
		--[[ Upvalues[1]:
			[1]: GameInviteModalManager_upvr (copied, readonly)
		]]
		GameInviteModalManager_upvr:closeModal()
	end
	var19 = {}
	var19.GameInviteModalContainer = React_upvr.createElement(ImageSet_upvr.ImageSetButton, {
		Position = var17;
		Size = any_useContext_result1.modalSize;
		AnchorPoint = var15;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Image = Images_upvr[var16];
		ImageColor3 = Theme.BackgroundDefault.Color;
		ImageTransparency = Theme.BackgroundDefault.Transparency;
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect_new_result1_upvr;
		AutoButtonColor = false;
		ClipsDescendants = true;
		Selectable = false;
	}, arg1.children)
	return React_upvr.createElement(ImageSet_upvr.ImageSetButton, module, var19)
end