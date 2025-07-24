-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:25
-- Luau version 6, Types version 3
-- Time taken: 0.002376 seconds

local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.Packages.UIBlox)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local React_upvr = require(CorePackages.Packages.React)
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local Button_upvr = UIBlox.App.Button.Button
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local StandardButtonSize_upvr = UIBlox.App.Button.Enum.StandardButtonSize
return function(arg1) -- Line 17, Named "SelectInSceneReportMenu"
	--[[ Upvalues[7]:
		[1]: useStyle_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: StyledTextLabel_upvr (readonly)
		[4]: RobloxTranslator_upvr (readonly)
		[5]: Button_upvr (readonly)
		[6]: ButtonType_upvr (readonly)
		[7]: StandardButtonSize_upvr (readonly)
	]]
	local var3_result1 = useStyle_upvr()
	return React_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		AutomaticSize = Enum.AutomaticSize.Y;
		Size = UDim2.new(1, 0, 0, 0);
	}, {
		Layout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			SortOrder = Enum.SortOrder.LayoutOrder;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			Padding = UDim.new(0, 30);
		});
		Padding = React_upvr.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 15);
		});
		Title = React_upvr.createElement(StyledTextLabel_upvr, {
			text = RobloxTranslator_upvr:FormatByKey("Feature.ReportAbuse.Heading.ReportUsingSelectInScene");
			fontStyle = var3_result1.Font.Header1;
			colorStyle = var3_result1.Theme.TextEmphasis;
			layoutOrder = 0;
			automaticSize = Enum.AutomaticSize.XY;
		});
		SubheadingFrame = React_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			AutomaticSize = Enum.AutomaticSize.XY;
			Position = UDim2.new(0.5, 0, 0, 0);
			AnchorPoint = Vector2.new(0.5, 0);
			LayoutOrder = 1;
		}, {
			Layout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical;
				SortOrder = Enum.SortOrder.LayoutOrder;
				Padding = UDim.new(0, 30);
			});
			Subheading1 = React_upvr.createElement(StyledTextLabel_upvr, {
				text = "• "..RobloxTranslator_upvr:FormatByKey("Feature.ReportAbuse.Label.SelectInSceneDescription1");
				fontStyle = var3_result1.Font.Body;
				colorStyle = var3_result1.Theme.TextEmphasis;
				layoutOrder = 0;
				automaticSize = Enum.AutomaticSize.XY;
			});
			Subheading2 = React_upvr.createElement(StyledTextLabel_upvr, {
				text = "• "..RobloxTranslator_upvr:FormatByKey("Feature.ReportAbuse.Label.SelectInSceneDescription2");
				fontStyle = var3_result1.Font.Body;
				colorStyle = var3_result1.Theme.TextEmphasis;
				layoutOrder = 1;
				automaticSize = Enum.AutomaticSize.XY;
			});
			Subheading3 = React_upvr.createElement(StyledTextLabel_upvr, {
				text = "• "..RobloxTranslator_upvr:FormatByKey("Feature.ReportAbuse.Label.SelectInSceneDescription3");
				fontStyle = var3_result1.Font.Body;
				colorStyle = var3_result1.Theme.TextEmphasis;
				layoutOrder = 2;
				automaticSize = Enum.AutomaticSize.XY;
			});
		});
		EnterSelectInSceneButton = React_upvr.createElement(Button_upvr, {
			text = RobloxTranslator_upvr:FormatByKey("Feature.ReportAbuse.Action.EnterSceneReporting");
			buttonType = ButtonType_upvr.PrimarySystem;
			standardSize = StandardButtonSize_upvr.Small;
			layoutOrder = 2;
			position = UDim2.new(0.5, 0, 0, 0);
			anchorPoint = Vector2.new(0.5, 0);
			fitContent = true;
			onActivated = function() -- Line 83, Named "onActivated"
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				local ExperienceStateCaptureService_upvr = game:GetService("ExperienceStateCaptureService")
				if game:GetEngineFeature("ExperienceStateCaptureIsInBackground") then
					local var25_upvw
					var25_upvw = ExperienceStateCaptureService_upvr:GetPropertyChangedSignal("IsInBackground"):Connect(function() -- Line 90
						--[[ Upvalues[3]:
							[1]: var25_upvw (read and write)
							[2]: ExperienceStateCaptureService_upvr (readonly)
							[3]: arg1 (copied, readonly)
						]]
						if not var25_upvw.Connected then
						elseif not ExperienceStateCaptureService_upvr.IsInBackground then
							arg1.hideReportTab()
							var25_upvw:Disconnect()
						end
					end)
				end
				game:GetService("SafetyService").IsCaptureModeForReport = true
				ExperienceStateCaptureService_upvr:ToggleCaptureMode()
			end;
		});
	})
end