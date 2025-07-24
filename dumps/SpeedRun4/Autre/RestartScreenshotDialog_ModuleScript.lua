-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:47
-- Luau version 6, Types version 3
-- Time taken: 0.003125 seconds

local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.Packages.UIBlox)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local React_upvr = require(CorePackages.Packages.React)
local HeaderBar_upvr = UIBlox.App.Bar.HeaderBar
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local Divider_upvr = require(script.Parent.Parent.Components.Divider)
local ButtonStack_upvr = UIBlox.App.Button.ButtonStack
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
return function(arg1) -- Line 26, Named "RestartScreenshotDialog"
	--[[ Upvalues[7]:
		[1]: useStyle_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: HeaderBar_upvr (readonly)
		[4]: RobloxTranslator_upvr (readonly)
		[5]: Divider_upvr (readonly)
		[6]: ButtonStack_upvr (readonly)
		[7]: ButtonType_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 29 start (CF ANALYSIS FAILED)
	local useStyle_upvr_result1 = useStyle_upvr()
	local Theme = useStyle_upvr_result1.Theme
	local Font = useStyle_upvr_result1.Font
	local var13 = 48
	local var14 = 180
	local var15 = 50
	local var16
	if var16 then
		var13 = 84
		var14 = 260
		var15 = 100
	end
	if arg1.isSmallPortraitMode then
		var16 = 343
	else
		var16 = 480
	end
	local _ = {
		Size = UDim2.new(0, var16, 0, var14);
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.new(0.5, 0, 0.5, 0);
		BackgroundColor3 = Color3.fromHex("#4F545F");
		ZIndex = 5;
	}
	;({
		Corner = React_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0, 8);
		});
	}).HeaderAndContent = React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
	}, {
		Layout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
		Header = React_upvr.createElement(HeaderBar_upvr, {
			backgroundTransparency = 1;
			barHeight = 48;
			renderLeft = function() -- Line 63, Named "renderLeft"
			end;
			renderRight = function() -- Line 65, Named "renderRight"
			end;
			title = RobloxTranslator_upvr:FormatByKey("Feature.ReportAbuse.Action.RetakeScene");
			LayoutOrder = 1;
		});
		Divider = React_upvr.createElement(Divider_upvr, {
			LayoutOrder = 2;
		});
		Description = React_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, -var13 - 1);
			BackgroundTransparency = 1;
			LayoutOrder = 3;
		}, {
			Padding = React_upvr.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 8);
				PaddingBottom = UDim.new(0, 8);
				PaddingLeft = UDim.new(0, 16);
				PaddingRight = UDim.new(0, 16);
			});
			TextBody = React_upvr.createElement("TextLabel", {
				Text = RobloxTranslator_upvr:FormatByKey("Feature.ReportAbuse.Message.RetakeScene");
				Font = Font.Body.Font;
				LayoutOrder = 3;
				TextColor3 = Theme.TextEmphasis.Color;
				TextTransparency = Theme.TextEmphasis.Transparency;
				TextSize = 16;
				TextWrapped = true;
				TextXAlignment = Enum.TextXAlignment.Left;
				TextYAlignment = Enum.TextYAlignment.Top;
				Size = UDim2.new(1, 0, 0, var15);
				BackgroundTransparency = 1;
			});
		});
	})
	local tbl = {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 0, var13);
		Position = UDim2.new(0, 0, 1, -var13);
		BorderSizePixel = 0;
		LayoutOrder = 4;
	}
	;({}).Padding = React_upvr.createElement("UIPadding", {
		PaddingTop = UDim.new(0, 6);
		PaddingBottom = UDim.new(0, 6);
		PaddingLeft = UDim.new(0, 16);
		PaddingRight = UDim.new(0, 16);
	})
	if arg1.isSmallPortraitMode then
		-- KONSTANTWARNING: GOTO [363] #260
	end
	-- KONSTANTERROR: [0] 1. Error Block 29 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [361] 259. Error Block 31 start (CF ANALYSIS FAILED)
	;({}).forcedFillDirection = Enum.FillDirection.Horizontal
	;({}).buttonType = ButtonType_upvr.Secondary
	if arg1.isSmallPortraitMode then
		local _ = {
			onActivated = arg1.onCancel;
			text = RobloxTranslator_upvr:FormatByKey("InGame.InspectMenu.Action.Cancel");
			size = UDim2.new(1, 0, 0, 28);
			fontStyle = Font.Body2;
		}
		-- KONSTANTWARNING: GOTO [414] #294
	end
	-- KONSTANTERROR: [361] 259. Error Block 31 end (CF ANALYSIS FAILED)
end