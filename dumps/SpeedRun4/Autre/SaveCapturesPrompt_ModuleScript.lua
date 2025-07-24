-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:18
-- Luau version 6, Types version 3
-- Time taken: 0.018696 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local Foundation = require(Parent.Foundation)
local React_upvr = require(Parent.React)
local RoactUtils = require(Parent.RoactUtils)
local UIBlox = require(Parent.UIBlox)
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("CaptureServiceContentObjectEnabled")
local getCropSize_upvr = require(Parent.CapturesCommon).Utils.getCropSize
local Toggle_upvr = UIBlox.App.InputButton.Toggle
local function var7_upvr(arg1) -- Line 60
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: game_GetEngineFeature_result1_upvr (readonly)
		[3]: getCropSize_upvr (readonly)
		[4]: Toggle_upvr (readonly)
	]]
	local any_useState_result1_upvr, any_useState_result2_upvr_9 = React_upvr.useState(true)
	React_upvr.useEffect(function() -- Line 63
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: any_useState_result1_upvr (readonly)
		]]
		arg1.setIsRowSelected(arg1.content, any_useState_result1_upvr)
	end, {any_useState_result1_upvr, arg1.content, arg1.setIsRowSelected})
	local function var69() -- Line 67
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr_9 (readonly)
			[2]: any_useState_result1_upvr (readonly)
		]]
		any_useState_result2_upvr_9(not any_useState_result1_upvr)
	end
	var69 = 76
	local var71 = var69
	local var72
	if not arg1.showToggle then
		var71 = 0
	end
	local var73 = game_GetEngineFeature_result1_upvr
	if var73 then
		var73 = false
		if typeof(arg1.content) == "Content" then
			var73 = false
			if arg1.content.Object ~= nil then
				var73 = arg1.content.Object:IsA("VideoCapture")
			end
		end
	end
	local any_useState_result1_7, any_useState_result2_upvr_13 = React_upvr.useState(Vector2.new(0, 0))
	local any_useState_result1_3, any_useState_result2_upvr_7 = React_upvr.useState(Vector2.new(0, 0))
	local module_3 = {}
	local tbl_9 = {
		BackgroundTransparency = 1;
		ClipsDescendants = game_GetEngineFeature_result1_upvr;
	}
	var72 = 1
	tbl_9.Size = UDim2.new(var72, -var71, 1, -16)
	var72 = React_upvr.Change
	tbl_9[var72.AbsoluteSize] = React_upvr.useCallback(function(arg1_6) -- Line 84
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr_13 (readonly)
		]]
		any_useState_result2_upvr_13(arg1_6.AbsoluteSize)
	end, {any_useState_result2_upvr_13})
	local tbl_30 = {}
	local var86
	if not var73 then
		var72 = React_upvr.createElement
		local tbl_12 = {}
		var86 = Vector2.new(0.5, 0.5)
		tbl_12.AnchorPoint = var86
		var86 = 1
		tbl_12.BackgroundTransparency = var86
		if game_GetEngineFeature_result1_upvr then
			var86 = nil
		else
			var86 = arg1.content
		end
		tbl_12.Image = var86
		if game_GetEngineFeature_result1_upvr then
		else
		end
		tbl_12.ImageContent = nil
		tbl_12.Position = UDim2.fromScale(0.5, 0.5)
		tbl_12.ScaleType = Enum.ScaleType.Crop
		tbl_12.Size = UDim2.fromScale(1, 1)
		var72 = var72("ImageLabel", tbl_12)
	else
		var72 = nil
	end
	tbl_30.Image = var72
	if var73 then
		local _ = {
			AnchorPoint = Vector2.new(0.5, 0.5);
			BackgroundTransparency = 1;
			Looped = true;
			Playing = true;
			Position = UDim2.fromScale(0.5, 0.5);
			Size = getCropSize_upvr(any_useState_result1_7, any_useState_result1_3);
			VideoContent = arg1.content;
			Volume = 0;
			[React_upvr.Event.Loaded] = React_upvr.useCallback(function(arg1_7) -- Line 88
				--[[ Upvalues[1]:
					[1]: any_useState_result2_upvr_7 (readonly)
				]]
				any_useState_result2_upvr_7(arg1_7.Resolution)
			end, {any_useState_result2_upvr_7});
		}
	else
	end
	tbl_30.Video = nil
	module_3.Preview = React_upvr.createElement("Frame", tbl_9, tbl_30)
	local showToggle_3 = arg1.showToggle
	if showToggle_3 then
		showToggle_3 = React_upvr.createElement
		showToggle_3 = showToggle_3(Toggle_upvr, {
			anchorPoint = Vector2.new(1, 0.5);
			isSelected = any_useState_result1_upvr;
			layoutOrder = 1;
			onActivated = React_upvr.useCallback(var69, {any_useState_result1_upvr, any_useState_result2_upvr_9});
			position = UDim2.new(1, -8, 0.5, 0);
		})
	end
	module_3.Toggle = showToggle_3
	return React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 200);
		BackgroundTransparency = 1;
		LayoutOrder = arg1.layoutOrder;
	}, module_3)
