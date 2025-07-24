-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:27
-- Luau version 6, Types version 3
-- Time taken: 0.010875 seconds

local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local dependencies = require(SocialLibraries.dependencies)
local Roact_upvr = dependencies.Roact
local Cryo_upvr = dependencies.Cryo
local UIBlox_upvr = dependencies.UIBlox
local Components = SocialLibraries.Components
local FitFrameVertical_upvr = require(script.Parent.Parent.FitFrameVertical)
local any_extend_result1 = Roact_upvr.Component:extend("AlertViewBuilder")
local tbl_4 = {
	bodyText = "";
	buttons = {};
	checkboxes = {};
	textboxes = {};
	displayTextbox = false;
}
local function onActivated() -- Line 79
end
tbl_4.onActivated = onActivated
function tbl_4.onModalClose() -- Line 80
end
function tbl_4.onModalStayOpen() -- Line 81
end
function tbl_4.onModalOpen() -- Line 82
end
tbl_4.title = ""
tbl_4.checkboxHeight = 50
tbl_4.childComponentWidth = 220
tbl_4.screenSize = Vector2.new(0, 0)
tbl_4.soakAreaColor3 = Color3.fromRGB(255, 0, 255)
tbl_4.soakAreaTransparency = 0.5
tbl_4.inputLengthExceeded = nil
any_extend_result1.defaultProps = tbl_4
local Text_upvr = dependencies.Text
function any_extend_result1.init(arg1) -- Line 95
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: Text_upvr (readonly)
	]]
	local tbl_2 = {}
	local var20 = 0
	local var21 = 0
	for i, _ in pairs(arg1.props.checkboxes) do
		tbl_2[i] = false
		var20 += 1
	end
	arg1.refs = {}
	for i_2, _ in pairs(arg1.props.textboxes) do
		arg1.refs[i_2] = Roact_upvr.createRef()
		var21 += 1
	end
	arg1.state = {
		checkboxStatuses = tbl_2;
		numCheckboxes = var20;
		numTextboxes = var21;
	}
	function arg1.calcTextboxTextHeight(arg1_2, arg2) -- Line 112
		--[[ Upvalues[2]:
			[1]: Text_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local var30
		if arg2 and arg2 ~= "" then
			var30 = Text_upvr.GetTextHeight(arg2, arg1_2.Font.Body.Font, arg1_2.Font.Body.RelativeSize * arg1_2.Font.BaseSize, arg1.props.childComponentWidth)
		end
		return var30
	end
end
function any_extend_result1.didMount(arg1) -- Line 124
	if type(arg1.props.onModalOpen) == "function" then
		arg1.props.onModalOpen()
	end
end
function any_extend_result1.reset(arg1) -- Line 130
	for _, v_3 in pairs(arg1.refs) do
		if v_3.current then
			v_3.current.Text = ""
		end
	end
	for i_4, _ in pairs(arg1.state.checkboxStatuses) do
		({})[i_4] = false
		local var46
	end
	arg1:setState({
		checkboxStatuses = var46;
	})
end
function any_extend_result1.makeButtonTable(arg1) -- Line 145
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	local module = {
		buttons = {};
	}
	for i_5, v_5_upvr in ipairs(arg1.props.buttons) do
		table.insert(module.buttons, {})
		local tbl_5 = {}
		local tbl_12 = {
			layoutOrder = i_5;
		}
		local function onActivated() -- Line 154
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: v_5_upvr (readonly)
			]]
			arg1.props.onActivated()
			local tbl = {}
			for i_6, v_6 in pairs(arg1.refs) do
				local var66
				local function INLINED() -- Internal function, doesn't exist in bytecode
					var66 = v_6.current.Text
					return var66
				end
				if not v_6.current or not INLINED() then
					var66 = ""
				end
				tbl[i_6] = var66
			end
			if not v_5_upvr.props.onActivated(tbl, arg1.state.checkboxStatuses) then
				arg1:reset()
				arg1:setState({
					displayingModal = false;
				})
				arg1.props.onModalClose()
			else
				arg1.props.onModalStayOpen()
			end
		end
		tbl_12.onActivated = onActivated
		tbl_5.props = Cryo_upvr.Dictionary.join(v_5_upvr.props, tbl_12)
		module.buttons[i_5] = Cryo_upvr.Dictionary.join(v_5_upvr, tbl_5)
	end
	return module
