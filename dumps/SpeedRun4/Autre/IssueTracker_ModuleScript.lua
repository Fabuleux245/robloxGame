-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:21
-- Luau version 6, Types version 3
-- Time taken: 0.016471 seconds

local AuthCommon = script:FindFirstAncestor("AuthCommon")
local Parent = AuthCommon.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local tutils_upvr = require(Parent.tutils)
local UIBlox = require(Parent.UIBlox)
local IssueCondition_upvr = require(AuthCommon.Enums.IssueCondition)
local InputValidity_upvr = require(AuthCommon.Enums.InputValidity)
local any_extend_result1 = Roact_upvr.PureComponent:extend("IssueTracker")
local SharedFlags = require(Parent.SharedFlags)
local FFlagSignUpTrackFailedRequest_upvr = SharedFlags.FFlagSignUpTrackFailedRequest
local any_interface_result1_upvr = t.interface({
	validateFunction = t.callback;
	getIssueMessageList = t.callback;
	getDefaultIssues = t.callback;
})
local Logger_upvr = AuthCommon.Components.Logger
function any_extend_result1.init(arg1) -- Line 51
	--[[ Upvalues[7]:
		[1]: any_interface_result1_upvr (readonly)
		[2]: IssueCondition_upvr (readonly)
		[3]: InputValidity_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: FFlagSignUpTrackFailedRequest_upvr (readonly)
		[6]: Logger_upvr (readonly)
		[7]: tutils_upvr (readonly)
	]]
	local validator_2_upvr = arg1.props.validator
	assert(any_interface_result1_upvr(validator_2_upvr))
	local any_getIssueMessageList_result1 = validator_2_upvr.getIssueMessageList()
	local any_getDefaultIssues_result1 = validator_2_upvr.getDefaultIssues()
	local tbl_9 = {}
	for i in pairs(any_getIssueMessageList_result1) do
		local var24 = false
		if any_getDefaultIssues_result1[i] ~= IssueCondition_upvr.Hidden then
			var24 = true
		end
		tbl_9[i] = var24
	end
	arg1.state = {
		listOfIssuesOnDisplay = tbl_9;
		issueMessageList = any_getIssueMessageList_result1;
		issueCondition = any_getDefaultIssues_result1;
		inputValidity = InputValidity_upvr.Unvalidated;
	}
	arg1.isMounted = false
	arg1.containerRef = Roact_upvr.createRef()
	function arg1.validateText() -- Line 78
		--[[ Upvalues[6]:
			[1]: arg1 (readonly)
			[2]: any_interface_result1_upvr (copied, readonly)
			[3]: validator_2_upvr (readonly)
			[4]: InputValidity_upvr (copied, readonly)
			[5]: FFlagSignUpTrackFailedRequest_upvr (copied, readonly)
			[6]: Logger_upvr (copied, readonly)
		]]
		assert(any_interface_result1_upvr(validator_2_upvr))
		arg1.props.validate(arg1.props.networking, validator_2_upvr.validateFunction, arg1.props.textToValidate, arg1.state.issueCondition, arg1.props.validatorAdditionalProps):andThen(function(arg1_2) -- Line 91
			--[[ Upvalues[3]:
				[1]: arg1 (copied, readonly)
				[2]: InputValidity_upvr (copied, readonly)
				[3]: FFlagSignUpTrackFailedRequest_upvr (copied, readonly)
			]]
			spawn(function() -- Line 92
				--[[ Upvalues[4]:
					[1]: arg1 (copied, readonly)
					[2]: InputValidity_upvr (copied, readonly)
					[3]: arg1_2 (readonly)
					[4]: FFlagSignUpTrackFailedRequest_upvr (copied, readonly)
				]]
				local onTextValidated_2 = arg1.props.onTextValidated
				local textToValidate = arg1.props.textToValidate
				local Invalid = InputValidity_upvr.Invalid
				if arg1.isMounted then
					if arg1_2.Input == textToValidate then
						if textToValidate == "" then
							Invalid = InputValidity_upvr.Unvalidated
						elseif arg1_2.InputValid then
							Invalid = InputValidity_upvr.Valid
						end
						if onTextValidated_2 then
							if FFlagSignUpTrackFailedRequest_upvr then
								onTextValidated_2(arg1_2.Input, Invalid, arg1_2.hasRequestFailed)
							else
								onTextValidated_2(arg1_2.Input, Invalid)
							end
						end
						arg1:setState({
							issueCondition = arg1_2.IssueCondition;
							inputValidity = Invalid;
						})
						if arg1.props.updateIssueCondition then
							arg1.props.updateIssueCondition(arg1_2.IssueCondition)
						end
					end
				end
			end)
		end, function(arg1_3) -- Line 124
			--[[ Upvalues[3]:
				[1]: Logger_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: InputValidity_upvr (copied, readonly)
			]]
			Logger_upvr:warning(string.format("Input issueTracker error: %s", tostring(arg1_3)))
			arg1:setState({
				inputValidity = InputValidity_upvr.Unvalidated;
			})
		end)
	end
	function arg1.updateListOfIssuesOnDisplay() -- Line 134
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: IssueCondition_upvr (copied, readonly)
			[3]: tutils_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [146] 111. Error Block 31 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [146] 111. Error Block 31 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [127] 94. Error Block 62 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [146.0]
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [146.4293986699]
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [146.3]
		if nil < nil then
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [147.9]
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [147.10]
			-- KONSTANTWARNING: GOTO [133] #100
		end
		-- KONSTANTERROR: [127] 94. Error Block 62 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 61 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		local function INLINED() -- Internal function, doesn't exist in bytecode
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [147.8]
			return nil
		end
		if not nil or not INLINED() then
		end
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [147.11]
		for _, _ in nil do
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [147.14]
			if nil then
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		end
		for _ in nil do
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [147.15]
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [147.592292]
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [147.16]
			if nil ~= nil then
			else
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [147.17]
			if nil == nil then
			else
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
			if nil and not nil then
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x3)
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if nil then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
			if nil < nil then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
				-- KONSTANTWARNING: GOTO [113] #82
			end
			-- KONSTANTWARNING: GOTO [129] #96
		end
		-- KONSTANTERROR: [0] 1. Error Block 61 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [148] 113. Error Block 46 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [150.5]
		for _, v_2 in pairs(nil) do
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [154.4]
			nil[v_2] = true
		end
		local var64_upvr
		spawn(function() -- Line 210
			--[[ Upvalues[3]:
				[1]: arg1 (copied, readonly)
				[2]: tutils_upvr (copied, readonly)
				[3]: var64_upvr (readonly)
			]]
			if arg1.isMounted and not tutils_upvr.shallowEqual(var64_upvr, arg1.state.listOfIssuesOnDisplay) then
				arg1:setState({
					listOfIssuesOnDisplay = var64_upvr;
				})
			end
		end)
		-- KONSTANTERROR: [148] 113. Error Block 46 end (CF ANALYSIS FAILED)
	end