end
local useAnalytics_upvr = require(Parent_2.Analytics.useAnalytics)
local useDispatch_upvr = RoactUtils.Hooks.RoactRodux.useDispatch
local useScreenSize_upvr = require(Parent.RobloxAppHooks).useScreenSize
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local EventNames_upvr = require(Parent_2.Analytics.EventNames)
local useEffectOnce_upvr = RoactUtils.Hooks.useEffectOnce
local FFlagCapturesSavePromptSingleCaptureDisplay_upvr = require(Parent_2.Flags.FFlagCapturesSavePromptSingleCaptureDisplay)
local SaveCapturesPromptFinished_upvr = require(Parent_2.Thunks.SaveCapturesPromptFinished)
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local View_upvr = Foundation.View
local CapturePromptItem_upvr = require(Parent_2.Components.CaptureService.CapturePromptItem)
local Text_upvr = Foundation.Text
local Icon_upvr = Foundation.Icon
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
return function(arg1) -- Line 141
	--[[ Upvalues[16]:
		[1]: useAnalytics_upvr (readonly)
		[2]: useDispatch_upvr (readonly)
		[3]: useScreenSize_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: useLocalization_upvr (readonly)
		[6]: EventNames_upvr (readonly)
		[7]: useEffectOnce_upvr (readonly)
		[8]: FFlagCapturesSavePromptSingleCaptureDisplay_upvr (readonly)
		[9]: SaveCapturesPromptFinished_upvr (readonly)
		[10]: ButtonType_upvr (readonly)
		[11]: View_upvr (readonly)
		[12]: CapturePromptItem_upvr (readonly)
		[13]: Text_upvr (readonly)
		[14]: Icon_upvr (readonly)
		[15]: var7_upvr (readonly)
		[16]: InteractiveAlert_upvr (readonly)
	]]
	local useAnalytics_upvr_result1_upvr = useAnalytics_upvr()
	local var93_result1_upvr = useDispatch_upvr()
	local useScreenSize_upvr_result1_upvr = useScreenSize_upvr()
	local any_useState_result1_11_upvr, any_useState_result2_upvr_5 = React_upvr.useState(Vector2.new(0, 0))
	local any_useState_result1_12_upvr, any_useState_result2_upvr_10 = React_upvr.useState(Vector2.new(0, 0))
	local any_useState_result1_10_upvr, any_useState_result2_upvr_6 = React_upvr.useState(1)
	local any_useState_result1_5_upvr, any_useState_result2_upvr_4 = React_upvr.useState({})
	local any_useRef_result1_upvr = React_upvr.useRef({})
	local promptData_upvr = arg1.promptData
	local contents_upvr = promptData_upvr.contents
	local var172
	if arg1.enableInputDelayed ~= nil then
		promptData_upvr = arg1.enableInputDelayed
	else
		promptData_upvr = true
	end
	local useLocalization_upvr_result1_upvr = useLocalization_upvr({
		bodyText = "Feature.Captures.Body.SaveCapturesPrompt";
		no = "Feature.Captures.Action.NoThanks";
		title = "Feature.Captures.Title.SaveCapturesPrompt";
		yes = "Feature.Captures.Action.Save";
	})
	React_upvr.useEffect(function() -- Line 162
		--[[ Upvalues[2]:
			[1]: useAnalytics_upvr_result1_upvr (readonly)
			[2]: EventNames_upvr (copied, readonly)
		]]
		useAnalytics_upvr_result1_upvr.fireEvent(EventNames_upvr.SaveCapturesPromptViewed)
	end, {})
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function(arg1_8, arg2) -- Line 167
		--[[ Upvalues[1]:
			[1]: any_useRef_result1_upvr (readonly)
		]]
		local var125
		if any_useRef_result1_upvr.current == nil then
			var125 = false
		else
			var125 = true
		end
		assert(var125, "contentsMap.current should always be initialized")
		var125 = any_useRef_result1_upvr
		var125.current[arg1_8] = arg2
	end, {})
	useEffectOnce_upvr(function() -- Line 174
		--[[ Upvalues[3]:
			[1]: FFlagCapturesSavePromptSingleCaptureDisplay_upvr (copied, readonly)
			[2]: contents_upvr (readonly)
			[3]: any_useState_result2_upvr_4 (readonly)
		]]
		if not FFlagCapturesSavePromptSingleCaptureDisplay_upvr then
		else
			for i_4, _ in contents_upvr do
				({})[i_4] = true
				local var133
			end
			any_useState_result2_upvr_4(var133)
		end
	end, {contents_upvr})
	local any_useCallback_result1_upvr_7 = React_upvr.useCallback(function(arg1_9) -- Line 185
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr_4 (readonly)
			[2]: any_useState_result1_10_upvr (readonly)
		]]
		any_useState_result2_upvr_4(function(arg1_10) -- Line 186
			--[[ Upvalues[2]:
				[1]: any_useState_result1_10_upvr (copied, readonly)
				[2]: arg1_9 (readonly)
			]]
			local clone = table.clone(arg1_10)
			clone[any_useState_result1_10_upvr] = arg1_9
			return clone
		end)
	end, {any_useState_result1_10_upvr})
	local any_useCallback_result1_upvr_6 = React_upvr.useCallback(function(arg1_12) -- Line 197
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr_10 (readonly)
		]]
		any_useState_result2_upvr_10(arg1_12.AbsoluteSize)
	end, {any_useState_result2_upvr_10})
	local tbl_26 = {}
	var172 = any_useState_result1_5_upvr
	tbl_26[1] = arg1.promptData
	tbl_26[2] = arg1.promptId
	tbl_26[3] = var172
	local any_useCallback_result1_upvr_5 = React_upvr.useCallback(function() -- Line 201
		--[[ Upvalues[9]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: FFlagCapturesSavePromptSingleCaptureDisplay_upvr (copied, readonly)
			[3]: any_useState_result1_5_upvr (readonly)
			[4]: contents_upvr (readonly)
			[5]: arg1 (readonly)
			[6]: useAnalytics_upvr_result1_upvr (readonly)
			[7]: EventNames_upvr (copied, readonly)
			[8]: var93_result1_upvr (readonly)
			[9]: SaveCapturesPromptFinished_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 32 start (CF ANALYSIS FAILED)
		local var154
		if any_useRef_result1_upvr.current == nil then
			var154 = false
		else
			var154 = true
		end
		assert(var154, "contentsMap.current should always be initialized")
		var154 = 0
		local tbl_4 = {}
		-- KONSTANTERROR: [0] 1. Error Block 32 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [19] 15. Error Block 30 start (CF ANALYSIS FAILED)
		for i, v in any_useState_result1_5_upvr do
			tbl_4[contents_upvr[i]] = v
			if v then
			end
			var154 += 1
		end
		useAnalytics_upvr_result1_upvr.fireEvent(EventNames_upvr.SaveCapturesPromptAccepted, {
			savedCaptures = 0 + 1;
			totalCaptures = var154;
		})
		var93_result1_upvr(SaveCapturesPromptFinished_upvr(arg1.promptId, tbl_4))
		-- KONSTANTERROR: [19] 15. Error Block 30 end (CF ANALYSIS FAILED)
	end, tbl_26)
	local tbl_14 = {}
	var172 = arg1.promptId
	tbl_14[1] = arg1.promptData
	tbl_14[2] = var172
	local any_useCallback_result1_upvr_4 = React_upvr.useCallback(function() -- Line 233
		--[[ Upvalues[5]:
			[1]: useAnalytics_upvr_result1_upvr (readonly)
			[2]: EventNames_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: var93_result1_upvr (readonly)
			[5]: SaveCapturesPromptFinished_upvr (copied, readonly)
		]]
		useAnalytics_upvr_result1_upvr.fireEvent(EventNames_upvr.SaveCapturesPromptRejected)
		local tbl_23 = {}
		for _, v_2 in arg1.promptData.contents do
			tbl_23[v_2] = false
		end
		var93_result1_upvr(SaveCapturesPromptFinished_upvr(arg1.promptId, tbl_23))
	end, tbl_14)
	local tbl_22 = {}
	var172 = any_useState_result1_10_upvr
	tbl_22[1] = var172
	local any_useCallback_result1_upvr_3 = React_upvr.useCallback(function() -- Line 242
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr_6 (readonly)
			[2]: any_useState_result1_10_upvr (readonly)
		]]
		any_useState_result2_upvr_6(math.max(1, any_useState_result1_10_upvr - 1))
	end, tbl_22)
	var172 = {}
	var172[1] = contents_upvr
	var172[2] = any_useState_result1_10_upvr
	local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 246
		--[[ Upvalues[3]:
			[1]: any_useState_result2_upvr_6 (readonly)
			[2]: contents_upvr (readonly)
			[3]: any_useState_result1_10_upvr (readonly)
		]]
		any_useState_result2_upvr_6(math.min(#contents_upvr, any_useState_result1_10_upvr + 1))
	end, var172)
	var172 = React_upvr
	function var172() -- Line 250
		--[[ Upvalues[5]:
			[1]: any_useCallback_result1_upvr_4 (readonly)
			[2]: useLocalization_upvr_result1_upvr (readonly)
			[3]: ButtonType_upvr (copied, readonly)
			[4]: promptData_upvr (readonly)
			[5]: any_useCallback_result1_upvr_5 (readonly)
		]]
		return {
			buttons = {{
				props = {
					onActivated = any_useCallback_result1_upvr_4;
					text = useLocalization_upvr_result1_upvr.no;
				};
				isDefaultChild = true;
			}, {
				buttonType = ButtonType_upvr.PrimarySystem;
				props = {
					delayInputSeconds = 2;
					enableInputDelayed = promptData_upvr;
					isDelayedInput = promptData_upvr;
					onActivated = any_useCallback_result1_upvr_5;
					text = useLocalization_upvr_result1_upvr.yes;
				};
				isDefaultChild = false;
			}};
		}
	end
	if FFlagCapturesSavePromptSingleCaptureDisplay_upvr then
		var172 = React_upvr.useCallback
		var172 = var172(function() -- Line 277
			--[[ Upvalues[15]:
				[1]: any_useState_result1_11_upvr (readonly)
				[2]: any_useState_result1_12_upvr (readonly)
				[3]: useScreenSize_upvr_result1_upvr (readonly)
				[4]: React_upvr (copied, readonly)
				[5]: View_upvr (copied, readonly)
				[6]: any_useCallback_result1_upvr_6 (readonly)
				[7]: CapturePromptItem_upvr (copied, readonly)
				[8]: contents_upvr (readonly)
				[9]: any_useState_result1_10_upvr (readonly)
				[10]: any_useState_result1_5_upvr (readonly)
				[11]: any_useCallback_result1_upvr_7 (readonly)
				[12]: Text_upvr (copied, readonly)
				[13]: any_useCallback_result1_upvr_3 (readonly)
				[14]: Icon_upvr (copied, readonly)
				[15]: any_useCallback_result1_upvr (readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
			local tbl_16 = {
				Size = UDim2.new(1, 0, 0, 200);
				sizeConstraint = {
					MaxSize = Vector2.new(math.huge, (useScreenSize_upvr_result1_upvr.Y - 80) - (any_useState_result1_11_upvr.Y - any_useState_result1_12_upvr.Y));
				};
				onAbsoluteSizeChanged = any_useCallback_result1_upvr_6;
			}
			local tbl_25 = {
				content = contents_upvr[any_useState_result1_10_upvr];
			}
			local var184 = any_useState_result1_5_upvr[any_useState_result1_10_upvr]
			tbl_25.isSelected = var184
			if 1 >= #contents_upvr then
				var184 = false
			else
				var184 = true
			end
			tbl_25.showCheckbox = var184
			tbl_25.updateSelected = any_useCallback_result1_upvr_7
			;({}).CapturePromptItem = React_upvr.createElement(CapturePromptItem_upvr, tbl_25)
			local _ = {
				LayoutOrder = 2;
				tag = "padding-small size-full";
				ZIndex = 2;
			}
			local tbl_20 = {
				tag = "bg-over-media-0 anchor-top-left auto-xy clip padding-x-small padding-y-xsmall position-top-left radius-circle";
			}
			if 1 >= #contents_upvr then
				-- KONSTANTWARNING: GOTO [100] #77
			end
			-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [99] 76. Error Block 29 start (CF ANALYSIS FAILED)
			tbl_20.Visible = true
			;({}).CountView = React_upvr.createElement(View_upvr, tbl_20, {
				Count = React_upvr.createElement(Text_upvr, {
					tag = "auto-xy content-emphasis text-body-small";
					Text = `{any_useState_result1_10_upvr}/{#contents_upvr}`;
				});
			})
			if 1 < any_useState_result1_10_upvr then
				local _ = {
					tag = "bg-over-media-0 anchor-center-left auto-xy clip position-center-left radius-circle";
					onActivated = any_useCallback_result1_upvr_3;
				}
				;({}).CycleLeftIcon = React_upvr.createElement(Icon_upvr, {
					name = "icons/actions/cycleLeft";
				})
				-- KONSTANTWARNING: GOTO [157] #120
			end
			-- KONSTANTERROR: [99] 76. Error Block 29 end (CF ANALYSIS FAILED)
		end, {any_useState_result1_11_upvr, contents_upvr, any_useState_result1_12_upvr, any_useState_result1_10_upvr, any_useCallback_result1_upvr_6, any_useCallback_result1_upvr, any_useCallback_result1_upvr_3, useScreenSize_upvr_result1_upvr, any_useState_result1_5_upvr, any_useCallback_result1_upvr_7})
	else
		var172 = React_upvr.useCallback
		var172 = var172(function() -- Line 347
			--[[ Upvalues[8]:
				[1]: any_useState_result1_11_upvr (readonly)
				[2]: any_useState_result1_12_upvr (readonly)
				[3]: contents_upvr (readonly)
				[4]: useScreenSize_upvr_result1_upvr (readonly)
				[5]: React_upvr (copied, readonly)
				[6]: var7_upvr (copied, readonly)
				[7]: any_useCallback_result1_upvr_2 (readonly)
				[8]: any_useCallback_result1_upvr_6 (readonly)
			]]
			local var198 = #contents_upvr * 200
			local var199 = (useScreenSize_upvr_result1_upvr.Y - 80) - (any_useState_result1_11_upvr.Y - any_useState_result1_12_upvr.Y)
			if var199 < var198 then
				var198 = var199
			end
			local tbl_5 = {
				UIListLayout = React_upvr.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical;
					HorizontalAlignment = Enum.HorizontalAlignment.Center;
					SortOrder = Enum.SortOrder.LayoutOrder;
					VerticalAlignment = Enum.VerticalAlignment.Top;
				});
			}
			for i_3, v_3 in contents_upvr do
				local tbl_15 = {
					content = v_3;
					layoutOrder = i_3;
				}
				local var203 = any_useCallback_result1_upvr_2
				tbl_15.setIsRowSelected = var203
				if 1 >= #contents_upvr then
					var203 = false
				else
					var203 = true
				end
				tbl_15.showToggle = var203
				tbl_5[v_3] = React_upvr.createElement(var7_upvr, tbl_15)
			end
			return React_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				Size = UDim2.new(1, 0, 0, var198);
				[React_upvr.Change.AbsoluteSize] = any_useCallback_result1_upvr_6;
			}, {
				ScrollingFrame = React_upvr.createElement("ScrollingFrame", {
					AutomaticCanvasSize = Enum.AutomaticSize.Y;
					BackgroundTransparency = 1;
					CanvasSize = UDim2.new(1, 0, 0, 0);
					ScrollBarThickness = 0;
					ScrollingDirection = Enum.ScrollingDirection.Y;
					Size = UDim2.new(1, 0, 1, 0);
				}, tbl_5);
			})
		end, {any_useState_result1_11_upvr, contents_upvr, any_useState_result1_12_upvr, useScreenSize_upvr_result1_upvr, any_useCallback_result1_upvr_2, any_useCallback_result1_upvr_6})
	end
	return React_upvr.createElement(InteractiveAlert_upvr, {
		bodyText = useLocalization_upvr_result1_upvr.bodyText;
		buttonStackInfo = var172.useMemo(var172, {useLocalization_upvr_result1_upvr, any_useCallback_result1_upvr_5, any_useCallback_result1_upvr_4});
		isMiddleContentFocusable = false;
		middleContent = var172;
		onAbsoluteSizeChanged = React_upvr.useCallback(function(arg1_11) -- Line 193
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr_5 (readonly)
			]]
			any_useState_result2_upvr_5(arg1_11.AbsoluteSize)
		end, {any_useState_result2_upvr_5});
		position = UDim2.fromScale(0.5, 0.5);
		screenSize = useScreenSize_upvr_result1_upvr;
		title = useLocalization_upvr_result1_upvr.title;
	})
end