-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:13:00
-- Luau version 6, Types version 3
-- Time taken: 0.002399 seconds

local Parent = script:FindFirstAncestor("InGameAssetReporting").Parent
local UIBlox = require(Parent.UIBlox)
local tbl_upvr = {
	stiffness = 400;
	damping = 40;
	mass = 1;
}
local React_upvr = require(Parent.React)
local ReactOtter_upvr = require(Parent.ReactOtter)
local withLocalization_upvr = require(Parent.Localization).withLocalization
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
return function(arg1) -- Line 24, Named "InGameAssetReportErrorModal"
	--[[ Upvalues[6]:
		[1]: React_upvr (readonly)
		[2]: ReactOtter_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: withLocalization_upvr (readonly)
		[5]: InteractiveAlert_upvr (readonly)
		[6]: ButtonType_upvr (readonly)
	]]
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(true)
	local any_useAnimatedBinding_result1_upvr, any_useAnimatedBinding_result2_upvr = ReactOtter_upvr.useAnimatedBinding(1, function() -- Line 27
		--[[ Upvalues[2]:
			[1]: any_useState_result1_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		if not any_useState_result1_upvr then
			arg1.onBack()
		end
	end)
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 34
		--[[ Upvalues[1]:
			[1]: any_useState_result1_upvr (readonly)
		]]
		if any_useState_result1_upvr then
			return 0
		end
		return 1
	end, {any_useState_result1_upvr})
	React_upvr.useEffect(function() -- Line 38
		--[[ Upvalues[4]:
			[1]: any_useAnimatedBinding_result2_upvr (readonly)
			[2]: ReactOtter_upvr (copied, readonly)
			[3]: any_useMemo_result1_upvr (readonly)
			[4]: tbl_upvr (copied, readonly)
		]]
		any_useAnimatedBinding_result2_upvr(ReactOtter_upvr.spring(any_useMemo_result1_upvr, tbl_upvr))
	end, {any_useMemo_result1_upvr})
	local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 42
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr (readonly)
		]]
		any_useState_result2_upvr(false)
	end, {any_useState_result2_upvr})
	return withLocalization_upvr({
		errorTitle = "Feature.ReportAbuse.Heading.SelectInSceneErrorTitle";
		errorDescription = "Feature.ReportAbuse.Label.SelectInSceneErrorDescription";
		errorBack = "Feature.ReportAbuse.Action.ErrorModalGoBack";
	})(function(arg1_2) -- Line 50
		--[[ Upvalues[6]:
			[1]: React_upvr (copied, readonly)
			[2]: any_useAnimatedBinding_result1_upvr (readonly)
			[3]: any_useCallback_result1_upvr (readonly)
			[4]: InteractiveAlert_upvr (copied, readonly)
			[5]: arg1 (readonly)
			[6]: ButtonType_upvr (copied, readonly)
		]]
		return React_upvr.createElement("TextButton", {
			AutoButtonColor = false;
			BorderSizePixel = 0;
			BackgroundTransparency = any_useAnimatedBinding_result1_upvr:map(function(arg1_3) -- Line 54
				return arg1_3 + 0.3
			end);
			BackgroundColor3 = Color3.fromHex("#000000");
			Size = UDim2.new(1, 0, 1, 0);
			Text = "";
			Position = UDim2.fromScale(0.5, 0.5);
			AnchorPoint = Vector2.new(0.5, 0.5);
			[React_upvr.Event.Activated] = any_useCallback_result1_upvr;
			ZIndex = 10;
		}, {
			Alert = React_upvr.createElement(InteractiveAlert_upvr, {
				screenSize = arg1.screenSize;
				title = arg1_2.errorTitle;
				bodyText = arg1_2.errorDescription;
				anchorPoint = Vector2.new(0.5, 0.5);
				position = any_useAnimatedBinding_result1_upvr:map(function(arg1_4) -- Line 70
					return UDim2.new(0.5, 0, 0.5, 0):Lerp(UDim2.new(0.5, 0, -0.5, 0), arg1_4)
				end);
				buttonStackInfo = {
					buttons = {{
						buttonType = ButtonType_upvr.PrimarySystem;
						props = {
							onActivated = any_useCallback_result1_upvr;
							text = arg1_2.errorBack;
						};
					}};
				};
			});
		})
	end)
end