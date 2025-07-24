-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:38:41
-- Luau version 6, Types version 3
-- Time taken: 0.002918 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent
local UIBlox = require(Parent.UIBlox)
local tbl_upvr = {
	width = UDim.new(1, 0);
}
local Dash_upvr = require(Parent.Dash)
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local React_upvr = require(Parent.React)
local PlayerContextualMenuHeader_upvr = require(script.Parent.PlayerContextualMenuHeader)
local FFlagSwitchCFMPositionFrameToTextButton_upvr = require(Parent_2.Flags.FFlagSwitchCFMPositionFrameToTextButton)
local Interactable_upvr = UIBlox.Core.Control.Interactable
local BaseMenu_upvr = UIBlox.App.Menu.BaseMenu
return function(arg1) -- Line 30
	--[[ Upvalues[8]:
		[1]: Dash_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useDesignTokens_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: PlayerContextualMenuHeader_upvr (readonly)
		[6]: FFlagSwitchCFMPositionFrameToTextButton_upvr (readonly)
		[7]: Interactable_upvr (readonly)
		[8]: BaseMenu_upvr (readonly)
	]]
	local any_join_result1_upvr = Dash_upvr.join(tbl_upvr, arg1)
	local var7_result1 = useDesignTokens_upvr(function(arg1_2) -- Line 32
		return {
			overlayBackgroundColor3 = arg1_2.Semantic.Color.Common.Overlay.Color3;
			overlayBackgroundTransparency = arg1_2.Semantic.Color.Common.Overlay.Transparency;
			backgroundColor = arg1_2.Semantic.Color.Background.Default.Color3;
			backgroundTransparency = arg1_2.Semantic.Color.Background.Default.Transparency;
			menuCornerRadius = arg1_2.Semantic.Radius.Medium;
		}
	end)
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(0)
	local module = {}
	local var24 = React_upvr
	local var25
	if FFlagSwitchCFMPositionFrameToTextButton_upvr then
		var24 = "TextButton"
	else
		var24 = Interactable_upvr
	end
	local tbl = {}
	var25 = Enum.AutomaticSize.Y
	tbl.AutomaticSize = var25
	var25 = UDim2.new(any_join_result1_upvr.width, UDim.new(0, 0))
	tbl.Size = var25
	var25 = Vector2.new(0.5, 0.5)
	tbl.AnchorPoint = var25
	var25 = false
	tbl.AutoButtonColor = var25
	var25 = UDim2.new(0.5, 0, 0.5, 0)
	tbl.Position = var25
	var25 = var7_result1.backgroundTransparency
	tbl.BackgroundTransparency = var25
	var25 = var7_result1.backgroundColor
	tbl.BackgroundColor3 = var25
	if FFlagSwitchCFMPositionFrameToTextButton_upvr then
		var25 = ""
	else
		var25 = nil
	end
	tbl.Text = var25
	var25 = 0
	tbl.ZIndex = var25
	var25 = {}
	var25.Corner = React_upvr.createElement("UICorner", {
		CornerRadius = UDim.new(0, var7_result1.menuCornerRadius);
	})
	var25.BaseMenu = React_upvr.createElement(BaseMenu_upvr, {
		topElementRounded = false;
		buttonProps = any_join_result1_upvr.buttonProps;
		width = any_join_result1_upvr.width;
		enableTokenOverride = true;
		renderHeader = React_upvr.useCallback(function() -- Line 44
			--[[ Upvalues[5]:
				[1]: React_upvr (copied, readonly)
				[2]: PlayerContextualMenuHeader_upvr (copied, readonly)
				[3]: Dash_upvr (copied, readonly)
				[4]: any_join_result1_upvr (readonly)
				[5]: any_useState_result2_upvr (readonly)
			]]
			return React_upvr.createElement(PlayerContextualMenuHeader_upvr, Dash_upvr.join(any_join_result1_upvr.headerProps, {
				onHeaderHeightChanged = any_useState_result2_upvr;
			}))
		end, {any_join_result1_upvr.headerProps});
		headerHeight = any_useState_result1;
	})
	module.PositionFrame = var24.createElement(var24, tbl, var25)
	return React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundColor3 = var7_result1.overlayBackgroundColor3;
		BackgroundTransparency = var7_result1.overlayBackgroundTransparency;
		ZIndex = -1;
	}, module)
end