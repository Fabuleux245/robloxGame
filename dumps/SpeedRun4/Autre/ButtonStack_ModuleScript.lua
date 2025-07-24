-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:10:59
-- Luau version 6, Types version 3
-- Time taken: 0.007098 seconds

local Parent_3 = script.Parent
local Parent_2 = Parent_3.Parent.Parent
local Parent = Parent_2.Parent
local Roact_upvr = require(Parent.Roact)
local Cryo_upvr = require(Parent.Cryo)
local RoactGamepad_upvr = require(Parent.RoactGamepad)
local t = require(Parent.t)
local Button_upvr = require(Parent_3.Button)
local ButtonType_upvr = require(Parent_3.Enum.ButtonType)
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("ButtonStack")
any_extend_result1_upvr.validateProps = t.strictInterface({
	buttons = t.array(t.strictInterface({
		buttonType = t.optional(ButtonType_upvr.isEnumValue);
		props = Button_upvr.validateProps;
		isDefaultChild = t.optional(t.boolean);
	}));
	buttonHeight = t.optional(t.numberMin(0));
	forcedFillDirection = t.optional(t.enum(Enum.FillDirection));
	marginBetween = t.optional(t.numberMin(0));
	minHorizontalButtonPadding = t.optional(t.numberMin(0));
	disableRoactGamepadButtonSelection = t.optional(t.boolean);
	disableGamepadRefs = t.optional(t.boolean);
	NextSelectionLeft = t.optional(t.table);
	NextSelectionRight = t.optional(t.table);
	NextSelectionUp = t.optional(t.table);
	NextSelectionDown = t.optional(t.table);
	frameRef = t.optional(t.table);
	isRoactGamepadEnabled = t.optional(t.boolean);
})
any_extend_result1_upvr.defaultProps = {
	buttonHeight = 36;
	marginBetween = 12;
	minHorizontalButtonPadding = 8;
	isRoactGamepadEnabled = true;
}
function any_extend_result1_upvr.init(arg1) -- Line 71
	--[[ Upvalues[1]:
		[1]: RoactGamepad_upvr (readonly)
	]]
	arg1.buttonRefs = RoactGamepad_upvr.createRefCache()
	arg1.state = {
		frameWidth = 0;
	}
	function arg1.updateFrameSize(arg1_2) -- Line 78
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local X = arg1_2.AbsoluteSize.X
		if X ~= arg1.state.frameWidth then
			arg1:setState({
				frameWidth = X;
			})
		end
	end