end
local AlertViewTextbox_upvr = require(Components.AlertView.AlertViewTextbox)
local AlertViewLabel_upvr = require(Components.AlertView.AlertViewLabel)
function any_extend_result1.makeTextboxList(arg1, arg2) -- Line 179
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: FitFrameVertical_upvr (readonly)
		[3]: AlertViewTextbox_upvr (readonly)
		[4]: AlertViewLabel_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 22 start (CF ANALYSIS FAILED)
	local var82
	if arg1.props.inputLengthExceeded then
		var82 = arg2.Theme.Alert.Color
	end
	local props = arg1.props
	local pairs_result1, pairs_result2_3, pairs_result3_2 = pairs(props.textboxes)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [30.8]
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local tbl_6 = {
		width = UDim.new(1, 0);
		BorderSizePixel = 0;
		BackgroundTransparency = 1;
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_6.LayoutOrder = nil.LayoutOrder
	local tbl_14 = {}
	local tbl_9 = {}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_9.onTextChanged = nil.onTextChanged
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_9.PlaceholderText = nil.PlaceholderText
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_9.Text = nil.Text
	tbl_9.LayoutOrder = 1
	tbl_9[Roact_upvr.Ref] = arg1.refs[props]
	tbl_14[props] = Roact_upvr.createElement(AlertViewTextbox_upvr, tbl_9)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if nil.belowText then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		local var90
		if nil.belowText ~= "" then
			var90 = Roact_upvr.createElement
			local tbl_8 = {
				BackgroundTransparency = 1;
			}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl_8.Text = nil.belowText
			tbl_8.LayoutOrder = 2
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			local belowTextAlignment = nil.belowTextAlignment
			if not belowTextAlignment then
				belowTextAlignment = Enum.TextXAlignment.Left
			end
			tbl_8.TextXAlignment = belowTextAlignment
			tbl_8.Size = UDim2.new(1, 0, 0, arg1.calcTextboxTextHeight(arg2, nil.belowText))
			tbl_8.TextColor3 = var82
			var90 = var90(AlertViewLabel_upvr, tbl_8)
			if not var90 then
				-- KONSTANTERROR: [138] 90. Error Block 9 start (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [138] 90. Error Block 9 end (CF ANALYSIS FAILED)
			end
			tbl_14[props.." Below Text"] = nil
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
			local function INLINED_3() -- Internal function, doesn't exist in bytecode
				tbl_11.TextColor3 = arg2.Theme.Alert.Color
				tbl_11.Size = UDim2.new(1, 0, 0, arg1.calcTextboxTextHeight(arg2, nil.warningText))
				tbl_11.TextXAlignment = Enum.TextXAlignment.Left
				tbl_11.LayoutOrder = 3
				tbl_11.Text = nil.warningText
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				tbl_11.BackgroundTransparency = 1
				local tbl_11 = {}
				return Roact_upvr.createElement(AlertViewLabel_upvr, tbl_11)
			end
			if not nil.warningText or nil.warningText == "" or not INLINED_3() then
			end
			tbl_14[props.." Warning Text"] = nil
			;({})[props] = Roact_upvr.createElement(FitFrameVertical_upvr, tbl_6, tbl_14)
			-- KONSTANTWARNING: GOTO [27] #16
		end
		-- KONSTANTWARNING: GOTO [138] #90
	end
	-- KONSTANTERROR: [0] 1. Error Block 22 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [138] 90. Error Block 9 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [138] 90. Error Block 9 end (CF ANALYSIS FAILED)
end
local CheckboxList_upvr = UIBlox_upvr.App.InputButton.CheckboxList
function any_extend_result1.makeCheckboxList(arg1) -- Line 232
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: CheckboxList_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	return Roact_upvr.createElement(CheckboxList_upvr, {
		checkboxes = arg1.props.checkboxes;
		atMost = arg1.state.numCheckboxes + 1;
		elementSize = UDim2.new(0, arg1.props.childComponentWidth, 0, arg1.props.checkboxHeight);
		onActivated = function(arg1_3) -- Line 237, Named "onActivated"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: Cryo_upvr (copied, readonly)
			]]
			arg1:setState({
				checkboxStatuses = Cryo_upvr.Dictionary.join(arg1.state.checkboxStatuses, arg1_3);
			})
		end;
	})
