-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:26
-- Luau version 6, Types version 3
-- Time taken: 0.002860 seconds

local Parent = script.Parent
local Parent_3 = Parent.Parent.Parent.Parent
local Parent_2 = Parent_3.Parent
local Roact_upvr = require(Parent_2.Roact)
local t = require(Parent_2.t)
local any_extend_result1 = Roact_upvr.PureComponent:extend("InformativeAlert")
any_extend_result1.validateProps = t.strictInterface({
	anchorPoint = t.optional(t.Vector2);
	position = t.optional(t.UDim2);
	screenSize = t.Vector2;
	onMounted = t.optional(t.callback);
	title = t.string;
	titleIcon = t.optional(t.union(t.table, t.string));
	bodyText = t.optional(t.string);
	richText = t.optional(t.boolean);
})
local withStyle_upvr = require(Parent_3.Core.Style.withStyle)
local GetTextHeight_upvr = require(Parent_3.Core.Text.GetTextHeight)
local Alert_upvr = require(Parent.Alert)
local AlertType_upvr = require(Parent.Enum.AlertType)
local FitFrameOnAxis_upvr = require(Parent_2.FitFrame).FitFrameOnAxis
local ImageSetComponent_upvr = require(Parent_3.Core.ImageSet.ImageSetComponent)
local GenericTextLabel_upvr = require(Parent_3.Core.Text.GenericTextLabel.GenericTextLabel)
function any_extend_result1.render(arg1) -- Line 47
	--[[ Upvalues[8]:
		[1]: withStyle_upvr (readonly)
		[2]: GetTextHeight_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: Alert_upvr (readonly)
		[5]: AlertType_upvr (readonly)
		[6]: FitFrameOnAxis_upvr (readonly)
		[7]: ImageSetComponent_upvr (readonly)
		[8]: GenericTextLabel_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 48
		--[[ Upvalues[8]:
			[1]: arg1 (readonly)
			[2]: GetTextHeight_upvr (copied, readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: Alert_upvr (copied, readonly)
			[5]: AlertType_upvr (copied, readonly)
			[6]: FitFrameOnAxis_upvr (copied, readonly)
			[7]: ImageSetComponent_upvr (copied, readonly)
			[8]: GenericTextLabel_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local Font_upvr = arg1_2.Font
		local Theme_upvr = arg1_2.Theme
		local var18_upvr = Font_upvr.BaseSize * Font_upvr.Body.RelativeSize
		local middleContent
		local function INLINED() -- Internal function, doesn't exist in bytecode
			middleContent = math.clamp(arg1.props.screenSize.X - 48, 272, 400) - 48
			return GetTextHeight_upvr(arg1.props.bodyText, Font_upvr.Body.Font, var18_upvr, middleContent)
		end
		if not arg1.props.bodyText or not INLINED() then
		end
		local module = {}
		middleContent = arg1.props.anchorPoint
		module.anchorPoint = middleContent
		middleContent = AlertType_upvr.Informative
		module.alertType = middleContent
		middleContent = {}
		middleContent.top = 0
		middleContent.bottom = 24
		middleContent.left = 24
		middleContent.right = 24
		module.margin = middleContent
		middleContent = 400
		module.maxWidth = middleContent
		middleContent = 272
		module.minWidth = middleContent
		middleContent = arg1.props.onMounted
		module.onMounted = middleContent
		middleContent = arg1.props.position
		module.position = middleContent
		middleContent = arg1.props.screenSize
		module.screenSize = middleContent
		middleContent = arg1.props.title
		module.title = middleContent
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			function middleContent() -- Line 78
				--[[ Upvalues[5]:
					[1]: Roact_upvr (copied, readonly)
					[2]: FitFrameOnAxis_upvr (copied, readonly)
					[3]: ImageSetComponent_upvr (copied, readonly)
					[4]: arg1 (copied, readonly)
					[5]: Theme_upvr (readonly)
				]]
				return Roact_upvr.createElement(FitFrameOnAxis_upvr, {
					BackgroundTransparency = 1;
					contentPadding = UDim.new(0, 8);
					HorizontalAlignment = Enum.HorizontalAlignment.Center;
					margin = {
						top = 12;
						bottom = 0;
						left = 0;
						right = 0;
					};
					minimumSize = UDim2.new(1, 0, 0, 0);
				}, {
					Icon = Roact_upvr.createElement(ImageSetComponent_upvr.Label, {
						BackgroundTransparency = 1;
						Image = arg1.props.titleIcon;
						ImageColor3 = Theme_upvr.IconEmphasis.Color;
						ImageTransparency = Theme_upvr.IconEmphasis.Transparency;
						Size = UDim2.new(0, 48, 0, 48);
					});
				})
			end
			return middleContent
		end
		if not arg1.props.titleIcon or not INLINED_2() then
			middleContent = nil
		end
		module.titleContent = middleContent
		local var26_upvr = 0
		function middleContent() -- Line 101
			--[[ Upvalues[7]:
				[1]: Roact_upvr (copied, readonly)
				[2]: GenericTextLabel_upvr (copied, readonly)
				[3]: Theme_upvr (readonly)
				[4]: Font_upvr (readonly)
				[5]: arg1 (copied, readonly)
				[6]: var18_upvr (readonly)
				[7]: var26_upvr (readonly)
			]]
			return Roact_upvr.createElement(GenericTextLabel_upvr, {
				BackgroundTransparency = 1;
				colorStyle = Theme_upvr.TextDefault;
				fontStyle = Font_upvr.Body;
				LayoutOrder = 1;
				Text = arg1.props.bodyText;
				TextSize = var18_upvr;
				TextXAlignment = Enum.TextXAlignment.Center;
				Size = UDim2.new(1, 0, 0, var26_upvr);
				RichText = arg1.props.richText;
			})
		end
		module.middleContent = middleContent
		return Roact_upvr.createElement(Alert_upvr, module)
	end)
end
return any_extend_result1