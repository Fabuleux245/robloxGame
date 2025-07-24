-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:46:20
-- Luau version 6, Types version 3
-- Time taken: 0.018900 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local Parent = script.Parent
local Parent_2 = Parent.Parent
local Roact_upvr = require(Parent_2.Roact)
local Flags = require(script.Parent.Flags)
local UIBlox_upvr = require(Parent_2.UIBlox)
local Images = UIBlox_upvr.App.ImageSet.Images
local any_GetFFlagEnableReportAdDropdown_result1_upvr = Flags.GetFFlagEnableReportAdDropdown()
local var8_upvr
if any_GetFFlagEnableReportAdDropdown_result1_upvr then
	var8_upvr = require(Parent.ReportAdPopup)
else
	var8_upvr = nil
end
if any_GetFFlagEnableReportAdDropdown_result1_upvr then
else
end
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("AdsInteractivityControls")
local function _(arg1) -- Line 39, Named "opacityToTransparency"
	return 1 - arg1
end
local function _(arg1) -- Line 46, Named "getAdornee"
	if arg1 == nil then
		return nil
	end
	if arg1.Adornee ~= nil then
		return arg1.Adornee
	end
	if arg1.Parent ~= nil and arg1.Parent:IsA("BasePart") then
		return arg1.Parent
	end
	return nil
end
local FadeController_upvr = require(Parent.FadeController)
function any_extend_result1_upvr.init(arg1) -- Line 61
	--[[ Upvalues[2]:
		[1]: FadeController_upvr (readonly)
		[2]: Roact_upvr (readonly)
	]]
	if game:GetEngineFeature("DeprecateCpv15") then
		arg1.state = {
			adUIType = Enum.AdUIType.None;
			adGuiRectStuds = Vector2.new(0, 0);
			isViewable = false;
			videoPlaying = false;
			isFullscreen = false;
			eudsaPromptActive = false;
			isDropDownOpen = false;
			isReportAdPopupOpen = false;
			hideLivePreviewWatermark = false;
		}
	else
		arg1.state = {
			adUIType = Enum.AdUIType.None;
			adGuiRectStuds = Vector2.new(0, 0);
			isViewable = false;
			videoPlaying = false;
			isFullscreen = false;
			isClickToPlay = false;
			eudsaPromptActive = false;
			isDropDownOpen = false;
			isReportAdPopupOpen = false;
			hideLivePreviewWatermark = false;
		}
	end
	local function onAdorneeChanged() -- Line 89
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_2 = {}
		local adGui_3 = arg1.props.adGui
		local var15
		if adGui_3 == nil then
			var15 = nil
		elseif adGui_3.Adornee ~= nil then
			var15 = adGui_3.Adornee
		elseif adGui_3.Parent ~= nil and adGui_3.Parent:IsA("BasePart") then
			var15 = adGui_3.Parent
		else
			var15 = nil
		end
		tbl_2.adornee = var15
		arg1:setState(tbl_2)
	end
	arg1.signalConnections = {arg1.props.adGui:GetPropertyChangedSignal("Adornee"):Connect(onAdorneeChanged), arg1.props.adGui:GetPropertyChangedSignal("Parent"):Connect(onAdorneeChanged)}
	arg1.props.adGui.adGuiStateChanged:Connect(function(arg1_2) -- Line 100
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState(arg1_2)
	end)
	arg1.fadeController = FadeController_upvr.new()
	local any_createBinding_result1, any_createBinding_result2 = Roact_upvr.createBinding(1)
	arg1.controlsOpacity = any_createBinding_result1
	arg1.updateControlsOpacity = any_createBinding_result2
	arg1.fadeController:subscribe(function(arg1_3) -- Line 107
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.updateControlsOpacity(arg1_3)
	end)
	arg1.props.adGui:forwardStateToLuaUI()
end
function any_extend_result1_upvr.willUnmount(arg1) -- Line 114
	for _, v in ipairs(arg1.signalConnections) do
		v:Disconnect()
	end