end
function any_extend_result1.didMount(arg1) -- Line 222
	arg1.isMounted = true
	arg1.updateListOfIssuesOnDisplay()
end
function any_extend_result1.willUnmount(arg1) -- Line 227
	arg1.isMounted = false
end
local ArgCheck_upvr = require(Parent.ArgCheck)
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 231
	--[[ Upvalues[3]:
		[1]: ArgCheck_upvr (readonly)
		[2]: tutils_upvr (readonly)
		[3]: FFlagSignUpTrackFailedRequest_upvr (readonly)
	]]
	local validator = arg1.props.validator
	local textToValidate_2_upvr = arg1.props.textToValidate
	if validator ~= arg2.validator then
		local var69 = ArgCheck_upvr
		if validator ~= arg2.validator then
			var69 = false
		else
			var69 = true
		end
		var69.assert(var69, "IssueTracker expects the validator to never change")
	end
	if textToValidate_2_upvr ~= arg2.textToValidate or not tutils_upvr.shallowEqual(arg1.props.validatorAdditionalProps, arg2.validatorAdditionalProps) then
		spawn(function() -- Line 244
			--[[ Upvalues[3]:
				[1]: FFlagSignUpTrackFailedRequest_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: textToValidate_2_upvr (readonly)
			]]
			local var71
			if FFlagSignUpTrackFailedRequest_upvr then
				if arg1.props.debounceTime then
					var71 = arg1.props.debounceTime
				else
					var71 = 0.3
				end
				task.wait(var71)
			else
				var71 = 0.3
				wait(var71)
			end
			if textToValidate_2_upvr == arg1.props.textToValidate then
				arg1.validateText()
			end
		end)
	end
	arg1.updateListOfIssuesOnDisplay()
