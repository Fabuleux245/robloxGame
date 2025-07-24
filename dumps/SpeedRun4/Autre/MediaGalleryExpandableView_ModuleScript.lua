-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:47:19
-- Luau version 6, Types version 3
-- Time taken: 0.007380 seconds

local Parent = script:FindFirstAncestor("AppBlox").Parent
local UIBlox = require(Parent.UIBlox)
local tbl_upvr = {
	titleText = "Media";
	numItemsShown = 4;
	itemAspectRatio = 1.7777777777777777;
	animationConfig = {
		dampingRatio = 1;
		frequency = 6.666666666666667;
	};
	onActivated = function() -- Line 29, Named "onActivated"
	end;
	onSelectionGained = function() -- Line 30, Named "onSelectionGained"
	end;
	exitFullscreen = function() -- Line 31, Named "exitFullscreen"
	end;
}
local Cryo_upvr = require(Parent.Cryo)
local useStyle_upvr = require(Parent.UIBlox).Core.Style.useStyle
local Constants_upvr = require(script.Parent.Constants)
local ReactOtter_upvr = require(Parent.ReactOtter)
local React_upvr = require(Parent.React)
local useCursor_upvr = UIBlox.App.SelectionCursor.useCursor
local useSelectionCursor_upvr = UIBlox.App.SelectionImage.useSelectionCursor
local CursorKind_upvr = UIBlox.App.SelectionImage.CursorKind
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
return function(arg1) -- Line 67, Named "MediaGalleryExpandableView"
	--[[ Upvalues[10]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: Constants_upvr (readonly)
		[5]: ReactOtter_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: useCursor_upvr (readonly)
		[8]: useSelectionCursor_upvr (readonly)
		[9]: CursorKind_upvr (readonly)
		[10]: StyledTextLabel_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local styleProps = any_join_result1_upvr.styleProps
	if not styleProps then
		styleProps = {}
	end
	local any_join_result1 = Cryo_upvr.Dictionary.join(Constants_upvr.getDefaultStyleProps(useStyle_upvr()), styleProps)
	local borderRadius_upvr = any_join_result1.borderRadius
	local gutter_upvr = any_join_result1.gutter
	local titleFont = any_join_result1.titleFont
	local any_useAnimatedBinding_result1, any_useAnimatedBinding_result2_upvr = ReactOtter_upvr.useAnimatedBinding(0)
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(Vector2.zero)
	local Invisible_upvr = CursorKind_upvr.Invisible
	if any_join_result1_upvr.showCursor then
		Invisible_upvr = useCursor_upvr(borderRadius_upvr)
	else
		Invisible_upvr = useSelectionCursor_upvr(Invisible_upvr)
	end
	if titleFont.RelativeSize then
	else
	end
	return React_upvr.createElement("CanvasGroup", {
		GroupTransparency = any_join_result1_upvr.groupTransparency;
		Size = UDim2.new(1, 0, 0, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundTransparency = 1;
	}, {
		UIListLayout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			SortOrder = Enum.SortOrder.LayoutOrder;
			Padding = UDim.new(0, any_join_result1.contentGap);
		});
		ExpandableArea = React_upvr.createElement("Frame", {
			Size = any_useAnimatedBinding_result1:map(function(arg1_4) -- Line 199
				return UDim2.new(1, 0, 0, arg1_4)
			end);
			BackgroundTransparency = 1;
			LayoutOrder = 1;
		});
		Title = React_upvr.createElement(StyledTextLabel_upvr, {
			text = any_join_result1_upvr.titleText;
			fontStyle = titleFont;
			colorStyle = any_join_result1.titleTextColor;
			textXAlignment = Enum.TextXAlignment.Left;
			size = UDim2.new(1, 0, 0, titleFont.FontSize);
			layoutOrder = 2;
		});
		MediaGallery = React_upvr.createElement("ScrollingFrame", {
			Size = UDim2.new(1, 0, 0, any_useState_result1_upvr.Y);
			BackgroundTransparency = 1;
			AutomaticCanvasSize = Enum.AutomaticSize.XY;
			ScrollBarImageTransparency = 1;
			ScrollBarThickness = 0;
			ScrollingDirection = Enum.ScrollingDirection.X;
			Selectable = false;
			LayoutOrder = 3;
			[React_upvr.Change.AbsoluteSize] = React_upvr.useCallback(function(arg1_2, arg2, arg3, arg4) -- Line 83
				--[[ Upvalues[3]:
					[1]: gutter_upvr (readonly)
					[2]: any_join_result1_upvr (readonly)
					[3]: any_useState_result2_upvr (readonly)
				]]
				local var26 = (arg1_2.AbsoluteSize.X - gutter_upvr * (any_join_result1_upvr.numItemsShown - 1)) / any_join_result1_upvr.numItemsShown
				any_useState_result2_upvr(Vector2.new(var26, var26 / any_join_result1_upvr.itemAspectRatio))
			end, {gutter_upvr, any_join_result1_upvr.itemAspectRatio, any_join_result1_upvr.numItemsShown});
			[React_upvr.Event.SelectionChanged] = React_upvr.useCallback(function(arg1_3, arg2, arg3, arg4) -- Line 97
				--[[ Upvalues[3]:
					[1]: any_useAnimatedBinding_result2_upvr (readonly)
					[2]: ReactOtter_upvr (copied, readonly)
					[3]: any_join_result1_upvr (readonly)
				]]
				if not arg1_3 then
					return nil
				end
				local var29 = false
				if arg4 ~= nil then
					var29 = arg4:IsDescendantOf(arg1_3)
				end
				local var30 = false
				if arg3 ~= nil then
					var30 = arg3:IsDescendantOf(arg1_3)
				end
				local var31 = var29
				if var31 then
					var31 = not var30
				end
				if var31 then
					any_useAnimatedBinding_result2_upvr(ReactOtter_upvr.spring(any_join_result1_upvr.expandableAreaHeightOffset, any_join_result1_upvr.animationConfig))
					any_join_result1_upvr.mediaGalleryGainFocused(true)
					return nil
				end
				if not var29 and var30 then
					local var32 = false
					if arg4 ~= nil then
						if arg3.AbsolutePosition.Y >= arg4.AbsolutePosition.Y then
							var32 = false
						else
							var32 = true
						end
					end
					if not var32 then
						any_useAnimatedBinding_result2_upvr(ReactOtter_upvr.spring(0, any_join_result1_upvr.animationConfig))
					end
					any_join_result1_upvr.exitFullscreen()
					any_join_result1_upvr.mediaGalleryGainFocused(false)
					return nil
				end
				return nil
			end, {any_join_result1_upvr.expandableAreaHeightOffset, any_join_result1_upvr.animationConfig, any_join_result1_upvr.exitFullscreen, any_join_result1_upvr.mediaGalleryGainFocused});
		}, {
			Layout = React_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Horizontal;
				Padding = UDim.new(0, gutter_upvr);
			});
			Items = React_upvr.createElement(React_upvr.Fragment, {}, React_upvr.useMemo(function() -- Line 148
				--[[ Upvalues[5]:
					[1]: any_join_result1_upvr (readonly)
					[2]: React_upvr (copied, readonly)
					[3]: any_useState_result1_upvr (readonly)
					[4]: Invisible_upvr (readonly)
					[5]: borderRadius_upvr (readonly)
				]]
				local module = {}
				for i_upvr, v in any_join_result1_upvr.items do
					module["Item"..i_upvr] = React_upvr.createElement("ImageButton", {
						LayoutOrder = i_upvr;
						Size = UDim2.fromOffset(any_useState_result1_upvr.X, any_useState_result1_upvr.Y);
						Image = v.imageId;
						ScaleType = Enum.ScaleType.Crop;
						BackgroundTransparency = 1;
						AutoButtonColor = false;
						SelectionImageObject = Invisible_upvr;
						[React_upvr.Event.Activated] = function() -- Line 159
							--[[ Upvalues[2]:
								[1]: any_join_result1_upvr (copied, readonly)
								[2]: i_upvr (readonly)
							]]
							any_join_result1_upvr.onActivated(i_upvr)
						end;
						[React_upvr.Event.SelectionGained] = function() -- Line 162
							--[[ Upvalues[2]:
								[1]: any_join_result1_upvr (copied, readonly)
								[2]: i_upvr (readonly)
							]]
							any_join_result1_upvr.onSelectionGained(i_upvr)
						end;
					}, {
						Corner = React_upvr.createElement("UICorner", {
							CornerRadius = borderRadius_upvr;
						});
					})
				end
				return module
			end, {any_useState_result1_upvr, any_join_result1_upvr.items, any_join_result1_upvr.onActivated, any_join_result1_upvr.onSelectionGained, Invisible_upvr, borderRadius_upvr}));
		});
	})
end