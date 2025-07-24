-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:58:13
-- Luau version 6, Types version 3
-- Time taken: 0.003385 seconds

local CorePackages = game:GetService("CorePackages")
local Modules = game:GetService("CoreGui").RobloxGui.Modules
local UIBlox = require(CorePackages.Packages.UIBlox)
local useNavigation_upvr = require(CorePackages.Workspace.Packages.Navigation).useNavigation
local useLocalization_upvr = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization
local useDesignTokens_upvr = require(CorePackages.Workspace.Packages.Style).useDesignTokens
local useStyle_upvr = UIBlox.Core.Style.useStyle
local React_upvr = require(CorePackages.Packages.React)
local GlobalSettings_upvr = require(Modules.Shell.GlobalSettings)
local LocalizedStrings_upvr = require(Modules.Shell.LocalizedStrings)
local ControllerHint_upvr = require(Modules.Shell.Components.Overscan.ControllerHint)
local ButtonStack_upvr = UIBlox.App.Button.ButtonStack
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local Edges_upvr = require(script.Parent.Edges)
return function(arg1) -- Line 26, Named "Overscan"
	--[[ Upvalues[11]:
		[1]: useNavigation_upvr (readonly)
		[2]: useLocalization_upvr (readonly)
		[3]: useDesignTokens_upvr (readonly)
		[4]: useStyle_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: GlobalSettings_upvr (readonly)
		[7]: LocalizedStrings_upvr (readonly)
		[8]: ControllerHint_upvr (readonly)
		[9]: ButtonStack_upvr (readonly)
		[10]: ButtonType_upvr (readonly)
		[11]: Edges_upvr (readonly)
	]]
	local onUnmount = arg1.onUnmount
	if not onUnmount then
		onUnmount = useNavigation_upvr().goBack
	end
	local var5_result1 = useLocalization_upvr({
		accept = "CommonUI.Controls.Action.Accept";
		cancel = "CommonUI.Controls.Action.Cancel";
	})
	local var6_result1 = useDesignTokens_upvr(function(arg1_2) -- Line 36
		return {
			buttonHeight = arg1_2.Global.Size_600;
			marginBetween = arg1_2.Global.Space_150;
		}
	end)
	local var7_result1 = useStyle_upvr()
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	return React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		BorderSizePixel = 1;
		BackgroundTransparency = arg1.BackgroundTransparency;
		BackgroundColor3 = Color3.new(0.011764705882352941, 0.011764705882352941, 0.011764705882352941);
	}, {
		Title = React_upvr.createElement("TextLabel", {
			Position = UDim2.new(0, 230, 0, 205);
			BackgroundTransparency = 1;
			Font = GlobalSettings_upvr.LightFont;
			FontSize = GlobalSettings_upvr.HeaderSize;
			TextColor3 = GlobalSettings_upvr.WhiteTextColor;
			TextXAlignment = Enum.TextXAlignment.Left;
			Text = LocalizedStrings_upvr:LocalizedString("ScreenSizeWord");
		});
		Prompt = React_upvr.createElement("TextLabel", {
			Position = UDim2.new(0, 230, 0, 243);
			BackgroundTransparency = 1;
			Font = GlobalSettings_upvr.RegularFont;
			FontSize = GlobalSettings_upvr.ButtonSize;
			TextColor3 = GlobalSettings_upvr.WhiteTextColor;
			TextXAlignment = Enum.TextXAlignment.Left;
			Text = LocalizedStrings_upvr:LocalizedString("ResizeScreenPrompt");
		});
		Controller = React_upvr.createElement(ControllerHint_upvr);
		Actions = React_upvr.createElement("Frame", {
			Size = UDim2.fromScale(0.4, 0);
			AnchorPoint = Vector2.new(0.5, 1);
			Position = UDim2.new(0.5, 0, 1, -201);
		}, {React_upvr.createElement(ButtonStack_upvr, {
			buttonHeight = var6_result1.buttonHeight;
			marginBetween = var6_result1.marginBetween;
			forcedFillDirection = Enum.FillDirection.Horizontal;
			buttons = {{
				buttonType = ButtonType_upvr.Secondary;
				props = {
					text = var5_result1.cancel;
					fontStyle = var7_result1.Font.Header1;
					onActivated = onUnmount;
				};
			}, {
				buttonType = ButtonType_upvr.PrimarySystem;
				props = {
					text = var5_result1.accept;
					fontStyle = var7_result1.Font.Header1;
					onActivated = function() -- Line 107, Named "onActivated"
						--[[ Upvalues[1]:
							[1]: any_useRef_result1_upvr (readonly)
						]]
						if any_useRef_result1_upvr.current then
							any_useRef_result1_upvr.current.onAccept()
						end
					end;
				};
			}};
		})});
		EdgeSelector = React_upvr.createElement(Edges_upvr, {
			onSetEdges = onUnmount;
			ref = any_useRef_result1_upvr;
		});
		React_upvr.createElement("ImageLabel", {
			Size = UDim2.new(1, 0, 1, 0);
			BackgroundTransparency = 1;
			BackgroundColor3 = Color3.new(0.011764705882352941, 0.011764705882352941, 0.011764705882352941);
			BorderSizePixel = 1;
			Visible = arg1.ImageVisible;
			Image = "rbxasset://textures/ui/Shell/ScreenAdjustment/Background.png";
		})
	})
end