end
local withStyle_upvr = UIBlox.Style.withStyle
local any_createBinding_result1_upvr = Roact_upvr.createBinding(0)
local FFlagLuaEnableIssueTrackerSorting_upvr = SharedFlags.FFlagLuaEnableIssueTrackerSorting
local withLocalization_upvr = require(Parent.Localization).withLocalization
local FitChildren_upvr = require(AuthCommon.Components.FitChildren)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local GetImageData_upvr = require(Parent.RobloxAppAssets).GetImageData
local FitTextLabel_upvr = require(AuthCommon.Components.FitTextLabel)
function any_extend_result1.render(arg1) -- Line 260
	--[[ Upvalues[11]:
		[1]: withStyle_upvr (readonly)
		[2]: any_createBinding_result1_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: FFlagLuaEnableIssueTrackerSorting_upvr (readonly)
		[5]: IssueCondition_upvr (readonly)
		[6]: withLocalization_upvr (readonly)
		[7]: InputValidity_upvr (readonly)
		[8]: FitChildren_upvr (readonly)
		[9]: ImageSetLabel_upvr (readonly)
		[10]: GetImageData_upvr (readonly)
		[11]: FitTextLabel_upvr (readonly)
	]]
	local issueMessageList_upvr = arg1.state.issueMessageList
	local issueCondition_upvr = arg1.state.issueCondition
	local listOfIssuesOnDisplay_upvr = arg1.state.listOfIssuesOnDisplay
	local height_upvr = arg1.props.height
	return withStyle_upvr(function(arg1_4) -- Line 268
		--[[ Upvalues[15]:
			[1]: arg1 (readonly)
			[2]: any_createBinding_result1_upvr (copied, readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: issueMessageList_upvr (readonly)
			[5]: FFlagLuaEnableIssueTrackerSorting_upvr (copied, readonly)
			[6]: issueCondition_upvr (readonly)
			[7]: IssueCondition_upvr (copied, readonly)
			[8]: withLocalization_upvr (copied, readonly)
			[9]: InputValidity_upvr (copied, readonly)
			[10]: FitChildren_upvr (copied, readonly)
			[11]: listOfIssuesOnDisplay_upvr (readonly)
			[12]: ImageSetLabel_upvr (copied, readonly)
			[13]: GetImageData_upvr (copied, readonly)
			[14]: FitTextLabel_upvr (copied, readonly)
			[15]: height_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local Font_upvr = arg1_4.Font.CaptionBody.Font
		local var90_upvr = arg1_4.Font.BaseSize * arg1_4.Font.CaptionBody.RelativeSize
		local var91_upvw
		if not arg1.props.checkmarkTransparency then
			local var92_upvr = any_createBinding_result1_upvr
		end
		if not var91_upvw then
			local Transparency = arg1_4.Theme.TextDefault.Transparency
			if Transparency ~= arg1.textDefaultTransparency then
				arg1.textDefaultTransparency = Transparency
				arg1.textDefaultTransparencyBinding = Roact_upvr.createBinding(Transparency)
			end
			var91_upvw = arg1.textDefaultTransparencyBinding
		end
		local any_joinBindings_result1_upvr = Roact_upvr.joinBindings({
			content = var91_upvw;
			checkmark = var92_upvr;
		})
		for i_5 in pairs(issueMessageList_upvr) do
			table.insert({}, i_5)
			local var99_upvr
		end
		if FFlagLuaEnableIssueTrackerSorting_upvr and arg1.props.sortProblematicIssues then
			table.sort(var99_upvr, function(arg1_5, arg2) -- Line 294
				--[[ Upvalues[2]:
					[1]: issueCondition_upvr (copied, readonly)
					[2]: IssueCondition_upvr (copied, readonly)
				]]
				if issueCondition_upvr[arg1_5] == IssueCondition_upvr.Problematic and issueCondition_upvr[arg2] ~= IssueCondition_upvr.Problematic then
					return true
				end
				return false
			end)
		end
		if FFlagLuaEnableIssueTrackerSorting_upvr then
			return withLocalization_upvr(issueMessageList_upvr)(function(arg1_6) -- Line 307
				--[[ Upvalues[18]:
					[1]: Roact_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
					[3]: var99_upvr (readonly)
					[4]: issueCondition_upvr (copied, readonly)
					[5]: IssueCondition_upvr (copied, readonly)
					[6]: InputValidity_upvr (copied, readonly)
					[7]: FitChildren_upvr (copied, readonly)
					[8]: listOfIssuesOnDisplay_upvr (copied, readonly)
					[9]: ImageSetLabel_upvr (copied, readonly)
					[10]: GetImageData_upvr (copied, readonly)
					[11]: arg1_4 (readonly)
					[12]: any_joinBindings_result1_upvr (readonly)
					[13]: FitTextLabel_upvr (copied, readonly)
					[14]: Font_upvr (readonly)
					[15]: var90_upvr (readonly)
					[16]: var91_upvw (read and write)
					[17]: height_upvr (copied, readonly)
					[18]: var92_upvr (readonly)
				]]
				-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
				local module_3 = {Roact_upvr.createElement("UIListLayout", {
					Padding = UDim.new(0, 5);
					SortOrder = Enum.SortOrder.LayoutOrder;
					[Roact_upvr.Change.AbsoluteContentSize] = arg1.updateListOfIssuesOnDisplay;
				})}
				for i_6, v_3 in ipairs(var99_upvr) do
					local var126
					if issueCondition_upvr[v_3] ~= IssueCondition_upvr.Problematic then
						var126 = false
					else
						var126 = true
					end
					if var126 then
						if arg1.state.inputValidity == InputValidity_upvr.Unvalidated then
							local _ = false
							-- KONSTANTWARNING: Skipped task `defvar` above
						else
						end
					end
					local tbl_6 = {
						List = Roact_upvr.createElement("UIListLayout", {
							FillDirection = Enum.FillDirection.Horizontal;
							Padding = UDim.new(0, 7);
							SortOrder = Enum.SortOrder.LayoutOrder;
						});
					}
					local tbl_8 = {}
					local tbl_7 = {
						BackgroundTransparency = 1;
					}
					if var126 then
					else
					end
					tbl_7.Image = GetImageData_upvr("LuaApp/icons/progress_small") or "LuaApp/icons/progress_small"
					if not true or not arg1_4.Theme.Alert.Color then
					end
					tbl_7.ImageColor3 = arg1_4.Theme.TextDefault.Color
					tbl_7.ImageTransparency = any_joinBindings_result1_upvr:map(function(arg1_7) -- Line 344
						return (arg1_7.content - 1) * (1 - arg1_7.checkmark) + 1
					end)
					tbl_7.Size = UDim2.new(1, 0, 1, 0)
					tbl_7.Position = UDim2.new(0.5, 0, 0.65, 0)
					tbl_7.AnchorPoint = Vector2.new(0.5, 0.5)
					tbl_8.CheckMark = Roact_upvr.createElement(ImageSetLabel_upvr, tbl_7)
					tbl_6.CheckHolder = Roact_upvr.createElement("Frame", {
						Size = UDim2.new(0, 12, 0, 12);
						LayoutOrder = 1;
						BackgroundTransparency = 1;
					}, tbl_8)
					local tbl = {
						LayoutOrder = 2;
						Size = UDim2.new(1, 0, 0, 0);
						fitAxis = FitChildren_upvr.FitAxis.Height;
						BackgroundTransparency = 1;
						Text = arg1_6[v_3];
						TextWrapped = true;
						Font = Font_upvr;
						TextSize = var90_upvr;
					}
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					if not true or not arg1_4.Theme.Alert.Color then
					end
					tbl.TextColor3 = arg1_4.Theme.TextDefault.Color
					tbl.TextTransparency = var91_upvw
					tbl.TextXAlignment = Enum.TextXAlignment.Left
					tbl_6.IssueLabel = Roact_upvr.createElement(FitTextLabel_upvr, tbl)
					module_3[v_3] = Roact_upvr.createElement(FitChildren_upvr.FitFrame, {
						Size = UDim2.new(1, 0, 0, 0);
						fitAxis = FitChildren_upvr.FitAxis.Height;
						BackgroundTransparency = 1;
						LayoutOrder = i_6;
						Visible = listOfIssuesOnDisplay_upvr[v_3];
					}, tbl_6)
				end
				if height_upvr then
					local module_4 = {}
					i_6 = UDim2.new
					v_3 = 1
					var126 = 0
					i_6 = i_6(v_3, var126, 0, height_upvr)
					module_4.Size = i_6
					i_6 = 1
					module_4.BackgroundTransparency = i_6
					v_3 = Roact_upvr
					i_6 = v_3.Ref
					var126 = arg1
					v_3 = var126.containerRef
					module_4[i_6] = v_3
					i_6 = var92_upvr
					function var126(arg1_8) -- Line 374
						return UDim2.new(0, 19 * -arg1_8, 0, 0)
					end
					i_6 = i_6:map(var126)
					module_4.Position = i_6
					i_6 = module_3
					return Roact_upvr.createElement("Frame", module_4, i_6)
				end
				return Roact_upvr.createElement(FitChildren_upvr.FitFrame, {
					Size = UDim2.new(1, 0, 0, 0);
					fitAxis = FitChildren_upvr.FitAxis.Height;
					BackgroundTransparency = 1;
					[Roact_upvr.Ref] = arg1.containerRef;
					Position = var92_upvr:map(function(arg1_9) -- Line 384
						return UDim2.new(0, 19 * -arg1_9, 0, 0)
					end);
				}, module_3)
			end)
		end
		return withLocalization_upvr(issueMessageList_upvr)(function(arg1_10) -- Line 392
			--[[ Upvalues[18]:
				[1]: Roact_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: issueMessageList_upvr (copied, readonly)
				[4]: issueCondition_upvr (copied, readonly)
				[5]: IssueCondition_upvr (copied, readonly)
				[6]: InputValidity_upvr (copied, readonly)
				[7]: FitChildren_upvr (copied, readonly)
				[8]: listOfIssuesOnDisplay_upvr (copied, readonly)
				[9]: ImageSetLabel_upvr (copied, readonly)
				[10]: GetImageData_upvr (copied, readonly)
				[11]: arg1_4 (readonly)
				[12]: any_joinBindings_result1_upvr (readonly)
				[13]: FitTextLabel_upvr (copied, readonly)
				[14]: Font_upvr (readonly)
				[15]: var90_upvr (readonly)
				[16]: var91_upvw (read and write)
				[17]: height_upvr (copied, readonly)
				[18]: var92_upvr (readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local module = {Roact_upvr.createElement("UIListLayout", {
				Padding = UDim.new(0, 5);
				SortOrder = Enum.SortOrder.LayoutOrder;
				[Roact_upvr.Change.AbsoluteContentSize] = arg1.updateListOfIssuesOnDisplay;
			})}
			for i_7, v_4 in pairs(issueMessageList_upvr) do
				local var154
				if issueCondition_upvr[i_7] ~= IssueCondition_upvr.Problematic then
					var154 = false
				else
					var154 = true
				end
				if var154 then
					if arg1.state.inputValidity == InputValidity_upvr.Unvalidated then
						local _ = false
						-- KONSTANTWARNING: Skipped task `defvar` above
					else
					end
				end
				local tbl_4 = {
					List = Roact_upvr.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Horizontal;
						Padding = UDim.new(0, 7);
						SortOrder = Enum.SortOrder.LayoutOrder;
					});
				}
				local tbl_3 = {}
				local tbl_2 = {
					BackgroundTransparency = 1;
				}
				if var154 then
				else
				end
				tbl_2.Image = GetImageData_upvr("LuaApp/icons/progress_small") or "LuaApp/icons/progress_small"
				if not true or not arg1_4.Theme.Alert.Color then
				end
				tbl_2.ImageColor3 = arg1_4.Theme.TextDefault.Color
				tbl_2.ImageTransparency = any_joinBindings_result1_upvr:map(function(arg1_11) -- Line 429
					return (arg1_11.content - 1) * (1 - arg1_11.checkmark) + 1
				end)
				tbl_2.Size = UDim2.new(1, 0, 1, 0)
				tbl_2.Position = UDim2.new(0.5, 0, 0.65, 0)
				tbl_2.AnchorPoint = Vector2.new(0.5, 0.5)
				tbl_3.CheckMark = Roact_upvr.createElement(ImageSetLabel_upvr, tbl_2)
				tbl_4.CheckHolder = Roact_upvr.createElement("Frame", {
					Size = UDim2.new(0, 12, 0, 12);
					LayoutOrder = 1;
					BackgroundTransparency = 1;
				}, tbl_3)
				local tbl_5 = {
					LayoutOrder = 2;
					Size = UDim2.new(1, 0, 0, 0);
					fitAxis = FitChildren_upvr.FitAxis.Height;
					BackgroundTransparency = 1;
					Text = arg1_10[i_7];
					TextWrapped = true;
					Font = Font_upvr;
					TextSize = var90_upvr;
				}
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if not true or not arg1_4.Theme.Alert.Color then
				end
				tbl_5.TextColor3 = arg1_4.Theme.TextDefault.Color
				tbl_5.TextTransparency = var91_upvw
				tbl_5.TextXAlignment = Enum.TextXAlignment.Left
				tbl_4.IssueLabel = Roact_upvr.createElement(FitTextLabel_upvr, tbl_5)
				module[i_7] = Roact_upvr.createElement(FitChildren_upvr.FitFrame, {
					Size = UDim2.new(1, 0, 0, 0);
					fitAxis = FitChildren_upvr.FitAxis.Height;
					BackgroundTransparency = 1;
					LayoutOrder = string.byte(v_4, #v_4);
					Visible = listOfIssuesOnDisplay_upvr[i_7];
				}, tbl_4)
			end
			if height_upvr then
				local module_2 = {}
				i_7 = UDim2.new
				v_4 = 1
				var154 = 0
				i_7 = i_7(v_4, var154, 0, height_upvr)
				module_2.Size = i_7
				i_7 = 1
				module_2.BackgroundTransparency = i_7
				v_4 = Roact_upvr
				i_7 = v_4.Ref
				var154 = arg1
				v_4 = var154.containerRef
				module_2[i_7] = v_4
				i_7 = var92_upvr
				function var154(arg1_12) -- Line 459
					return UDim2.new(0, 19 * -arg1_12, 0, 0)
				end
				i_7 = i_7:map(var154)
				module_2.Position = i_7
				i_7 = module
				return Roact_upvr.createElement("Frame", module_2, i_7)
			end
			return Roact_upvr.createElement(FitChildren_upvr.FitFrame, {
				Size = UDim2.new(1, 0, 0, 0);
				fitAxis = FitChildren_upvr.FitAxis.Height;
				BackgroundTransparency = 1;
				[Roact_upvr.Ref] = arg1.containerRef;
				Position = var92_upvr:map(function(arg1_13) -- Line 469
					return UDim2.new(0, 19 * -arg1_13, 0, 0)
				end);
			}, module)
		end)
	end)
end
return require(Parent.RoactServices).RoactServices.connect({
	networking = require(Parent.RoactServiceTags).RoactNetworking;
})(require(Parent.RoactRodux).connect(nil, function(arg1) -- Line 478
	return {
		validate = function(arg1_14, arg2, arg3, arg4, arg5) -- Line 480, Named "validate"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1(arg2(arg1_14, arg3, arg4, arg5))
		end;
	}
end)(any_extend_result1))