-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:34
-- Luau version 6, Types version 3
-- Time taken: 0.017830 seconds

local App = script:FindFirstAncestor("App")
local Parent = App.Parent
local Core = Parent.Core
local Parent_2 = Parent.Parent
local t = require(Parent_2.t)
local Roact_upvr = require(Parent_2.Roact)
local Object_upvr = require(Parent_2.LuauPolyfill).Object
local Cryo_upvr = require(Parent_2.Cryo)
local Dictionary_upvr = Cryo_upvr.Dictionary
local List_upvr = Cryo_upvr.List
local Images_upvr = require(App.ImageSet.Images)
local ControlState_upvr = require(Core.Control.Enum.ControlState)
local withStyle_upvr = require(Core.Style.withStyle)
local getContentStyle_upvr = require(Core.Button.getContentStyle)
local PlayerTileButton_upvr = require(App.Tile.PlayerTile.PlayerTileButton)
local PlayerContext_upvr = require(App.Indicator.PlayerContext)
local SpringAnimatedItem_upvr = require(Parent.Utility.SpringAnimatedItem)
local validateFontInfo = require(Core.Style.Validator.validateFontInfo)
local validateTypographyInfo = require(Parent.Core.Style.Validator.validateTypographyInfo)
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("PlayerTile")
any_extend_result1_upvr.validateProps = t.strictInterface({
	title = t.optional(t.string);
	subtitle = t.optional(t.string);
	subtitleFontStyle = t.optional(t.union(validateFontInfo, validateTypographyInfo));
	hasVerifiedBadge = t.optional(t.boolean);
	Selectable = t.optional(t.boolean);
	thumbnail = t.optional(t.union(t.string, t.table));
	buttons = t.optional(t.array(t.strictInterface({
		icon = t.optional(t.union(t.string, require(Core.ImageSet.Validator.validateImageSetData)));
		onActivated = t.optional(t.callback);
		isSecondary = t.optional(t.boolean);
		isDisabled = t.optional(t.boolean);
	})));
	relevancyInfo = t.strictInterface({
		text = t.optional(t.string);
		icon = t.optional(t.union(t.string, t.table));
		iconSize = t.optional(t.UDim2);
		iconColor = t.optional(t.Color3);
		iconTransparency = t.optional(t.number);
		onActivated = t.optional(t.callback);
		fontStyle = t.optional(t.union(validateFontInfo, validateTypographyInfo));
		horizontalAlignment = t.optional(t.EnumItem);
	});
	tileSize = t.optional(t.UDim2);
	thumbnailFrameSize = t.optional(t.UDim2);
	isCircular = t.optional(t.boolean);
	horizontalAlignment = t.optional(t.EnumItem);
	footerTopPadding = t.optional(t.integer);
	onActivated = t.optional(t.callback);
	forwardedRef = t.optional(t.table);
	openTypeFeatures = t.optional(t.string);
})
any_extend_result1_upvr.defaultProps = {
	buttons = {};
	relevancyInfo = {};
	tileSize = UDim2.new(0, 150, 0, 150);
	onActivated = function() -- Line 84, Named "onActivated"
	end;
	Selectable = false;
	isCircular = false;
	openTypeFeatures = nil;
}
local tbl_12_upvr = {
	dampingRatio = 1;
	frequency = 4;
}
local tbl_8_upvr = {
	[ControlState_upvr.Default] = "SystemPrimaryContent";
}
local component_assets_vignette_246_upvr = Images_upvr["component_assets/vignette_246"]
local function _(arg1) -- Line 102, Named "footer"
	--[[ Upvalues[4]:
		[1]: withStyle_upvr (readonly)
		[2]: Object_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: PlayerContext_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 103
		--[[ Upvalues[4]:
			[1]: Object_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: PlayerContext_upvr (copied, readonly)
		]]
		local Tokens_5 = arg1_2.Tokens
		local tbl_29 = {}
		local var31
		if arg1.playerContext.onActivated then
			var31 = Tokens_5.Semantic.Typography.CaptionHeader
		else
			var31 = Tokens_5.Semantic.Typography.CaptionBody
		end
		tbl_29.fontStyle = var31
		var31 = Tokens_5.Global.Space_50
		tbl_29.iconTextSpacing = var31
		var31 = 0
		tbl_29.iconPadding = var31
		var31 = UDim2.fromOffset(Tokens_5.Global.Size_150, Tokens_5.Global.Size_150)
		tbl_29.iconSize = var31
		var31 = Tokens_5.Global.Size_350
		tbl_29.textHeight = var31
		var31 = arg1.horizontalAlignment
		tbl_29.horizontalAlignment = var31
		var31 = arg1.playerContext
		var31 = {}
		var31.Size = UDim2.new(1, 0, 0, 0)
		var31.AutomaticSize = Enum.AutomaticSize.Y
		var31.BackgroundTransparency = 1
		return Roact_upvr.createElement("Frame", var31, {
			PlayerContext = Roact_upvr.createElement(PlayerContext_upvr, Object_upvr.assign({}, tbl_29, var31));
		})
	end)
end
local function _(arg1) -- Line 131, Named "thumbnailOverlayComponents"
	--[[ Upvalues[10]:
		[1]: withStyle_upvr (readonly)
		[2]: getContentStyle_upvr (readonly)
		[3]: tbl_8_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: Cryo_upvr (readonly)
		[6]: SpringAnimatedItem_upvr (readonly)
		[7]: tbl_12_upvr (readonly)
		[8]: component_assets_vignette_246_upvr (readonly)
		[9]: List_upvr (readonly)
		[10]: PlayerTileButton_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_3) -- Line 132
		--[[ Upvalues[10]:
			[1]: getContentStyle_upvr (copied, readonly)
			[2]: tbl_8_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: Roact_upvr (copied, readonly)
			[5]: Cryo_upvr (copied, readonly)
			[6]: SpringAnimatedItem_upvr (copied, readonly)
			[7]: tbl_12_upvr (copied, readonly)
			[8]: component_assets_vignette_246_upvr (copied, readonly)
			[9]: List_upvr (copied, readonly)
			[10]: PlayerTileButton_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local Tokens_3 = arg1_3.Tokens
		local Space_100_upvr = Tokens_3.Global.Space_100
		local Size_450_upvr = Tokens_3.Global.Size_450
		local module_6 = {}
		local var67 = not arg1.isCircular
		if var67 then
			var67 = not Cryo_upvr.isEmpty(arg1.buttons)
			if var67 then
				var67 = Roact_upvr.createElement
				var67 = var67("Frame", {
					Size = UDim2.new(1, 0, 0, Size_450_upvr + Space_100_upvr * 2);
					AnchorPoint = Vector2.new(0, 1);
					Position = UDim2.new(0, 0, 1, 0);
					LayoutOrder = 1;
				}, {
					UIGradient = Roact_upvr.createElement("UIGradient", {
						Rotation = 90;
						Color = ColorSequence.new({ColorSequenceKeypoint.new(0, arg1_3.Theme.BackgroundUIContrast.Color), ColorSequenceKeypoint.new(1, arg1_3.Theme.BackgroundUIContrast.Color)});
						Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, arg1_3.Theme.BackgroundUIContrast.Transparency)});
					});
					UICorner = Roact_upvr.createElement("UICorner", {
						CornerRadius = UDim.new(0, 8);
					});
				})
			end
		end
		module_6.ButtonBackgroundGradient = var67
		local tbl_21 = {
			springOptions = tbl_12_upvr;
		}
		local tbl_32 = {}
		if arg1.mouseEntered then
		else
		end
		tbl_32.imageTransparency = 1
		tbl_21.animatedValues = tbl_32
		local function mapValuesToProps(arg1_6) -- Line 171
			return {
				ImageTransparency = arg1_6.imageTransparency;
			}
		end
		tbl_21.mapValuesToProps = mapValuesToProps
		tbl_21.regularProps = {
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundTransparency = 1;
			Image = component_assets_vignette_246_upvr.Image;
			ImageRectSize = component_assets_vignette_246_upvr.ImageRectSize;
			ImageRectOffset = component_assets_vignette_246_upvr.ImageRectOffset;
			ImageColor3 = getContentStyle_upvr(tbl_8_upvr, arg1.controlState, arg1_3).Color;
			ImageTransparency = 0;
			LayoutOrder = 2;
			[Roact_upvr.Event.MouseEnter] = arg1.hoverMouseEnter;
			[Roact_upvr.Event.MouseLeave] = arg1.hoverMouseLeave;
		}
		local tbl_31 = {}
		local tbl_19 = {}
		if arg1.isCircular then
			local _ = UDim.new(0.5, 0)
		else
		end
		tbl_19.CornerRadius = UDim.new(0, 8)
		tbl_31.corner = Roact_upvr.createElement("UICorner", tbl_19)
		module_6.HoverTransparency = Roact_upvr.createElement(SpringAnimatedItem_upvr.AnimatedImageLabel, tbl_21, tbl_31)
		module_6.ButtonContainer = Roact_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 1, 0);
			ZIndex = 2;
		}, {
			PlayerTileButtons = Roact_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				Position = UDim2.new(1, 0, 1, 0);
				Size = UDim2.new(0, arg1.tileSize.X.Offset - Space_100_upvr * 2, 0, Size_450_upvr);
				AnchorPoint = Vector2.new(1, 1);
				LayoutOrder = 3;
				ZIndex = 2;
			}, List_upvr.join(List_upvr.map(arg1.buttons, function(arg1_7) -- Line 209
				--[[ Upvalues[5]:
					[1]: Roact_upvr (copied, readonly)
					[2]: PlayerTileButton_upvr (copied, readonly)
					[3]: Size_450_upvr (readonly)
					[4]: Space_100_upvr (readonly)
					[5]: arg1 (copied, readonly)
				]]
				return Roact_upvr.createElement(PlayerTileButton_upvr, {
					buttonHeight = Size_450_upvr;
					outerButtonPadding = Space_100_upvr;
					tileSize = arg1.tileSize;
					icon = arg1_7.icon;
					isSecondary = arg1_7.isSecondary;
					isDisabled = arg1_7.isDisabled;
					onActivated = arg1_7.onActivated;
					mouseEnter = arg1.hoverMouseEnter;
					mouseLeave = arg1.hoverMouseLeave;
				})
			end), {Roact_upvr.createElement("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Right;
				Padding = UDim.new(0, Tokens_3.Global.Space_100);
				FillDirection = Enum.FillDirection.Horizontal;
			})}));
			UIPadding = Roact_upvr.createElement("UIPadding", {
				PaddingBottom = UDim.new(0, Space_100_upvr);
				PaddingRight = UDim.new(0, Space_100_upvr);
			});
		})
		return Roact_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 1, 0);
		}, module_6)
	end)
