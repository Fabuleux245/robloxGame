-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:45
-- Luau version 6, Types version 3
-- Time taken: 0.003214 seconds

local Parent = script:FindFirstAncestor("VirtualEvents").Parent
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local useTokens_upvr = require(Parent.Foundation).Hooks.useTokens
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local FooterCornerButtonStyle_upvr = require(Parent.GameTile).FooterCornerButtonStyle
local React_upvr = require(Parent.React)
return function(arg1) -- Line 19
	--[[ Upvalues[5]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: useTokens_upvr (readonly)
		[3]: useLocalization_upvr (readonly)
		[4]: FooterCornerButtonStyle_upvr (readonly)
		[5]: React_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var3_result1 = useDesignTokens_upvr()
	local useTokens_upvr_result1 = useTokens_upvr()
	local tbl = {
		notifyMe = "Feature.VirtualEvents.NotifyMe";
		unfollowEvent = "Feature.VirtualEvents.UnfollowEvent";
		joinEvent = "Feature.VirtualEvents.JoinEvent";
	}
	local useLocalization_upvr_result1 = useLocalization_upvr(tbl)
	tbl = var3_result1.Semantic.Color.Action.PrimaryBrand.Background.Color3
	local var12 = tbl
	local Color3 = var3_result1.Semantic.Color.Action.PrimaryBrand.Content.Color3
	local joinEvent = useLocalization_upvr_result1.joinEvent
	local var15
	if var15 == FooterCornerButtonStyle_upvr.Follow then
		var15 = useTokens_upvr_result1.Color.ActionSubEmphasis.Background
		var12 = var15.Color3
		var15 = useTokens_upvr_result1.Color.ActionSubEmphasis.Foreground
		Color3 = var15.Color3
		joinEvent = useLocalization_upvr_result1.notifyMe
	else
		var15 = arg1.buttonStyle
		if var15 == FooterCornerButtonStyle_upvr.Following then
			var15 = useTokens_upvr_result1.Color.ActionStandard.Foreground
			Color3 = var15.Color3
			joinEvent = useLocalization_upvr_result1.unfollowEvent
		end
	end
	if arg1.buttonStyle ~= FooterCornerButtonStyle_upvr.Following then
		var15 = false
	else
		var15 = true
	end
	if arg1.disabled then
		-- KONSTANTWARNING: GOTO [100] #61
	end
	local var16 = 0
	local module_2 = {
		Size = UDim2.new(1, 0, 0, var3_result1.Global.Size_350);
		Position = UDim2.new(0, 0, 1, 0);
		AnchorPoint = Vector2.new(0, 1);
		TextSize = var3_result1.Global.Size_175;
		Font = var3_result1.Semantic.Typography.Header.Font;
		BackgroundColor3 = var12;
		TextColor3 = Color3;
		AutoButtonColor = false;
		Text = joinEvent;
	}
	if var15 then
		-- KONSTANTWARNING: GOTO [163] #102
	end
	module_2.BackgroundTransparency = var16
	module_2.TextTransparency = var16
	module_2[React_upvr.Event.Activated] = arg1.onActivated
	local module = {
		EventButtonCorners = React_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0, var3_result1.Global.Space_100);
		});
	}
	if var15 then
		local _ = {
			Size = UDim2.new(1, -2, 1, -2);
			Position = UDim2.new(0, 1, 0, 1);
			BackgroundTransparency = 1;
		}
		local tbl_2 = {
			OutlineCorner = React_upvr.createElement("UICorner", {
				CornerRadius = UDim.new(0, var3_result1.Global.Space_100 - 2);
			});
			OutlineStroke = React_upvr.createElement("UIStroke", {
				Color = Color3;
				Transparency = var16;
				Thickness = 1;
			});
		}
	else
	end
	module.OutlineFrame = nil
	return React_upvr.createElement("TextButton", module_2, module)
end