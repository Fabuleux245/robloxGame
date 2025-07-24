-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:47:06
-- Luau version 6, Types version 3
-- Time taken: 0.006364 seconds

local Parent = script:FindFirstAncestor("AppBlox").Parent
local UIBlox = require(Parent.UIBlox)
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local any_extend_result1 = Roact_upvr.PureComponent:extend("DetailsPageTitleContent")
any_extend_result1.validateProps = t.strictInterface({
	titleText = t.optional(t.string);
	subTitleText = t.optional(t.string);
	renderInfoContent = t.optional(t.callback);
	layoutOrder = t.optional(t.number);
	verticalAlignment = t.optional(t.enum(Enum.VerticalAlignment));
})
local GetTextSize_upvr = require(Parent.Style).GetTextSize
function any_extend_result1.init(arg1) -- Line 27
	--[[ Upvalues[1]:
		[1]: GetTextSize_upvr (readonly)
	]]
	arg1.state = {
		containerWidth = nil;
	}
	function arg1.onContainerSizeChange(arg1_2) -- Line 31
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState(function(arg1_3, arg2) -- Line 32
			--[[ Upvalues[1]:
				[1]: arg1_2 (readonly)
			]]
			return {
				containerWidth = arg1_2.AbsoluteSize.X;
			}
		end)
	end
	function arg1.getTextSize(arg1_4, arg2, arg3) -- Line 38
		--[[ Upvalues[1]:
			[1]: GetTextSize_upvr (copied, readonly)
		]]
		return GetTextSize_upvr(arg1_4, arg2.RelativeSize * arg3.Font.BaseSize, arg2.Font, Vector2.new(10000, 10000))
	end
end
local withStyle_upvr = UIBlox.Core.Style.withStyle
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
function any_extend_result1.render(arg1) -- Line 46
	--[[ Upvalues[3]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: StyledTextLabel_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_5) -- Line 47
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: StyledTextLabel_upvr (copied, readonly)
		]]
		local Theme_2 = arg1_5.Theme
		local Font = arg1_5.Font
		local udim2_2 = UDim2.new(0, 0, 1, 0)
		local var31
		if arg1.props.titleText then
			local any_getTextSize_result1 = arg1.getTextSize(arg1.props.titleText, Font.Title, arg1_5)
			var31 = arg1
			if var31.state.containerWidth ~= nil then
				var31 = arg1.state
				if var31.containerWidth <= any_getTextSize_result1.X then
					var31 = 0
					udim2_2 = UDim2.new(0, var31, 0, any_getTextSize_result1.Y * 1 * 2)
					-- KONSTANTWARNING: GOTO [65] #47
				end
			end
			var31 = 0
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			udim2_2 = UDim2.new(0, var31, 0, any_getTextSize_result1.Y * 1)
		end
		local module_3 = {}
		var31 = 1
		module_3.Size = UDim2.fromScale(var31, 0)
		module_3.BackgroundTransparency = 1
		var31 = Roact_upvr.Change
		var31 = arg1.onContainerSizeChange
		module_3[var31.AbsoluteSize] = var31
		module_3.AutomaticSize = Enum.AutomaticSize.Y
		var31 = arg1.props
		module_3.LayoutOrder = var31.layoutOrder
		local module = {}
		var31 = Roact_upvr.createElement
		var31 = var31("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Vertical;
			VerticalAlignment = arg1.props.verticalAlignment;
		})
		module.ListLayout = var31
		local function INLINED_4() -- Internal function, doesn't exist in bytecode
			var31 = var31(StyledTextLabel_upvr, tbl_3)
			tbl_3.richText = false
			tbl_3.layoutOrder = 1
			tbl_3.fluidSizing = false
			tbl_3.lineHeight = 1
			tbl_3.textTruncate = Enum.TextTruncate.AtEnd
			tbl_3.colorStyle = Theme_2.TextEmphasis
			tbl_3.fontStyle = Font.Title
			tbl_3.automaticSize = Enum.AutomaticSize.X
			tbl_3.size = udim2_2
			tbl_3.text = arg1.props.titleText
			local tbl_3 = {}
			var31 = Roact_upvr.createElement
			return var31
		end
		if not arg1.props.titleText or not INLINED_4() then
			var31 = nil
		end
		module.Title = var31
		local function INLINED_5() -- Internal function, doesn't exist in bytecode
			var31 = var31(StyledTextLabel_upvr, tbl_2)
			tbl_2.richText = false
			tbl_2.layoutOrder = 2
			tbl_2.automaticSize = Enum.AutomaticSize.XY
			tbl_2.colorStyle = Theme_2.TextMuted
			tbl_2.fontStyle = Font.Header2
			tbl_2.text = arg1.props.subTitleText
			local tbl_2 = {}
			var31 = Roact_upvr.createElement
			return var31
		end
		if not arg1.props.subTitleText or not INLINED_5() then
			var31 = nil
		end
		module.SubTitle = var31
		local function INLINED_6() -- Internal function, doesn't exist in bytecode
			var31 = var31("Frame", tbl_5, tbl_4)
			tbl_4.CustomContent = arg1.props.renderInfoContent()
			local tbl_4 = {}
			tbl_5.LayoutOrder = 3
			tbl_5.BackgroundTransparency = 1
			tbl_5.AutomaticSize = Enum.AutomaticSize.Y
			tbl_5.Size = UDim2.fromScale(1, 0)
			local tbl_5 = {}
			var31 = Roact_upvr.createElement
			return var31
		end
		if not arg1.props.renderInfoContent or not INLINED_6() then
			var31 = nil
		end
		module.CustomContentComponentFrame = var31
		return Roact_upvr.createElement("Frame", module_3, module)
	end)
end
return any_extend_result1