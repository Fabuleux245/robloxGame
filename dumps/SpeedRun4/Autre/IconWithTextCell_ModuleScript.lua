-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:23
-- Luau version 6, Types version 3
-- Time taken: 0.004289 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local Cryo_upvr = require(Parent.Cryo)
local React_upvr = require(Parent.React)
local tbl_2_upvr = {
	Text = "titleText";
	primaryIconSize = 32;
	isDisabled = false;
	Size = UDim2.new(1, 0, 1, 0);
	onActivated = function() -- Line 43, Named "onActivated"
		print("IconWithTextCell onActivated")
	end;
	secondaryIcon = "";
	secondaryIconSize = 24;
	iconCellWidth = 60;
	LayoutOrder = 0;
	style = Cryo_upvr.Dictionary.join(require(AppChat.SocialLibraries).Components.TestStyle, {
		Tokens = {
			Global = {
				Color = {
					None = {};
				};
			};
		};
	});
	showDivider = true;
}
local BaseCell_upvr = require(script.Parent.BaseCell)
local ImageSetLabel_upvr = require(Parent.UIBlox).Core.ImageSet.ImageSetLabel
return React_upvr.memo(function(arg1) -- Line 66, Named "IconWithTextCell"
	--[[ Upvalues[5]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: BaseCell_upvr (readonly)
		[5]: ImageSetLabel_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 24 start (CF ANALYSIS FAILED)
	local any_join_result1 = Cryo_upvr.Dictionary.join(tbl_2_upvr, arg1)
	local style = any_join_result1.style
	local Theme = style.Theme
	local Font = style.Font
	local var16
	if any_join_result1.primaryIcon ~= nil then
		var16 = false
	else
		var16 = true
	end
	local module = {}
	local tbl_4 = {
		leftListLayout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Center;
		});
	}
	if not var16 then
		local tbl = {
			Size = UDim2.new(0, any_join_result1.iconCellWidth, 0, any_join_result1.primaryIconSize);
			BackgroundTransparency = 1;
			LayoutOrder = 1;
		}
		;({}).primaryIcon = React_upvr.createElement(ImageSetLabel_upvr, {
			Position = UDim2.fromScale(0.5, 0.5);
			AnchorPoint = Vector2.new(0.5, 0.5);
			Image = any_join_result1.primaryIcon;
			BorderSizePixel = 0;
			Size = UDim2.new(0, any_join_result1.primaryIconSize, 0, any_join_result1.primaryIconSize);
			ImageColor3 = Theme.IconEmphasis.Color;
			BackgroundTransparency = 1;
		})
		-- KONSTANTWARNING: GOTO [225] #143
	end
	-- KONSTANTERROR: [0] 1. Error Block 24 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [224] 142. Error Block 26 start (CF ANALYSIS FAILED)
	tbl_4.imageFrame = nil
	local tbl_3 = {}
	if var16 then
	else
	end
	tbl_3.Size = UDim2.new(1, -any_join_result1.iconCellWidth, 1, 0)
	tbl_3.Text = any_join_result1.Text
	tbl_3.TextSize = Font.Header2.RelativeSize * Font.BaseSize
	tbl_3.Font = Font.Header2.Font
	tbl_3.TextColor3 = Theme.TextEmphasis.Color
	tbl_3.TextXAlignment = Enum.TextXAlignment.Left
	tbl_3.TextTruncate = Enum.TextTruncate.AtEnd
	tbl_3.BackgroundTransparency = 1
	tbl_3.LayoutOrder = 2
	tbl_4.text = React_upvr.createElement("TextLabel", tbl_3)
	module.leftFrame = React_upvr.createElement("Frame", {
		AnchorPoint = Vector2.new(0, 0.5);
		Position = UDim2.fromScale(0, 0.5);
		Size = UDim2.new(1, -any_join_result1.iconCellWidth, 1, 0);
		BackgroundTransparency = 1;
		LayoutOrder = 1;
	}, tbl_4)
	local tbl_5 = {}
	local secondaryIcon = any_join_result1.secondaryIcon
	if secondaryIcon then
		secondaryIcon = React_upvr.createElement
		secondaryIcon = secondaryIcon("ImageLabel", {
			Position = UDim2.fromScale(0.5, 0.5);
			AnchorPoint = Vector2.new(0.5, 0.5);
			Image = any_join_result1.secondaryIcon;
			BackgroundTransparency = 1;
			Size = UDim2.fromOffset(any_join_result1.secondaryIconSize, any_join_result1.secondaryIconSize);
		})
	end
	tbl_5.secondaryIcon = secondaryIcon
	module.rightFrame = React_upvr.createElement("Frame", {
		AnchorPoint = Vector2.new(1, 0.5);
		Position = UDim2.fromScale(1, 0.5);
		Size = UDim2.fromOffset(any_join_result1.iconCellWidth, any_join_result1.iconCellWidth);
		BackgroundTransparency = 1;
		LayoutOrder = 1;
	}, tbl_5)
	do
		return React_upvr.createElement(BaseCell_upvr, {
			Size = any_join_result1.Size;
			BackgroundColor3 = Theme.BackgroundDefault.Color;
			BackgroundTransparency = style.Tokens.Global.Color.None.Transparency;
			onPressedBackgroundColor3 = Theme.BackgroundOnPress.Color;
			onPressedBackgroundTransparency = Theme.BackgroundOnPress.Transparency;
			LayoutOrder = any_join_result1.LayoutOrder;
			onActivated = any_join_result1.onActivated;
			showDivider = any_join_result1.showDivider;
			dividerColor3 = Theme.Divider.Color;
			dividerTransparency = Theme.Divider.Transparency;
			isDisabled = any_join_result1.isDisabled;
			avatarCircleCellWidth = any_join_result1.iconCellWidth;
		}, module)
	end
	-- KONSTANTERROR: [224] 142. Error Block 26 end (CF ANALYSIS FAILED)
end)