end
local icons_controls_media_pause_large_upvw = Images["icons/controls/media-pause-large"]
local icons_controls_media_play_large_upvr = Images["icons/controls/media-play-large"]
local icons_controls_speaker_upvr = Images["icons/controls/speaker"]
local icons_controls_speakerMute_upvr = Images["icons/controls/speakerMute"]
local icons_actions_previewShrink_upvr = Images["icons/actions/previewShrink"]
local icons_actions_previewExpand_upvr = Images["icons/actions/previewExpand"]
local any_GetAdGuiInteractivityPixelsPerStud_result1_upvr = Flags.GetAdGuiInteractivityPixelsPerStud()
local AdsInteractivityTelemetry_upvr = require(Parent.AdsInteractivityTelemetry)
local any_GetEnableHideReportAdModalDuringScreenshot_result1_upvr = Flags.GetEnableHideReportAdModalDuringScreenshot()
local var35_upvr
local AdLabel_upvr = require(Parent.AdLabel)
local CircularButton_upvr = require(Parent.CircularButton)
local icons_navigation_close_upvr = Images["icons/navigation/close"]
local ImageSetLabel_upvr = UIBlox_upvr.Core.ImageSet.ImageSetLabel
local component_assets_circle_42_stroke_3_upvr = Images["component_assets/circle_42_stroke_3"]
local LivePreviewWatermark_upvr = require(Parent.LivePreviewWatermark)
function any_extend_result1_upvr.render(arg1) -- Line 120
	--[[ Upvalues[19]:
		[1]: icons_controls_media_pause_large_upvw (readonly)
		[2]: icons_controls_media_play_large_upvr (readonly)
		[3]: icons_controls_speaker_upvr (readonly)
		[4]: icons_controls_speakerMute_upvr (readonly)
		[5]: icons_actions_previewShrink_upvr (readonly)
		[6]: icons_actions_previewExpand_upvr (readonly)
		[7]: Roact_upvr (readonly)
		[8]: any_GetFFlagEnableReportAdDropdown_result1_upvr (readonly)
		[9]: any_GetAdGuiInteractivityPixelsPerStud_result1_upvr (readonly)
		[10]: AdsInteractivityTelemetry_upvr (readonly)
		[11]: var8_upvr (readonly)
		[12]: any_GetEnableHideReportAdModalDuringScreenshot_result1_upvr (readonly)
		[13]: var35_upvr (readonly)
		[14]: AdLabel_upvr (readonly)
		[15]: CircularButton_upvr (readonly)
		[16]: icons_navigation_close_upvr (readonly)
		[17]: ImageSetLabel_upvr (readonly)
		[18]: component_assets_circle_42_stroke_3_upvr (readonly)
		[19]: LivePreviewWatermark_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 173 start (CF ANALYSIS FAILED)
	local var73_upvr
	if not var73_upvr then
		var73_upvr = nil
		return var73_upvr
	end
	if arg1.state.adUIType ~= Enum.AdUIType.Video then
		var73_upvr = false
	else
		var73_upvr = true
	end
	if arg1.state.adUIType ~= Enum.AdUIType.None then
	else
	end
	if game:GetEngineFeature("DeprecateCpv15") then
		if var73_upvr and arg1.state.isFullscreen then
			if arg1.state.videoPlaying then
				local _ = icons_controls_media_pause_large_upvw
			else
			end
			-- KONSTANTWARNING: GOTO [84] #57
		end
	elseif var73_upvr then
		if arg1.state.isFullscreen and not arg1.state.videoPlaying or arg1.state.isClickToPlay and not arg1.state.isFullscreen then
		elseif arg1.state.isFullscreen and arg1.state.videoPlaying then
		end
	end
	if var73_upvr then
	end
	local var75
	if var75 then
		var75 = var73_upvr
		if var75 then
			var75 = not arg1.state.isFullscreen
			if var75 then
				var75 = arg1.state.videoPlaying
			end
		end
	elseif var73_upvr then
		if not arg1.state.isFullscreen then
			if not arg1.state.isClickToPlay then
			end
		end
	end
	if not arg1.state.volumeEnabled or not icons_controls_speaker_upvr then
	end
	if not arg1.state.isFullscreen or not icons_actions_previewShrink_upvr then
	end
	if not arg1.state.isFullscreen then
	end
	local function _(arg1_14) -- Line 166
		--[[ Upvalues[2]:
			[1]: icons_controls_media_pause_large_upvw (read and write)
			[2]: icons_controls_media_play_large_upvr (copied, readonly)
		]]
		if icons_controls_media_pause_large_upvw == icons_controls_media_play_large_upvr then
			return true
		end
		local var77 = false
		if icons_controls_media_pause_large_upvw ~= nil then
			var77 = arg1_14
			if var77 then
				if 0 >= arg1_14 then
					var77 = false
				else
					var77 = true
				end
			end
		end
		return var77
	end
	if not arg1.state.isViewable then
	end
	local function _(arg1_15) -- Line 177
		--[[ Upvalues[2]:
			[1]: icons_controls_media_pause_large_upvw (read and write)
			[2]: icons_controls_media_play_large_upvr (copied, readonly)
		]]
		if icons_controls_media_pause_large_upvw == icons_controls_media_play_large_upvr then
			return 0.19999999999999996
		end
		return 1 - arg1_15 * 0.8
	end
	local tbl_3 = {}
	local var80 = 1
	tbl_3.ZOffset = var80
	if any_GetFFlagEnableReportAdDropdown_result1_upvr then
		var80 = Enum.ZIndexBehavior.Sibling
	else
		var80 = Enum.ZIndexBehavior.Global
	end
	tbl_3.ZIndexBehavior = var80
	tbl_3.LightInfluence = 0
	tbl_3.SizingMode = Enum.SurfaceGuiSizingMode.PixelsPerStud
	tbl_3.PixelsPerStud = any_GetAdGuiInteractivityPixelsPerStud_result1_upvr
	local adGui_2 = arg1.props.adGui
	if adGui_2 == nil then
	elseif adGui_2.Adornee ~= nil then
	elseif adGui_2.Parent ~= nil and adGui_2.Parent:IsA("BasePart") then
	else
	end
	tbl_3.Adornee = nil
	tbl_3.Face = arg1.props.adGui.Face
	tbl_3.AlwaysOnTop = arg1.state.isFullscreen
	tbl_3.Brightness = 2
	local tbl_9 = {
		Size = UDim2.fromOffset(arg1.state.adGuiRectStuds.X * any_GetAdGuiInteractivityPixelsPerStud_result1_upvr, arg1.state.adGuiRectStuds.Y * any_GetAdGuiInteractivityPixelsPerStud_result1_upvr);
		Position = UDim2.new(0.5, 0, 0.5, 0);
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = Color3.new(0, 0, 0);
		BackgroundTransparency = arg1.controlsOpacity:map(function(arg1_16) -- Line 204
			--[[ Upvalues[2]:
				[1]: icons_controls_media_pause_large_upvw (read and write)
				[2]: icons_controls_media_play_large_upvr (copied, readonly)
			]]
			if icons_controls_media_pause_large_upvw == icons_controls_media_play_large_upvr then
				return 0.7
			end
			return 1 - arg1_16 * 0.3
		end);
		Text = "";
		[Roact_upvr.Event.MouseMoved] = function(arg1_17, arg2) -- Line 213
			--[[ Upvalues[2]:
				[1]: var73_upvr (readonly)
				[2]: arg1 (readonly)
			]]
			if var73_upvr and arg1.state.isFullscreen then
				arg1.fadeController:updateLastInputTime()
			end
		end;
		[Roact_upvr.Event.Activated] = function(arg1_18, arg2) -- Line 218
			--[[ Upvalues[4]:
				[1]: any_GetFFlagEnableReportAdDropdown_result1_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: AdsInteractivityTelemetry_upvr (copied, readonly)
				[4]: var73_upvr (readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [2] 3. Error Block 2 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [2] 3. Error Block 2 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [8] 7. Error Block 3 start (CF ANALYSIS FAILED)
			arg1:setState({
				isDropDownOpen = false;
			})
			arg1.props.adGui:HandleLuaUIEvent(Enum.AdUIEventType.PlayEventTriggered)
			arg1.props.adGui:HandleLuaUIEvent(Enum.AdUIEventType.PlayButtonClicked)
			AdsInteractivityTelemetry_upvr.logAdMenuEvent("close")
			do
				return
			end
			-- KONSTANTERROR: [8] 7. Error Block 3 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [43] 31. Error Block 4 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [43] 31. Error Block 4 end (CF ANALYSIS FAILED)
		end;
	}
	-- KONSTANTERROR: [0] 1. Error Block 173 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [344] 237. Error Block 71 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [344] 237. Error Block 71 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [346] 239. Error Block 72 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [346] 239. Error Block 72 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [386] 267. Error Block 78 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [386] 267. Error Block 78 end (CF ANALYSIS FAILED)
end
local AppStyleProvider_upvr = UIBlox_upvr.App.Style.AppStyleProvider
if require(Parent_2.SharedFlags).FFlagInExperienceUseAppStyleProvider then
	return function(arg1) -- Line 427, Named "AdsInteractivityFunctionalWrapper"
		--[[ Upvalues[4]:
			[1]: UIBlox_upvr (readonly)
			[2]: Roact_upvr (readonly)
			[3]: AppStyleProvider_upvr (readonly)
			[4]: any_extend_result1_upvr (readonly)
		]]
		return Roact_upvr.createElement(AppStyleProvider_upvr, {
			style = {
				themeName = UIBlox_upvr.App.Style.Constants.ThemeName.Dark;
			};
		}, {
			AdsInteractivityControls = Roact_upvr.createElement(any_extend_result1_upvr, arg1);
		})
	end
end
return any_extend_result1_upvr