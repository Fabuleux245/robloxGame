-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:19
-- Luau version 6, Types version 3
-- Time taken: 0.009244 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local UIBlox = require(Parent.UIBlox)
local useAnalytics_upvr = require(Parent_2.Analytics.useAnalytics)
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useScreenSize_upvr = require(Parent.RobloxAppHooks).useScreenSize
local React_upvr = require(Parent.React)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local EventNames_upvr = require(Parent_2.Analytics.EventNames)
local getCaptureSize_upvr = require(Parent_2.Utils.getCaptureSize)
local ShareCapturePromptFinished_upvr = require(Parent_2.Thunks.ShareCapturePromptFinished)
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("CaptureServiceContentObjectEnabled")
local getCropSize_upvr = require(Parent.CapturesCommon).Utils.getCropSize
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
return function(arg1) -- Line 37
	--[[ Upvalues[12]:
		[1]: useAnalytics_upvr (readonly)
		[2]: useDispatch_upvr (readonly)
		[3]: useScreenSize_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: useLocalization_upvr (readonly)
		[6]: EventNames_upvr (readonly)
		[7]: getCaptureSize_upvr (readonly)
		[8]: ShareCapturePromptFinished_upvr (readonly)
		[9]: ButtonType_upvr (readonly)
		[10]: game_GetEngineFeature_result1_upvr (readonly)
		[11]: getCropSize_upvr (readonly)
		[12]: InteractiveAlert_upvr (readonly)
	]]
	local useAnalytics_upvr_result1_upvr = useAnalytics_upvr()
	local var6_result1_upvr = useDispatch_upvr()
	local var7_result1_upvr = useScreenSize_upvr()
	local any_useState_result1_upvr_4, any_useState_result2_upvr_2 = React_upvr.useState(Vector2.new(0, 0))
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(Vector2.new(200, 200))
	local any_useState_result1_upvr_3, any_useState_result2_upvr_4 = React_upvr.useState(Vector2.new(0, 0))
	local any_useState_result1_upvr_2, any_useState_result2_upvr_3 = React_upvr.useState(Vector2.new(0, 0))
	local promptData_upvr = arg1.promptData
	local content_upvr = promptData_upvr.content
	if arg1.enableInputDelayed ~= nil then
		promptData_upvr = arg1.enableInputDelayed
	else
		promptData_upvr = true
	end
	local var9_result1_upvr = useLocalization_upvr({
		bodyText = "Feature.Captures.Body.ShareCapturePrompt";
		no = "Feature.Captures.Action.NoThanks";
		title = "Feature.Captures.Title.ShareCapturePrompt";
		yes = "Feature.Captures.Action.Share";
	})
	React_upvr.useEffect(function() -- Line 57
		--[[ Upvalues[5]:
			[1]: useAnalytics_upvr_result1_upvr (readonly)
			[2]: EventNames_upvr (copied, readonly)
			[3]: getCaptureSize_upvr (copied, readonly)
			[4]: content_upvr (readonly)
			[5]: any_useState_result2_upvr (readonly)
		]]
		useAnalytics_upvr_result1_upvr.fireEvent(EventNames_upvr.ShareCapturePromptViewed)
		task.spawn(function() -- Line 60
			--[[ Upvalues[3]:
				[1]: getCaptureSize_upvr (copied, readonly)
				[2]: content_upvr (copied, readonly)
				[3]: any_useState_result2_upvr (copied, readonly)
			]]
			local var11_result1 = getCaptureSize_upvr(content_upvr)
			if var11_result1 then
				any_useState_result2_upvr(var11_result1)
			end
		end)
	end, {content_upvr})
	local any_useCallback_result1_upvr_4 = React_upvr.useCallback(function() -- Line 76
		--[[ Upvalues[5]:
			[1]: useAnalytics_upvr_result1_upvr (readonly)
			[2]: EventNames_upvr (copied, readonly)
			[3]: var6_result1_upvr (readonly)
			[4]: ShareCapturePromptFinished_upvr (copied, readonly)
			[5]: arg1 (readonly)
		]]
		useAnalytics_upvr_result1_upvr.fireEvent(EventNames_upvr.ShareCapturePromptAccepted)
		var6_result1_upvr(ShareCapturePromptFinished_upvr(arg1.promptId, arg1.promptData, true))
	end, {arg1.promptData, arg1.promptId})
	local any_useCallback_result1_upvr_3 = React_upvr.useCallback(function() -- Line 82
		--[[ Upvalues[5]:
			[1]: useAnalytics_upvr_result1_upvr (readonly)
			[2]: EventNames_upvr (copied, readonly)
			[3]: var6_result1_upvr (readonly)
			[4]: ShareCapturePromptFinished_upvr (copied, readonly)
			[5]: arg1 (readonly)
		]]
		useAnalytics_upvr_result1_upvr.fireEvent(EventNames_upvr.ShareCapturePromptRejected)
		var6_result1_upvr(ShareCapturePromptFinished_upvr(arg1.promptId, arg1.promptData, false))
	end, {arg1.promptData, arg1.promptId})
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function(arg1_4) -- Line 88
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr_3 (readonly)
		]]
		any_useState_result2_upvr_3(arg1_4.Resolution)
	end, {any_useState_result2_upvr_3})
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_3) -- Line 72
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr_4 (readonly)
		]]
		any_useState_result2_upvr_4(arg1_3.AbsoluteSize)
	end, {any_useState_result2_upvr_4})
	return React_upvr.createElement(InteractiveAlert_upvr, {
		bodyText = var9_result1_upvr.bodyText;
		buttonStackInfo = React_upvr.useMemo(function() -- Line 92
			--[[ Upvalues[5]:
				[1]: any_useCallback_result1_upvr_3 (readonly)
				[2]: var9_result1_upvr (readonly)
				[3]: ButtonType_upvr (copied, readonly)
				[4]: promptData_upvr (readonly)
				[5]: any_useCallback_result1_upvr_4 (readonly)
			]]
			return {
				buttons = {{
					props = {
						onActivated = any_useCallback_result1_upvr_3;
						text = var9_result1_upvr.no;
					};
					isDefaultChild = true;
				}, {
					buttonType = ButtonType_upvr.PrimarySystem;
					props = {
						delayInputSeconds = 2;
						enableInputDelayed = promptData_upvr;
						isDelayedInput = promptData_upvr;
						onActivated = any_useCallback_result1_upvr_4;
						text = var9_result1_upvr.yes;
					};
					isDefaultChild = false;
				}};
			}
		end, {var9_result1_upvr, any_useCallback_result1_upvr_4, any_useCallback_result1_upvr_3});
		isMiddleContentFocusable = false;
		middleContent = React_upvr.useCallback(function() -- Line 117
			--[[ Upvalues[11]:
				[1]: any_useState_result1_upvr_4 (readonly)
				[2]: any_useState_result1_upvr_3 (readonly)
				[3]: var7_result1_upvr (readonly)
				[4]: any_useState_result1_upvr (readonly)
				[5]: game_GetEngineFeature_result1_upvr (copied, readonly)
				[6]: content_upvr (readonly)
				[7]: React_upvr (copied, readonly)
				[8]: any_useCallback_result1_upvr (readonly)
				[9]: getCropSize_upvr (copied, readonly)
				[10]: any_useState_result1_upvr_2 (readonly)
				[11]: any_useCallback_result1_upvr_2 (readonly)
			]]
			local var79 = (var7_result1_upvr.Y - 80) - (any_useState_result1_upvr_4.Y - any_useState_result1_upvr_3.Y)
			local var80 = (any_useState_result1_upvr_3.X) / (any_useState_result1_upvr.X / any_useState_result1_upvr.Y)
			local var81
			if var80 < var79 then
				var79 = var80
			end
			local var82 = game_GetEngineFeature_result1_upvr
			if var82 then
				var82 = false
				if typeof(content_upvr) == "Content" then
					var82 = false
					if content_upvr.Object ~= nil then
						var82 = content_upvr.Object:IsA("VideoCapture")
					end
				end
			end
			local module_3 = {
				BackgroundTransparency = 1;
				ClipsDescendants = game_GetEngineFeature_result1_upvr;
			}
			var81 = 1
			module_3.Size = UDim2.new(var81, 0, 0, var79)
			var81 = React_upvr.Change
			var81 = any_useCallback_result1_upvr
			module_3[var81.AbsoluteSize] = var81
			local module_2 = {}
			local var85
			if not var82 then
				var81 = React_upvr.createElement
				local tbl = {}
				var85 = Vector2.new(0.5, 0.5)
				tbl.AnchorPoint = var85
				var85 = 1
				tbl.BackgroundTransparency = var85
				if game_GetEngineFeature_result1_upvr then
					var85 = nil
				else
					var85 = content_upvr
				end
				tbl.Image = var85
				if game_GetEngineFeature_result1_upvr then
				else
				end
				tbl.ImageContent = nil
				tbl.Position = UDim2.fromScale(0.5, 0.5)
				tbl.ScaleType = Enum.ScaleType.Fit
				tbl.Size = UDim2.fromScale(1, 1)
				var81 = var81("ImageLabel", tbl)
			else
				var81 = nil
			end
			module_2.CaptureImage = var81
			if var82 then
				local tbl_6 = {
					AnchorPoint = Vector2.new(0.5, 0.5);
					BackgroundTransparency = 1;
					Looped = true;
					Playing = true;
					Position = UDim2.fromScale(0.5, 0.5);
					Size = getCropSize_upvr(any_useState_result1_upvr_3, any_useState_result1_upvr_2);
					VideoContent = content_upvr;
					Volume = 0;
					[React_upvr.Event.Loaded] = any_useCallback_result1_upvr_2;
				}
			else
			end
			module_2.CaptureVideo = nil
			return React_upvr.createElement("Frame", module_3, module_2)
		end, {any_useState_result1_upvr_4, any_useState_result1_upvr, content_upvr, any_useState_result1_upvr_3, any_useCallback_result1_upvr_2, any_useState_result1_upvr_2});
		onAbsoluteSizeChanged = React_upvr.useCallback(function(arg1_2) -- Line 68
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr_2 (readonly)
			]]
			any_useState_result2_upvr_2(arg1_2.AbsoluteSize)
		end, {any_useState_result2_upvr_2});
		position = UDim2.fromScale(0.5, 0.5);
		screenSize = var7_result1_upvr;
		title = var9_result1_upvr.title;
	})
end