end
local withStyle_upvr = require(Parent_2.Core.Style.withStyle)
local GetTextSize_upvr = require(Parent_2.Core.Text.GetTextSize)
local FitFrameOnAxis_upvr = require(Parent.FitFrame).FitFrameOnAxis
function any_extend_result1_upvr.render(arg1) -- Line 88
	--[[ Upvalues[8]:
		[1]: withStyle_upvr (readonly)
		[2]: GetTextSize_upvr (readonly)
		[3]: ButtonType_upvr (readonly)
		[4]: Cryo_upvr (readonly)
		[5]: Roact_upvr (readonly)
		[6]: Button_upvr (readonly)
		[7]: RoactGamepad_upvr (readonly)
		[8]: FitFrameOnAxis_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_3) -- Line 89
		--[[ Upvalues[8]:
			[1]: arg1 (readonly)
			[2]: GetTextSize_upvr (copied, readonly)
			[3]: ButtonType_upvr (copied, readonly)
			[4]: Cryo_upvr (copied, readonly)
			[5]: Roact_upvr (copied, readonly)
			[6]: Button_upvr (copied, readonly)
			[7]: RoactGamepad_upvr (copied, readonly)
			[8]: FitFrameOnAxis_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 148 start (CF ANALYSIS FAILED)
		local _ = arg1_3.Font
		local isRoactGamepadEnabled = arg1.props.isRoactGamepadEnabled
		local buttons = arg1.props.buttons
		local var33
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var33 = arg1.props.marginBetween
			return var33
		end
		if 1 >= #buttons or not INLINED() then
			var33 = 0
		end
		if arg1.props.forcedFillDirection then
			if arg1.props.forcedFillDirection ~= Enum.FillDirection.Vertical then
				local _ = false
				-- KONSTANTWARNING: Skipped task `defvar` above
			else
			end
			if not true or not UDim2.new(1, 0, 0, arg1.props.buttonHeight) then
			end
			for i, v in ipairs(buttons) do
				local tbl_4 = {
					key = tostring(i);
				}
				local var39
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				local function INLINED_2() -- Internal function, doesn't exist in bytecode
					var39 = #buttons - i
					return var39
				end
				if not true or not INLINED_2() then
					var39 = i
				end
				tbl_4.layoutOrder = var39
				tbl_4.size = UDim2.new(0, arg1.state.frameWidth / #buttons - var33 * (#buttons - 1) / #buttons, 0, arg1.props.buttonHeight)
				var39 = v.buttonType
				if not var39 then
					var39 = ButtonType_upvr.Secondary
				end
				tbl_4.buttonType = var39
				tbl_4.isRoactGamepadEnabled = isRoactGamepadEnabled
				var39 = Cryo_upvr.Dictionary.join(tbl_4, v.props)
				if v.isDefaultChild then
					local var40 = i
				end
				if not arg1.props.disableGamepadRefs and isRoactGamepadEnabled then
					local var41
					local var42
					if arg1.props.disableRoactGamepadButtonSelection then
						local tbl_3 = {}
						var42 = Roact_upvr.Ref
						tbl_3[var42] = arg1.buttonRefs[i]
						var41 = tbl_3
					else
						local tbl_2 = {}
						var42 = Roact_upvr.Ref
						tbl_2[var42] = arg1.buttonRefs[i]
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						local function INLINED_3() -- Internal function, doesn't exist in bytecode
							var42 = arg1.buttonRefs[i - 1]
							return var42
						end
						if not true or 1 >= i or not INLINED_3() then
							var42 = nil
						end
						tbl_2.NextSelectionUp = var42
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						local function INLINED_4() -- Internal function, doesn't exist in bytecode
							var42 = arg1.buttonRefs[i + 1]
							return var42
						end
						if not true or i >= #buttons or not INLINED_4() then
							var42 = nil
						end
						tbl_2.NextSelectionDown = var42
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						local function INLINED_5() -- Internal function, doesn't exist in bytecode
							var42 = arg1.buttonRefs[i - 1]
							return var42
						end
						if true or 1 >= i or not INLINED_5() then
							var42 = nil
						end
						tbl_2.NextSelectionLeft = var42
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						local function INLINED_6() -- Internal function, doesn't exist in bytecode
							var42 = arg1.buttonRefs[i + 1]
							return var42
						end
						if true or i >= #buttons or not INLINED_6() then
							var42 = nil
						end
						tbl_2.NextSelectionRight = var42
						var41 = tbl_2
					end
					var39 = Cryo_upvr.Dictionary.join(var39, var41)
				end
				table.insert({}, Roact_upvr.createElement(Button_upvr, var39))
			end
			if isRoactGamepadEnabled then
				i = RoactGamepad_upvr
				i = FitFrameOnAxis_upvr
			else
			end
			local tbl = {
				BackgroundTransparency = 1;
				contentPadding = UDim.new(0, var33);
				FillDirection = arg1.props.forcedFillDirection;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				LayoutOrder = 3;
				minimumSize = UDim2.new(1, 0, 0, arg1.props.buttonHeight);
				[Roact_upvr.Ref] = arg1.props.frameRef;
				[Roact_upvr.Change.AbsoluteSize] = arg1.updateFrameSize;
			}
			if isRoactGamepadEnabled then
				-- KONSTANTWARNING: GOTO [388] #277
			end
			tbl.NextSelectionLeft = nil
			if isRoactGamepadEnabled then
				-- KONSTANTWARNING: GOTO [398] #284
			end
			tbl.NextSelectionRight = nil
			if isRoactGamepadEnabled then
				-- KONSTANTWARNING: GOTO [408] #291
			end
			tbl.NextSelectionUp = nil
			if isRoactGamepadEnabled then
			else
			end
			tbl.NextSelectionDown = nil
			if isRoactGamepadEnabled then
				if not var40 or not arg1.buttonRefs[var40] then
					-- KONSTANTWARNING: GOTO [430] #308
				end
				-- KONSTANTWARNING: GOTO [430] #308
			end
			-- KONSTANTWARNING: GOTO [429] #307
		end
		-- KONSTANTERROR: [0] 1. Error Block 148 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [69] 49. Error Block 118 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [69] 49. Error Block 118 end (CF ANALYSIS FAILED)
	end)
end
local any_forwardRef_result1 = Roact_upvr.forwardRef(function(arg1, arg2) -- Line 190
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local module = {}
	module.frameRef = arg2
	return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, module))
end)
any_forwardRef_result1.validateProps = any_extend_result1_upvr.validateProps
return any_forwardRef_result1