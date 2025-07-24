-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:56
-- Luau version 6, Types version 3
-- Time taken: 0.004264 seconds

local Parent = script.Parent
local Parent_2 = Parent.Parent.Parent
local tbl_2_upvr = {
	width = UDim.new(0, 400);
}
local useStyle_upvr = require(Parent_2.Core.Style.useStyle)
local React_upvr = require(Parent_2.Parent.React)
local useCursor_upvr = require(Parent_2.App.SelectionCursor.useCursor)
local UIBloxConfig_upvr = require(Parent_2.UIBloxConfig)
local InputLabel_upvr = require(Parent.InputLabel)
local ImageSetComponent_upvr = require(Parent_2.Core.ImageSet.ImageSetComponent)
local HelperText_upvr = require(Parent.HelperText)
return function(arg1) -- Line 54, Named "TextField"
	--[[ Upvalues[8]:
		[1]: useStyle_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: useCursor_upvr (readonly)
		[4]: tbl_2_upvr (readonly)
		[5]: UIBloxConfig_upvr (readonly)
		[6]: InputLabel_upvr (readonly)
		[7]: ImageSetComponent_upvr (readonly)
		[8]: HelperText_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 95 start (CF ANALYSIS FAILED)
	local Tokens = useStyle_upvr().Tokens
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local _, any_useState_result2_upvr_2 = React_upvr.useState(false)
	local _, any_useState_result2_upvr = React_upvr.useState(false)
	local TextField_upvr = Tokens.Component.TextField
	local Focus = Tokens.Semantic.Stroke.Focus
	local Small_upvr = Tokens.Semantic.Icon.Size.Small
	local var21 = math.ceil(Tokens.Semantic.Stroke.Input) * 2
	local udim = UDim.new(0.5)
	if arg1.width ~= nil then
		udim = arg1.width
	else
		udim = tbl_2_upvr.width
	end
	local function _() -- Line 80, Named "canUseTextInputType"
		--[[ Upvalues[1]:
			[1]: UIBloxConfig_upvr (copied, readonly)
		]]
		if not UIBloxConfig_upvr.enableTextFieldInputType then
			return false
		end
		local pcall_result1, pcall_result2 = pcall(function() -- Line 84
			return game:GetService("CoreGui")
		end)
		local var27 = pcall_result1
		if var27 then
			if pcall_result2 == nil then
				var27 = false
			else
				var27 = true
			end
		end
		return var27
	end
	local function _() -- Line 92, Named "getTextBoxWidthOffset"
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Small_upvr (readonly)
			[3]: TextField_upvr (readonly)
		]]
		local var28
		if arg1.iconLeading then
			var28 -= Small_upvr
			var28 -= TextField_upvr.Base.Field.Gap * 2
		end
		if arg1.iconButton then
			var28 -= Small_upvr
			var28 -= TextField_upvr.Base.Field.Gap * 2
		end
		return var28
	end
	local function _(arg1_2) -- Line 105, Named "onTextChange"
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1_2 == nil then
			arg1.onChange("")
		else
			arg1.onChange(arg1_2.Text)
		end
	end
	local function _() -- Line 113, Named "onFocusGained"
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: any_useRef_result1_upvr (readonly)
			[3]: any_useState_result2_upvr (readonly)
		]]
		if arg1.disabled and any_useRef_result1_upvr.current then
			any_useRef_result1_upvr.current:ReleaseFocus()
		else
			any_useState_result2_upvr(true)
			if arg1.onFocusGained then
				arg1.onFocusGained()
			end
		end
	end
	local function _() -- Line 124, Named "onFocusLost"
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr (readonly)
		]]
		any_useState_result2_upvr(false)
	end
	local _ = {
		BackgroundTransparency = 1;
		Size = UDim2.new(udim, UDim.new(0, 0));
		AutomaticSize = Enum.AutomaticSize.Y;
		LayoutOrder = arg1.LayoutOrder;
	}
	local tbl = {}
	local any_createElement_result1 = React_upvr.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Vertical;
		SortOrder = Enum.SortOrder.LayoutOrder;
		Padding = UDim.new(0, Tokens.Component.InputLabel.Base.Spacing.Bottom);
	})
	tbl.Layout = any_createElement_result1
	if arg1.label then
		any_createElement_result1 = React_upvr.createElement
		any_createElement_result1 = any_createElement_result1(InputLabel_upvr, {
			text = arg1.label;
			required = arg1.required;
			LayoutOrder = 1;
		})
	else
		any_createElement_result1 = nil
	end
	tbl.InputLabel = any_createElement_result1
	if arg1.disabled then
		-- KONSTANTWARNING: GOTO [226] #156
	end
	-- KONSTANTERROR: [0] 1. Error Block 95 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [225] 155. Error Block 101 start (CF ANALYSIS FAILED)
	;({
		Size = UDim2.new(1, 0, 0, Tokens.Global.Size_600);
		BackgroundTransparency = 1;
		LayoutOrder = 2;
	}).GroupTransparency = 0
	local tbl_3 = {
		Size = UDim2.new(1, -var21, 1, -var21);
		Position = UDim2.new(0, var21 / 2, 0, var21 / 2);
		BackgroundTransparency = 1;
		Selectable = not arg1.disabled;
		Image = "";
		SelectionImageObject = useCursor_upvr(UDim.new(0, TextField_upvr.Base.Field.BorderRadius), Focus, Focus);
		[React_upvr.Event.Activated] = function() -- Line 162
			--[[ Upvalues[1]:
				[1]: any_useRef_result1_upvr (readonly)
			]]
			if any_useRef_result1_upvr.current then
				any_useRef_result1_upvr.current:CaptureFocus()
			end
		end;
		[React_upvr.Event.MouseEnter] = function() -- Line 167
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr_2 (readonly)
			]]
			any_useState_result2_upvr_2(true)
		end;
		[React_upvr.Event.MouseLeave] = function() -- Line 170
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr_2 (readonly)
			]]
			any_useState_result2_upvr_2(false)
		end;
	}
	;({}).Corner = React_upvr.createElement("UICorner", {
		CornerRadius = UDim.new(0, TextField_upvr.Base.Field.BorderRadius);
	})
	if arg1.error then
		-- KONSTANTWARNING: GOTO [336] #231
	end
	-- KONSTANTERROR: [225] 155. Error Block 101 end (CF ANALYSIS FAILED)
end