end
function any_extend_result1_upvr.init(arg1) -- Line 240
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: ControlState_upvr (readonly)
	]]
	arg1.firstButtonIcon = Roact_upvr.createRef()
	arg1.secondButtonIcon = Roact_upvr.createRef()
	arg1.mouseEntered = false
	arg1.state = {
		controlState = ControlState_upvr.Initialize;
		mouseEntered = false;
	}
	function arg1.onStateChanged(arg1_8, arg2) -- Line 249
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_18 = {}
		tbl_18.controlState = arg2
		arg1:setState(tbl_18)
		if arg1.props.onStateChanged then
			arg1.props.onStateChanged(arg1_8, arg2)
		end
	end
	function arg1.hoverMouseEnter() -- Line 258
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			mouseEntered = true;
		})
	end
	function arg1.hoverMouseLeave() -- Line 264
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			mouseEntered = false;
		})
	end
end
local Tile_upvr = require(App.Tile.BaseTile.Tile)
function any_extend_result1_upvr.render(arg1) -- Line 271
	--[[ Upvalues[15]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: Tile_upvr (readonly)
		[4]: Dictionary_upvr (readonly)
		[5]: Object_upvr (readonly)
		[6]: PlayerContext_upvr (readonly)
		[7]: Images_upvr (readonly)
		[8]: getContentStyle_upvr (readonly)
		[9]: tbl_8_upvr (readonly)
		[10]: Cryo_upvr (readonly)
		[11]: SpringAnimatedItem_upvr (readonly)
		[12]: tbl_12_upvr (readonly)
		[13]: component_assets_vignette_246_upvr (readonly)
		[14]: List_upvr (readonly)
		[15]: PlayerTileButton_upvr (readonly)
	]]
	local tileSize_upvr = arg1.props.tileSize
	local title_upvr = arg1.props.title
	local onActivated_upvr = arg1.props.onActivated
	local thumbnail_upvr = arg1.props.thumbnail
	return withStyle_upvr(function(arg1_9) -- Line 277
		--[[ Upvalues[20]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: tileSize_upvr (readonly)
			[4]: Tile_upvr (copied, readonly)
			[5]: Dictionary_upvr (copied, readonly)
			[6]: withStyle_upvr (copied, readonly)
			[7]: Object_upvr (copied, readonly)
			[8]: PlayerContext_upvr (copied, readonly)
			[9]: title_upvr (readonly)
			[10]: onActivated_upvr (readonly)
			[11]: thumbnail_upvr (readonly)
			[12]: Images_upvr (copied, readonly)
			[13]: getContentStyle_upvr (copied, readonly)
			[14]: tbl_8_upvr (copied, readonly)
			[15]: Cryo_upvr (copied, readonly)
			[16]: SpringAnimatedItem_upvr (copied, readonly)
			[17]: tbl_12_upvr (copied, readonly)
			[18]: component_assets_vignette_246_upvr (copied, readonly)
			[19]: List_upvr (copied, readonly)
			[20]: PlayerTileButton_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local Tokens_2 = arg1_9.Tokens
		local var103
		if not arg1.props.subtitleFontStyle then
		end
		local footerTopPadding = arg1.props.footerTopPadding
		if not footerTopPadding then
			footerTopPadding = Tokens_2.Global.Space_50
		end
		local module_5 = {}
		local tbl_17 = {}
		local tbl_2_upvr = {}
		if arg1.props.Selectable then
			var103 = Dictionary_upvr.join
			var103 = var103(arg1.props.relevancyInfo, {
				Selectable = false;
			})
		else
			var103 = arg1.props.relevancyInfo
		end
		tbl_2_upvr.playerContext = var103
		var103 = arg1.state.controlState
		tbl_2_upvr.controlState = var103
		var103 = withStyle_upvr
		var103 = var103(function(arg1_10) -- Line 103
			--[[ Upvalues[4]:
				[1]: Object_upvr (copied, readonly)
				[2]: tbl_2_upvr (readonly)
				[3]: Roact_upvr (copied, readonly)
				[4]: PlayerContext_upvr (copied, readonly)
			]]
			local Tokens_6 = arg1_10.Tokens
			local tbl_27 = {}
			local var113
			if tbl_2_upvr.playerContext.onActivated then
				var113 = Tokens_6.Semantic.Typography.CaptionHeader
			else
				var113 = Tokens_6.Semantic.Typography.CaptionBody
			end
			tbl_27.fontStyle = var113
			var113 = Tokens_6.Global.Space_50
			tbl_27.iconTextSpacing = var113
			var113 = 0
			tbl_27.iconPadding = var113
			var113 = UDim2.fromOffset(Tokens_6.Global.Size_150, Tokens_6.Global.Size_150)
			tbl_27.iconSize = var113
			var113 = Tokens_6.Global.Size_350
			tbl_27.textHeight = var113
			var113 = tbl_2_upvr.horizontalAlignment
			tbl_27.horizontalAlignment = var113
			var113 = tbl_2_upvr.playerContext
			var113 = {}
			var113.Size = UDim2.new(1, 0, 0, 0)
			var113.AutomaticSize = Enum.AutomaticSize.Y
			var113.BackgroundTransparency = 1
			return Roact_upvr.createElement("Frame", var113, {
				PlayerContext = Roact_upvr.createElement(PlayerContext_upvr, Object_upvr.assign({}, tbl_27, var113));
			})
		end)
		tbl_17.footer = var103
		var103 = arg1
		tbl_2_upvr = var103.props
		tbl_17.Selectable = tbl_2_upvr.Selectable
		tbl_17.hasRoundedCorners = true
		tbl_17.innerPadding = 0
		tbl_2_upvr = Tokens_2.Global
		tbl_17.titleTopPadding = tbl_2_upvr.Space_100
		tbl_2_upvr = Tokens_2.Global
		tbl_17.subtitleTopPadding = tbl_2_upvr.Space_25
		tbl_17.footerTopPadding = footerTopPadding
		tbl_17.name = title_upvr
		var103 = Tokens_2.Semantic.Color.Text
		tbl_2_upvr = var103.Emphasis
		tbl_17.nameTextColor = tbl_2_upvr.Color3
		tbl_17.titleRichText = true
		var103 = Tokens_2.Semantic
		tbl_2_upvr = var103.Typography
		tbl_17.titleFontStyle = tbl_2_upvr.Subheader
		var103 = arg1
		tbl_2_upvr = var103.props
		tbl_17.hasVerifiedBadge = tbl_2_upvr.hasVerifiedBadge
		tbl_17.titleTextLineCount = 1
		var103 = arg1
		tbl_2_upvr = var103.props
		tbl_17.subtitle = tbl_2_upvr.subtitle
		tbl_17.subtitleFontStyle = Tokens_2.Semantic.Typography.CaptionHeader
		tbl_17.onActivated = onActivated_upvr
		tbl_17.thumbnail = thumbnail_upvr
		tbl_2_upvr = Images_upvr
		var103 = arg1_9.Theme.PlayerBackgroundDefault.Image
		tbl_17.backgroundImage = tbl_2_upvr[var103]
		var103 = Dictionary_upvr
		tbl_2_upvr = var103.join
		var103 = arg1.props
		tbl_2_upvr = tbl_2_upvr(var103, {
			hoverMouseEnter = arg1.hoverMouseEnter;
			hoverMouseLeave = arg1.hoverMouseLeave;
			mouseEntered = arg1.state.mouseEntered;
		})
		var103 = withStyle_upvr
		var103 = var103(function(arg1_11) -- Line 132
			--[[ Upvalues[10]:
				[1]: getContentStyle_upvr (copied, readonly)
				[2]: tbl_8_upvr (copied, readonly)
				[3]: tbl_2_upvr (readonly)
				[4]: Roact_upvr (copied, readonly)
				[5]: Cryo_upvr (copied, readonly)
				[6]: SpringAnimatedItem_upvr (copied, readonly)
				[7]: tbl_12_upvr (copied, readonly)
				[8]: component_assets_vignette_246_upvr (copied, readonly)
				[9]: List_upvr (copied, readonly)
				[10]: PlayerTileButton_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local Tokens_4 = arg1_11.Tokens
			local Space_100_upvr_3 = Tokens_4.Global.Space_100
			local Size_450_upvr_3 = Tokens_4.Global.Size_450
			local module_8 = {}
			local var122 = not tbl_2_upvr.isCircular
			if var122 then
				var122 = not Cryo_upvr.isEmpty(tbl_2_upvr.buttons)
				if var122 then
					var122 = Roact_upvr.createElement
					var122 = var122("Frame", {
						Size = UDim2.new(1, 0, 0, Size_450_upvr_3 + Space_100_upvr_3 * 2);
						AnchorPoint = Vector2.new(0, 1);
						Position = UDim2.new(0, 0, 1, 0);
						LayoutOrder = 1;
					}, {
						UIGradient = Roact_upvr.createElement("UIGradient", {
							Rotation = 90;
							Color = ColorSequence.new({ColorSequenceKeypoint.new(0, arg1_11.Theme.BackgroundUIContrast.Color), ColorSequenceKeypoint.new(1, arg1_11.Theme.BackgroundUIContrast.Color)});
							Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, arg1_11.Theme.BackgroundUIContrast.Transparency)});
						});
						UICorner = Roact_upvr.createElement("UICorner", {
							CornerRadius = UDim.new(0, 8);
						});
					})
				end
			end
			module_8.ButtonBackgroundGradient = var122
			local tbl_4 = {
				springOptions = tbl_12_upvr;
			}
			local tbl_28 = {}
			if tbl_2_upvr.mouseEntered then
			else
			end
			tbl_28.imageTransparency = 1
			tbl_4.animatedValues = tbl_28
			function tbl_4.mapValuesToProps(arg1_12) -- Line 171
				return {
					ImageTransparency = arg1_12.imageTransparency;
				}
			end
			tbl_4.regularProps = {
				Size = UDim2.new(1, 0, 1, 0);
				BackgroundTransparency = 1;
				Image = component_assets_vignette_246_upvr.Image;
				ImageRectSize = component_assets_vignette_246_upvr.ImageRectSize;
				ImageRectOffset = component_assets_vignette_246_upvr.ImageRectOffset;
				ImageColor3 = getContentStyle_upvr(tbl_8_upvr, tbl_2_upvr.controlState, arg1_11).Color;
				ImageTransparency = 0;
				LayoutOrder = 2;
				[Roact_upvr.Event.MouseEnter] = tbl_2_upvr.hoverMouseEnter;
				[Roact_upvr.Event.MouseLeave] = tbl_2_upvr.hoverMouseLeave;
			}
			local tbl_22 = {}
			local tbl_11 = {}
			if tbl_2_upvr.isCircular then
				local udim = UDim.new(0.5, 0)
			else
			end
			tbl_11.CornerRadius = UDim.new(0, 8)
			tbl_22.corner = Roact_upvr.createElement("UICorner", tbl_11)
			module_8.HoverTransparency = Roact_upvr.createElement(SpringAnimatedItem_upvr.AnimatedImageLabel, tbl_4, tbl_22)
			module_8.ButtonContainer = Roact_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				Size = UDim2.new(1, 0, 1, 0);
				ZIndex = 2;
			}, {
				PlayerTileButtons = Roact_upvr.createElement("Frame", {
					BackgroundTransparency = 1;
					Position = UDim2.new(1, 0, 1, 0);
					Size = UDim2.new(0, tbl_2_upvr.tileSize.X.Offset - Space_100_upvr_3 * 2, 0, Size_450_upvr_3);
					AnchorPoint = Vector2.new(1, 1);
					LayoutOrder = 3;
					ZIndex = 2;
				}, List_upvr.join(List_upvr.map(tbl_2_upvr.buttons, function(arg1_13) -- Line 209
					--[[ Upvalues[5]:
						[1]: Roact_upvr (copied, readonly)
						[2]: PlayerTileButton_upvr (copied, readonly)
						[3]: Size_450_upvr_3 (readonly)
						[4]: Space_100_upvr_3 (readonly)
						[5]: tbl_2_upvr (copied, readonly)
					]]
					return Roact_upvr.createElement(PlayerTileButton_upvr, {
						buttonHeight = Size_450_upvr_3;
						outerButtonPadding = Space_100_upvr_3;
						tileSize = tbl_2_upvr.tileSize;
						icon = arg1_13.icon;
						isSecondary = arg1_13.isSecondary;
						isDisabled = arg1_13.isDisabled;
						onActivated = arg1_13.onActivated;
						mouseEnter = tbl_2_upvr.hoverMouseEnter;
						mouseLeave = tbl_2_upvr.hoverMouseLeave;
					})
				end), {Roact_upvr.createElement("UIListLayout", {
					HorizontalAlignment = Enum.HorizontalAlignment.Right;
					Padding = UDim.new(0, Tokens_4.Global.Space_100);
					FillDirection = Enum.FillDirection.Horizontal;
				})}));
				UIPadding = Roact_upvr.createElement("UIPadding", {
					PaddingBottom = UDim.new(0, Space_100_upvr_3);
					PaddingRight = UDim.new(0, Space_100_upvr_3);
				});
			})
			return Roact_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				Size = UDim2.new(1, 0, 1, 0);
			}, module_8)
		end)
		local var144 = var103
		tbl_17.thumbnailOverlayComponents = var144
		tbl_2_upvr = title_upvr
		if tbl_2_upvr ~= nil then
			var144 = false
		else
			var144 = true
		end
		tbl_17.addSubtitleSpace = var144
		var103 = arg1
		tbl_2_upvr = var103.props
		tbl_17.isCircular = tbl_2_upvr.isCircular
		var103 = arg1
		tbl_2_upvr = var103.props
		tbl_17.horizontalAlignment = tbl_2_upvr.horizontalAlignment
		var103 = arg1
		tbl_2_upvr = var103.props
		tbl_17.thumbnailFrameSize = tbl_2_upvr.thumbnailFrameSize
		var103 = arg1
		tbl_2_upvr = var103.props
		tbl_17.openTypeFeatures = tbl_2_upvr.openTypeFeatures
		module_5.Tile = Roact_upvr.createElement(Tile_upvr, tbl_17)
		return Roact_upvr.createElement("Frame", {
			Size = tileSize_upvr;
			BackgroundTransparency = 1;
			LayoutOrder = 1;
			[Roact_upvr.Ref] = arg1.props.forwardedRef;
		}, module_5)
	end)
end
return Roact_upvr.forwardRef(function(arg1, arg2) -- Line 329
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Dictionary_upvr (readonly)
	]]
	local module_4 = {}
	module_4.forwardedRef = arg2
	return Roact_upvr.createElement(any_extend_result1_upvr, Dictionary_upvr.join(arg1, module_4))
end)