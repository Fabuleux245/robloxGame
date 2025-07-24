-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:31
-- Luau version 6, Types version 3
-- Time taken: 0.005206 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local UIBlox = require(Parent.UIBlox)
local useAnalytics_upvr = require(Parent_2.Analytics.useAnalytics)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local React_upvr = require(Parent.React)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("CapturesAddLegacyVideoRecordingLogging_v2", false)
local EventNames_upvr = require(Parent_2.Analytics.EventNames)
local CoreGui_upvr = game:GetService("CoreGui")
local Button_upvr = UIBlox.App.Button.Button
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
return function(arg1) -- Line 32
	--[[ Upvalues[9]:
		[1]: useAnalytics_upvr (readonly)
		[2]: useStyle_upvr (readonly)
		[3]: useLocalization_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: game_DefineFastFlag_result1_upvr (readonly)
		[6]: EventNames_upvr (readonly)
		[7]: CoreGui_upvr (readonly)
		[8]: Button_upvr (readonly)
		[9]: ButtonType_upvr (readonly)
	]]
	local var5_result1_upvr = useAnalytics_upvr()
	local var6_result1 = useStyle_upvr()
	local var7_result1 = useLocalization_upvr({
		videoCTATitle = "Feature.Captures.Title.VideoCTA";
		videoEducationalText = "Feature.Captures.Label.VideoEducationalText";
		startRecording = "Feature.Captures.Control.StartRecordingVideo";
		stopRecording = "Feature.Captures.Control.StopRecordingVideo";
	})
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(false)
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	React_upvr.useEffect(function() -- Line 46
		--[[ Upvalues[5]:
			[1]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[2]: any_useRef_result1_upvr (readonly)
			[3]: var5_result1_upvr (readonly)
			[4]: EventNames_upvr (copied, readonly)
			[5]: any_useState_result2_upvr (readonly)
		]]
		local var22_upvw
		local Game_Options = settings():FindFirstChild("Game Options")
		if Game_Options then
			var22_upvw = Game_Options.VideoRecordingChangeRequest:connect(function(arg1_2) -- Line 50
				--[[ Upvalues[5]:
					[1]: game_DefineFastFlag_result1_upvr (copied, readonly)
					[2]: any_useRef_result1_upvr (copied, readonly)
					[3]: var5_result1_upvr (copied, readonly)
					[4]: EventNames_upvr (copied, readonly)
					[5]: any_useState_result2_upvr (copied, readonly)
				]]
				if game_DefineFastFlag_result1_upvr then
					if arg1_2 then
						any_useRef_result1_upvr.current = os.clock()
						var5_result1_upvr.fireEvent(EventNames_upvr.CapturesLegacyVideoRecordBeginSignalFired)
					else
						if any_useRef_result1_upvr.current then
							var5_result1_upvr.fireEvent(EventNames_upvr.CapturesLegacyVideoRecordingDuration, {
								statValue = os.clock() - any_useRef_result1_upvr.current;
							})
						end
						var5_result1_upvr.fireEvent(EventNames_upvr.CapturesLegacyVideoRecordEndSignalFired)
					end
				end
				any_useState_result2_upvr(arg1_2)
			end)
		end
		return function() -- Line 70
			--[[ Upvalues[1]:
				[1]: var22_upvw (read and write)
			]]
			if var22_upvw then
				var22_upvw:disconnect()
			end
		end
	end, {var5_result1_upvr.fireEvent})
	local module = {
		TextFrame = React_upvr.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y;
			BackgroundTransparency = 1;
			Size = UDim2.fromScale(0.7, 0);
		}, {
			Layout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				SortOrder = Enum.SortOrder.LayoutOrder;
				VerticalAlignment = Enum.VerticalAlignment.Top;
			});
			Title = React_upvr.createElement("TextLabel", {
				BackgroundTransparency = 1;
				Font = var6_result1.Font.Header2.Font;
				LayoutOrder = 1;
				Size = UDim2.new(1, 0, 0, 30);
				Text = var7_result1.videoCTATitle;
				TextColor3 = var6_result1.Theme.TextEmphasis.Color;
				TextSize = var6_result1.Font.BaseSize * var6_result1.Font.Header2.RelativeSize;
				TextXAlignment = Enum.TextXAlignment.Left;
			});
			EducationalLabel = React_upvr.createElement("TextLabel", {
				BackgroundTransparency = 1;
				Font = var6_result1.Font.CaptionBody.Font;
				LayoutOrder = 2;
				Size = UDim2.new(1, 0, 0, 40);
				Text = var7_result1.videoEducationalText;
				TextColor3 = var6_result1.Theme.TextDefault.Color;
				TextSize = var6_result1.Font.BaseSize * var6_result1.Font.CaptionBody.RelativeSize;
				TextWrapped = true;
				TextXAlignment = Enum.TextXAlignment.Left;
			});
		});
	}
	local tbl_2 = {}
	local tbl = {
		buttonType = ButtonType_upvr.Secondary;
		onActivated = React_upvr.useCallback(function() -- Line 77
			--[[ Upvalues[5]:
				[1]: any_useState_result1_upvr (readonly)
				[2]: arg1 (readonly)
				[3]: var5_result1_upvr (readonly)
				[4]: EventNames_upvr (copied, readonly)
				[5]: CoreGui_upvr (copied, readonly)
			]]
			if not any_useState_result1_upvr then
				arg1.closeSettingsMenu()
				var5_result1_upvr.fireEvent(EventNames_upvr.CapturesMigratedLegacyVideoRecordActivated)
			else
				var5_result1_upvr.fireEvent(EventNames_upvr.CapturesMigratedLegacyVideoRecordDeactivated)
			end
			CoreGui_upvr:ToggleRecording()
		end, {var5_result1_upvr.fireEvent, any_useState_result1_upvr, arg1.closeSettingsMenu});
	}
	local udim2 = UDim2.fromScale(1, 1)
	tbl.size = udim2
	if any_useState_result1_upvr then
		udim2 = var7_result1.stopRecording
	else
		udim2 = var7_result1.startRecording
	end
	tbl.text = udim2
	tbl_2.RecordButton = React_upvr.createElement(Button_upvr, tbl)
	module.CapturesToggleFrame = React_upvr.createElement("Frame", {
		AnchorPoint = Vector2.new(1, 0.5);
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(1, 0.5);
		Size = UDim2.fromOffset(224, 44);
	}, tbl_2)
	return React_upvr.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundColor3 = var6_result1.Theme.BackgroundDefault.Color;
		BackgroundTransparency = var6_result1.Theme.BackgroundDefault.Transparency;
		BorderSizePixel = 0;
		LayoutOrder = 3;
		Size = UDim2.fromScale(1, 0);
	}, module)
end