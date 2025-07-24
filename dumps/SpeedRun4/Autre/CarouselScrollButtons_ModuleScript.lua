-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:23:35
-- Luau version 6, Types version 3
-- Time taken: 0.004611 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local Parent = script:FindFirstAncestor("CollectionViews").Parent
local React_upvr = require(Parent.React)
local Foundation = require(Parent.Foundation)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("BuilderIconMigrationCarouselScrollButtons", false)
local var5_upvr
if game_DefineFastFlag_result1_upvr then
	var5_upvr = "chevron-large-left"
else
	var5_upvr = "icons/actions/cycleLeft"
end
if game_DefineFastFlag_result1_upvr then
else
end
local useTokens_upvr = Foundation.Hooks.useTokens
local ControlState_upvr = Foundation.Enums.ControlState
local View_upvr = Foundation.View
local Icon_upvr = Foundation.Icon
local IconSize_upvr = Foundation.Enums.IconSize
local Image_upvr = Foundation.Image
local function ScrollButton_upvr(arg1) -- Line 48, Named "ScrollButton"
	--[[ Upvalues[8]:
		[1]: useTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: ControlState_upvr (readonly)
		[4]: View_upvr (readonly)
		[5]: game_DefineFastFlag_result1_upvr (readonly)
		[6]: Icon_upvr (readonly)
		[7]: IconSize_upvr (readonly)
		[8]: Image_upvr (readonly)
	]]
	local module = {}
	local var16
	if game_DefineFastFlag_result1_upvr then
		var16 = React_upvr.createElement
		var16 = var16(Icon_upvr, {
			name = arg1.icon;
			size = IconSize_upvr.Large;
			style = useTokens_upvr().Color.Content.Emphasis;
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.fromScale(0.5, 0.5);
		})
	else
		var16 = React_upvr.createElement
		local tbl = {
			Image = arg1.icon;
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl.imageStyle = useTokens_upvr().Color.Content.Emphasis
		tbl.tag = "size-600 position-center-center anchor-center-center"
		var16 = var16(Image_upvr, tbl)
	end
	module.Icon = var16
	return React_upvr.createElement(View_upvr, {
		AnchorPoint = arg1.AnchorPoint;
		Position = arg1.Position;
		Visible = arg1.Visible;
		onStateChanged = React_upvr.useCallback(function(arg1_2) -- Line 50
			--[[ Upvalues[2]:
				[1]: ControlState_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [5] 4. Error Block 2 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [5] 4. Error Block 2 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [10] 7. Error Block 10 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [10] 7. Error Block 10 end (CF ANALYSIS FAILED)
		end, {arg1.onScrollButtonEnter, arg1.onScrollButtonLeave});
		onActivated = arg1.onActivated;
		tag = "size-1000 radius-circle bg-over-media-100";
	}, module)
end
local ReactIs_upvr = require(Parent.ReactIs)
local var20_upvr = "icons/actions/cycleRight"
return function(arg1) -- Line 86, Named "CarouselScrollButtons"
	--[[ Upvalues[5]:
		[1]: React_upvr (readonly)
		[2]: ReactIs_upvr (readonly)
		[3]: ScrollButton_upvr (readonly)
		[4]: var5_upvr (readonly)
		[5]: var20_upvr (readonly)
	]]
	local var21 = arg1.buttonOffsetFromEdge or 0
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(false)
	local var24
	local var25
	if var25 then
		var25 = arg1.leftScrollingEnabled
		var25 = var25:map(function(arg1_3) -- Line 94
			--[[ Upvalues[1]:
				[1]: any_useState_result1_upvr (readonly)
			]]
			return any_useState_result1_upvr and arg1_3
		end)
		var24 = var25
	else
		var25 = any_useState_result1_upvr
		if var25 then
			var25 = arg1.leftScrollingEnabled
		end
		var24 = var25
	end
	var25 = nil
	local var27
	if var27 then
		var27 = arg1.rightScrollingEnabled
		var27 = var27:map(function(arg1_4) -- Line 105
			--[[ Upvalues[1]:
				[1]: any_useState_result1_upvr (readonly)
			]]
			return any_useState_result1_upvr and arg1_4
		end)
		var25 = var27
	else
		var27 = any_useState_result1_upvr
		if var27 then
			var27 = arg1.rightScrollingEnabled
		end
		var25 = var27
	end
	return React_upvr.createElement("Frame", {
		AnchorPoint = arg1.AnchorPoint;
		Position = arg1.Position;
		Size = arg1.Size;
		ZIndex = arg1.ZIndex or 10;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		[React_upvr.Event.MouseEnter] = React_upvr.useCallback(function() -- Line 113
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr (readonly)
			]]
			any_useState_result2_upvr(true)
		end, {});
		[React_upvr.Event.MouseLeave] = React_upvr.useCallback(function() -- Line 116
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr (readonly)
			]]
			any_useState_result2_upvr(false)
		end, {});
	}, {
		LeftScrollButton = React_upvr.createElement(ScrollButton_upvr, {
			AnchorPoint = Vector2.new(0, 0.5);
			Position = UDim2.new(0, var21, 0.5, 0);
			Visible = var24;
			icon = var5_upvr;
			onScrollButtonEnter = arg1.onScrollButtonEnter;
			onScrollButtonLeave = arg1.onScrollButtonLeave;
			onActivated = arg1.handleScrollLeft;
		});
		RightScrollButton = React_upvr.createElement(ScrollButton_upvr, {
			AnchorPoint = Vector2.new(1, 0.5);
			Position = UDim2.new(1, -var21, 0.5, 0);
			Visible = var25;
			icon = var20_upvr;
			onScrollButtonEnter = arg1.onScrollButtonEnter;
			onScrollButtonLeave = arg1.onScrollButtonLeave;
			onActivated = arg1.handleScrollRight;
		});
	})
end