end
function any_extend_result1.makeMiddleContent(arg1, arg2) -- Line 245
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: FitFrameVertical_upvr (readonly)
	]]
	if arg1.state.numTextboxes == 0 and arg1.state.numCheckboxes == 0 then
		return nil
	end
	local any_makeTextboxList_result1_upvr = arg1:makeTextboxList(arg2)
	local var99_upvr = arg1.state.numCheckboxes * arg1.props.checkboxHeight
	local any_makeCheckboxList_result1_upvr = arg1:makeCheckboxList()
	return function() -- Line 256
		--[[ Upvalues[5]:
			[1]: Roact_upvr (copied, readonly)
			[2]: FitFrameVertical_upvr (copied, readonly)
			[3]: any_makeTextboxList_result1_upvr (readonly)
			[4]: var99_upvr (readonly)
			[5]: any_makeCheckboxList_result1_upvr (readonly)
		]]
		return Roact_upvr.createElement(FitFrameVertical_upvr, {
			width = UDim.new(1, 0);
			BorderSizePixel = 0;
			BackgroundTransparency = 1;
		}, {
			Textboxes = Roact_upvr.createElement(FitFrameVertical_upvr, {
				width = UDim.new(1, 0);
				BorderSizePixel = 0;
				BackgroundTransparency = 1;
				LayoutOrder = 1;
			}, any_makeTextboxList_result1_upvr);
			Checkboxes = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, var99_upvr);
				BackgroundTransparency = 1;
				LayoutOrder = 2;
			}, any_makeCheckboxList_result1_upvr);
		})
	end
end
local AlertViewSoakArea_upvr = require(Components.AlertView.AlertViewSoakArea)
local InteractiveAlert_upvr = UIBlox_upvr.App.Dialog.Alert.InteractiveAlert
function any_extend_result1.render(arg1) -- Line 277
	--[[ Upvalues[4]:
		[1]: UIBlox_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: AlertViewSoakArea_upvr (readonly)
		[4]: InteractiveAlert_upvr (readonly)
	]]
	local displayTextbox = arg1.props.displayTextbox
	if not displayTextbox then
		displayTextbox = not arg1.props.mandatoryInput
	end
	assert(displayTextbox)
	return UIBlox_upvr.Style.withStyle(function(arg1_4) -- Line 280
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: AlertViewSoakArea_upvr (copied, readonly)
			[4]: InteractiveAlert_upvr (copied, readonly)
		]]
		local var109
		local function INLINED_4() -- Internal function, doesn't exist in bytecode
			var109 = arg1.props.bodyText
			return var109
		end
		if arg1.props.bodyText == "" or not INLINED_4() then
			var109 = nil
		end
		return Roact_upvr.createElement(AlertViewSoakArea_upvr, {
			BackgroundColor3 = arg1.props.soakAreaColor3;
			BackgroundTransparency = arg1.props.soakAreaTransparency;
			Visible = arg1.state.displayingModal;
		}, {
			alertView = Roact_upvr.createElement(InteractiveAlert_upvr, {
				title = arg1.props.title;
				bodyText = var109;
				middleContent = arg1:makeMiddleContent(arg1_4);
				buttonStackInfo = arg1:makeButtonTable();
				screenSize = arg1.props.screenSize;
			});
		})
	end)
end
return any_extend_result1