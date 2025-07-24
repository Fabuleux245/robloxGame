-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:46:37
-- Luau version 6, Types version 3
-- Time taken: 0.010689 seconds

local AdPlayer = script:FindFirstAncestor("AdPlayer")
if not require(AdPlayer.Flags).GetEnableLuaRewardTimerUI() then
	return nil
end
local Parent = AdPlayer.Parent
local Foundation = require(Parent.Foundation)
local tbl_upvr = {
	getRewardIn = "Features.OnDemandAds.Get_Reward_In";
	rewardEarned = "Features.OnDemandAds.Reward_Earned";
}
local function _(arg1) -- Line 37, Named "linearEaseOptions"
	local module = {}
	module.duration = arg1
	module.easingStyle = Enum.EasingStyle.Linear
	return module
end
local React_upvr = require(Parent.React)
local ReactOtter_upvr = require(Parent.ReactOtter)
local useTokens_upvr = Foundation.Hooks.useTokens
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local View_upvr = Foundation.View
local Image_upvr = Foundation.Image
local Text_upvr = Foundation.Text
local RadialProgressComponent_upvr = require(AdPlayer.components.RadialProgressComponent)
return function(arg1) -- Line 44
	--[[ Upvalues[9]:
		[1]: React_upvr (readonly)
		[2]: ReactOtter_upvr (readonly)
		[3]: useTokens_upvr (readonly)
		[4]: useLocalization_upvr (readonly)
		[5]: tbl_upvr (readonly)
		[6]: View_upvr (readonly)
		[7]: Image_upvr (readonly)
		[8]: Text_upvr (readonly)
		[9]: RadialProgressComponent_upvr (readonly)
	]]
	local any_useRef_result1_upvr_2 = React_upvr.useRef(nil)
	local any_useState_result1_upvr_3, any_useState_result2_upvr_2 = React_upvr.useState(0)
	local any_useAnimatedBinding_result1_2, any_useAnimatedBinding_result2_upvr_2 = ReactOtter_upvr.useAnimatedBinding(0)
	local any_useAnimatedBinding_result1_8, any_useAnimatedBinding_result2_upvr_3 = ReactOtter_upvr.useAnimatedBinding(0)
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local any_useState_result1_upvr, any_useState_result2_upvr_3 = React_upvr.useState(0)
	local any_useAnimatedBinding_result1_5, any_useAnimatedBinding_result2_upvr_5 = ReactOtter_upvr.useAnimatedBinding(1)
	local any_useAnimatedBinding_result1_6, any_useAnimatedBinding_result2_upvr_4 = ReactOtter_upvr.useAnimatedBinding(0)
	local useTokens_upvr_result1 = useTokens_upvr()
	local useLocalization_upvr_result1 = useLocalization_upvr(tbl_upvr)
	local any_useAnimatedBinding_result1_3, any_useAnimatedBinding_result2_upvr_8 = ReactOtter_upvr.useAnimatedBinding(0)
	local any_useAnimatedBinding_result1_4, any_useAnimatedBinding_result2_upvr = ReactOtter_upvr.useAnimatedBinding(1)
	local any_useAnimatedBinding_result1, any_useAnimatedBinding_result2_upvr_7 = ReactOtter_upvr.useAnimatedBinding(0)
	local any_useAnimatedBinding_result1_7, any_useAnimatedBinding_result2_upvr_6 = ReactOtter_upvr.useAnimatedBinding(0)
	local any_useState_result1_upvr_2, any_useState_result2_upvr = React_upvr.useState(true)
	local any_useBinding_result1, any_useBinding_result2 = React_upvr.useBinding(1)
	React_upvr.useEffect(function() -- Line 64
		--[[ Upvalues[3]:
			[1]: any_useState_result1_upvr_2 (readonly)
			[2]: any_useAnimatedBinding_result2_upvr_6 (readonly)
			[3]: ReactOtter_upvr (copied, readonly)
		]]
		if any_useState_result1_upvr_2 then
			any_useAnimatedBinding_result2_upvr_6(ReactOtter_upvr.instant(0))
			return
		end
		local var44_upvw = false
		task.delay(3, function() -- Line 71
			--[[ Upvalues[3]:
				[1]: var44_upvw (read and write)
				[2]: any_useAnimatedBinding_result2_upvr_6 (copied, readonly)
				[3]: ReactOtter_upvr (copied, readonly)
			]]
			if not var44_upvw then
				any_useAnimatedBinding_result2_upvr_6(ReactOtter_upvr.ease(1))
			end
		end)
		return function() -- Line 77
			--[[ Upvalues[1]:
				[1]: var44_upvw (read and write)
			]]
			var44_upvw = true
		end
	end, {any_useState_result1_upvr_2})
	React_upvr.useEffect(function() -- Line 82
		--[[ Upvalues[4]:
			[1]: any_useRef_result1_upvr_2 (readonly)
			[2]: any_useState_result2_upvr_2 (readonly)
			[3]: any_useRef_result1_upvr (readonly)
			[4]: any_useState_result2_upvr_3 (readonly)
		]]
		local current = any_useRef_result1_upvr_2.current
		if current then
			any_useState_result2_upvr_2(current.TextBounds.X)
		end
		local current_2 = any_useRef_result1_upvr.current
		if current_2 then
			any_useState_result2_upvr_3(current_2.TextBounds.X)
		end
	end, {})
	React_upvr.useEffect(function() -- Line 94
		--[[ Upvalues[5]:
			[1]: any_useState_result1_upvr_2 (readonly)
			[2]: any_useAnimatedBinding_result2_upvr_8 (readonly)
			[3]: ReactOtter_upvr (copied, readonly)
			[4]: any_useState_result1_upvr_3 (readonly)
			[5]: any_useState_result1_upvr (readonly)
		]]
		if any_useState_result1_upvr_2 then
			any_useAnimatedBinding_result2_upvr_8(ReactOtter_upvr.instant(24 + any_useState_result1_upvr_3 + 8 + 20))
		else
			any_useAnimatedBinding_result2_upvr_8(ReactOtter_upvr.ease(24 + any_useState_result1_upvr + 8 + 20 - 4, {
				duration = 0.4;
				easingStyle = Enum.EasingStyle.Linear;
			}))
		end
	end, {any_useState_result1_upvr_2, any_useState_result1_upvr_3, any_useState_result1_upvr})
	React_upvr.useEffect(function() -- Line 114
		--[[ Upvalues[8]:
			[1]: any_useState_result1_upvr_2 (readonly)
			[2]: any_useAnimatedBinding_result2_upvr_2 (readonly)
			[3]: ReactOtter_upvr (copied, readonly)
			[4]: any_useAnimatedBinding_result2_upvr_3 (readonly)
			[5]: any_useAnimatedBinding_result2_upvr_5 (readonly)
			[6]: any_useAnimatedBinding_result2_upvr_4 (readonly)
			[7]: any_useAnimatedBinding_result2_upvr_7 (readonly)
			[8]: any_useAnimatedBinding_result2_upvr (readonly)
		]]
		local var55_upvw = false
		if any_useState_result1_upvr_2 then
			any_useAnimatedBinding_result2_upvr_2(ReactOtter_upvr.instant(0))
			any_useAnimatedBinding_result2_upvr_3(ReactOtter_upvr.instant(0))
			any_useAnimatedBinding_result2_upvr_5(ReactOtter_upvr.instant(1))
			any_useAnimatedBinding_result2_upvr_4(ReactOtter_upvr.instant(28))
			any_useAnimatedBinding_result2_upvr_7(ReactOtter_upvr.instant(0))
			any_useAnimatedBinding_result2_upvr(ReactOtter_upvr.instant(1))
		else
			any_useAnimatedBinding_result2_upvr_3(ReactOtter_upvr.ease(24, {
				duration = 0.4;
				easingStyle = Enum.EasingStyle.Linear;
			}))
			any_useAnimatedBinding_result2_upvr_4(ReactOtter_upvr.ease(0, {
				duration = 0.4;
				easingStyle = Enum.EasingStyle.Linear;
			}))
			any_useAnimatedBinding_result2_upvr_7(ReactOtter_upvr.ease(1, {
				duration = 0.1;
				easingStyle = Enum.EasingStyle.Linear;
			}))
			task.delay(0.1, function() -- Line 130
				--[[ Upvalues[4]:
					[1]: var55_upvw (read and write)
					[2]: any_useAnimatedBinding_result2_upvr_2 (copied, readonly)
					[3]: ReactOtter_upvr (copied, readonly)
					[4]: any_useAnimatedBinding_result2_upvr_5 (copied, readonly)
				]]
				if not var55_upvw then
					any_useAnimatedBinding_result2_upvr_2(ReactOtter_upvr.ease(1, {
						duration = 0.1;
						easingStyle = Enum.EasingStyle.Linear;
					}))
					any_useAnimatedBinding_result2_upvr_5(ReactOtter_upvr.ease(0, {
						duration = 0.1;
						easingStyle = Enum.EasingStyle.Linear;
					}))
				end
			end)
			task.delay(0.4, function() -- Line 137
				--[[ Upvalues[3]:
					[1]: var55_upvw (read and write)
					[2]: any_useAnimatedBinding_result2_upvr (copied, readonly)
					[3]: ReactOtter_upvr (copied, readonly)
				]]
				if not var55_upvw then
					any_useAnimatedBinding_result2_upvr(ReactOtter_upvr.ease(0, {
						duration = 0.1;
						easingStyle = Enum.EasingStyle.Linear;
					}))
				end
			end)
		end
		return function() -- Line 144
			--[[ Upvalues[1]:
				[1]: var55_upvw (read and write)
			]]
			var55_upvw = true
		end
	end, {any_useState_result1_upvr_2})
	local module_2 = {
		tag = "padding-y-xsmall padding-x-medium bg-over-media-300 radius-small clip";
	}
	local any_map_result1 = any_useAnimatedBinding_result1_3:map(function(arg1_2) -- Line 151
		return UDim2.fromOffset(arg1_2, 32)
	end)
	module_2.Size = any_map_result1
	module_2.GroupTransparency = any_useAnimatedBinding_result1_7
	if 0 >= any_useState_result1_upvr_3 then
		any_map_result1 = false
	else
		any_map_result1 = true
	end
	module_2.Visible = any_map_result1
	return React_upvr.createElement(View_upvr, module_2, {
		checkIcon = React_upvr.createElement(Image_upvr, {
			tag = "size-500 anchor-center-left";
			Image = "rbxassetid://125702125855534";
			imageStyle = {
				Transparency = any_useAnimatedBinding_result1_4;
			};
			LayoutOrder = 1;
			Position = UDim2.new(0, -4, 0.5, 0);
			Visible = arg1.rewardWaitAlpha:map(function(arg1_3) -- Line 165
				--[[ Upvalues[1]:
					[1]: any_useState_result2_upvr (readonly)
				]]
				-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
				local var73
				if arg1_3 >= 1 then
					var73 = false
				else
					var73 = true
				end
				any_useState_result2_upvr(var73)
				if arg1_3 ~= 1 then
				else
				end
				return true
			end);
		});
		getRewardInLabel = React_upvr.createElement(Text_upvr, {
			tag = "text-label-medium text-align-x-left text-align-y-center";
			Text = useLocalization_upvr_result1.getRewardIn;
			Size = UDim2.new(0, any_useState_result1_upvr_3, 1, 0);
			Position = any_useAnimatedBinding_result1_8:map(function(arg1_4) -- Line 174
				return UDim2.new(0, arg1_4, 0, 0)
			end);
			textStyle = {
				Color3 = useTokens_upvr_result1.Color.ActionEmphasis.Foreground.Color3;
				Transparency = any_useAnimatedBinding_result1_2;
			};
			ref = any_useRef_result1_upvr_2;
		});
		rewardEarnedLabel = React_upvr.createElement(Text_upvr, {
			tag = "text-label-medium text-align-x-right text-align-y-center anchor-top-right";
			Text = useLocalization_upvr_result1.rewardEarned;
			Size = UDim2.new(0, any_useState_result1_upvr, 1, 0);
			Position = any_useAnimatedBinding_result1_6:map(function(arg1_5) -- Line 187
				return UDim2.new(1, -arg1_5, 0, 0)
			end);
			textStyle = {
				Color3 = useTokens_upvr_result1.Color.ActionEmphasis.Foreground.Color3;
				Transparency = any_useAnimatedBinding_result1_5;
			};
			ref = any_useRef_result1_upvr;
		});
		progressContainer = React_upvr.createElement(View_upvr, {
			tag = "radius-circle bg-over-media-200 size-500 anchor-center-right position-center-right";
			GroupTransparency = any_useAnimatedBinding_result1;
		}, {
			progressBackground = React_upvr.createElement(RadialProgressComponent_upvr, {
				alpha = any_useBinding_result1;
				thickness = 2;
				Size = UDim2.fromScale(1, 1);
				SizeConstraint = Enum.SizeConstraint.RelativeYY;
				BackgroundTransparency = 1;
				ImageColor3 = useTokens_upvr_result1.Color.Content.Muted.Color3;
				LayoutOrder = 3;
				Visible = arg1.rewardWaitAlpha:map(function(arg1_6) -- Line 208
					local var84
					if arg1_6 >= 1 then
						var84 = false
					else
						var84 = true
					end
					return var84
				end);
			}, {
				radialProgress = React_upvr.createElement(RadialProgressComponent_upvr, {
					alpha = arg1.rewardWaitAlpha;
					thickness = 2;
					Size = UDim2.fromScale(1, 1);
					BackgroundTransparency = 1;
					ImageColor3 = useTokens_upvr_result1.Color.Extended.White.White_0.Color3;
				}, {
					timerLabel = React_upvr.createElement(Text_upvr, {
						tag = "size-full-300 anchor-center-center position-center-center content-emphasis text-caption-small text-align-x-center text-align-y-center";
						Text = arg1.rewardWaitAlpha:map(function(arg1_7) -- Line 221
							--[[ Upvalues[1]:
								[1]: arg1 (readonly)
							]]
							return tostring(math.ceil(arg1.rewardWaitTime - arg1.rewardWaitTime * arg1_7))
						end);
						TextScaled = true;
					});
				});
			});
		});
	})
end