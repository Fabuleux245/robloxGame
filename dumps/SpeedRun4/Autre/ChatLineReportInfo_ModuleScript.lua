-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:23:17
-- Luau version 6, Types version 3
-- Time taken: 0.002396 seconds

local ChatLineReporting = script:FindFirstAncestor("ChatLineReporting")
local Parent = ChatLineReporting.Parent
local Foundation = require(Parent.Foundation)
local tbl_upvr = {
	stiffness = 400;
	damping = 40;
	mass = 1;
	restingPositionLimit = 0.5;
	restingVelocityLimit = 0.1;
}
local useTokens_upvr = Foundation.Hooks.useTokens
local React_upvr = require(Parent.React)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local Constants_upvr = require(ChatLineReporting.Common.Constants)
local ReactOtter_upvr = require(Parent.ReactOtter)
local View_upvr = Foundation.View
return function(arg1) -- Line 30, Named "ChatLineReportInfo"
	--[[ Upvalues[7]:
		[1]: useTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: useLocalization_upvr (readonly)
		[4]: Constants_upvr (readonly)
		[5]: ReactOtter_upvr (readonly)
		[6]: tbl_upvr (readonly)
		[7]: View_upvr (readonly)
	]]
	local var5_result1 = useTokens_upvr()
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(false)
	React_upvr.useEffect(function() -- Line 36
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		any_useState_result2_upvr(arg1.visible)
	end, {arg1.visible})
	local any_useAnimatedBinding_result1, any_useAnimatedBinding_result2_upvr = ReactOtter_upvr.useAnimatedBinding(1, function() -- Line 40
	end)
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 42
		--[[ Upvalues[1]:
			[1]: any_useState_result1_upvr (readonly)
		]]
		if any_useState_result1_upvr then
			return 0
		end
		return 1
	end, {any_useState_result1_upvr})
	React_upvr.useEffect(function() -- Line 46
		--[[ Upvalues[4]:
			[1]: any_useAnimatedBinding_result2_upvr (readonly)
			[2]: ReactOtter_upvr (copied, readonly)
			[3]: any_useMemo_result1_upvr (readonly)
			[4]: tbl_upvr (copied, readonly)
		]]
		any_useAnimatedBinding_result2_upvr(ReactOtter_upvr.spring(any_useMemo_result1_upvr, tbl_upvr))
	end, {any_useMemo_result1_upvr})
	return React_upvr.createElement("TextButton", {
		Active = any_useAnimatedBinding_result1:map(function(arg1_2) -- Line 51
			if arg1_2 ~= 0 then
			else
			end
			return true
		end);
		AutoButtonColor = false;
		BorderSizePixel = 0;
		BackgroundTransparency = 1;
		Text = "";
		Size = UDim2.new(1, 0, 1, 0);
		[React_upvr.Event.Activated] = function() -- Line 59
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr (readonly)
			]]
			any_useState_result2_upvr(false)
		end;
		ZIndex = any_useAnimatedBinding_result1:map(function(arg1_3) -- Line 63
			return (1 - arg1_3) * 4
		end);
	}, {
		InfoTextFrame = React_upvr.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y;
			BackgroundTransparency = 1;
			Size = any_useAnimatedBinding_result1:map(function(arg1_4) -- Line 71
				return UDim2.new(1, 0, 0, 60):Lerp(UDim2.new(1, 0, 0, 0), arg1_4)
			end);
			ClipsDescendants = true;
			ZIndex = 2;
		}, {
			InfoTextContainer = React_upvr.createElement(View_upvr, {
				Size = UDim2.new(1, 0, 1, -8);
				tag = "bg-over-media-0 radius-medium anchor-bottom-left position-bottom-left";
			}, {
				InfoText = React_upvr.createElement("TextLabel", {
					BackgroundTransparency = 1;
					Font = var5_result1.Typography.BodySmall.Font;
					Text = useLocalization_upvr(Constants_upvr.ChatLineLocalizationKeys).InfoTextKey;
					TextColor3 = var5_result1.Color.Content.Default.Color3;
					TextSize = var5_result1.Typography.BodySmall.FontSize;
					TextWrapped = true;
					Size = UDim2.new(1, 0, 1, 0);
				});
			});
		});
	})
end