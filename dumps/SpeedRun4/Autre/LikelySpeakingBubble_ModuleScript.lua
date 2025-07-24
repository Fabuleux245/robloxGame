-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:02:59
-- Luau version 6, Types version 3
-- Time taken: 0.004371 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local Parent = ExpChat.Parent
local TweenService_upvr = game:GetService("TweenService")
local function createSizeChangeTween_upvr(arg1) -- Line 39, Named "createSizeChangeTween"
	--[[ Upvalues[1]:
		[1]: TweenService_upvr (readonly)
	]]
	return TweenService_upvr:Create(arg1, TweenInfo.new(math.random(20, 30) * 0.01, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, -1, true), {
		Size = UDim2.fromScale(arg1.Size.X.Scale, math.random(2.5, 5) * 0.1);
	})
end
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("RbxAnalyticsServiceExposePlaySessionId")
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local function getAnalyticsData_upvr() -- Line 54, Named "getAnalyticsData"
	--[[ Upvalues[2]:
		[1]: game_GetEngineFeature_result1_upvr (readonly)
		[2]: RbxAnalyticsService_upvr (readonly)
	]]
	local var7 = ""
	if game_GetEngineFeature_result1_upvr then
		var7 = RbxAnalyticsService_upvr:GetPlaySessionId()
	end
	return game.GameId, game.PlaceId, var7
end
local React_upvr = require(Parent.React)
local AvatarChatUISettings_upvr = require(ExpChat.Config).AvatarChatUISettings
local getFFlagEnableInExpLikelySpeakingAnalytics_upvr = require(ExpChat.Flags.getFFlagEnableInExpLikelySpeakingAnalytics)
local Analytics_upvr = require(Parent.ExpChatShared).Analytics
local Color3_fromRGB_result1_upvr = Color3.fromRGB(57, 59, 61)
local udim2_upvr = UDim2.new(0.07, 0, 0.01, 0)
local Dictionary_upvr = require(Parent.llama).Dictionary
local Carat_upvr = require(script:FindFirstAncestor("BubbleChat").Carat)
return function(arg1) -- Line 62, Named "LikelySpeakingBubble"
	--[[ Upvalues[10]:
		[1]: React_upvr (readonly)
		[2]: AvatarChatUISettings_upvr (readonly)
		[3]: getFFlagEnableInExpLikelySpeakingAnalytics_upvr (readonly)
		[4]: Analytics_upvr (readonly)
		[5]: getAnalyticsData_upvr (readonly)
		[6]: createSizeChangeTween_upvr (readonly)
		[7]: Color3_fromRGB_result1_upvr (readonly)
		[8]: udim2_upvr (readonly)
		[9]: Dictionary_upvr (readonly)
		[10]: Carat_upvr (readonly)
	]]
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local chatSettings = arg1.chatSettings
	local SingleIconButtonSize = AvatarChatUISettings_upvr.SingleIconButtonSize
	local SingleIconCornerRadiusOffset_upvr = AvatarChatUISettings_upvr.SingleIconCornerRadiusOffset
	React_upvr.useEffect(function() -- Line 68
		--[[ Upvalues[3]:
			[1]: getFFlagEnableInExpLikelySpeakingAnalytics_upvr (copied, readonly)
			[2]: Analytics_upvr (copied, readonly)
			[3]: getAnalyticsData_upvr (copied, readonly)
		]]
		if getFFlagEnableInExpLikelySpeakingAnalytics_upvr() then
			Analytics_upvr.FireLikelySpeakingBubbleAnalytics("shown", getAnalyticsData_upvr())
		end
	end, {})
	React_upvr.useEffect(function() -- Line 74
		--[[ Upvalues[2]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: createSizeChangeTween_upvr (copied, readonly)
		]]
		if any_useRef_result1_upvr.current then
			for _, v in any_useRef_result1_upvr.current:GetChildren(), nil do
				if v:IsA("Frame") then
					local createSizeChangeTween_result1 = createSizeChangeTween_upvr(v)
					table.insert({}, createSizeChangeTween_result1)
					createSizeChangeTween_result1:Play()
				end
			end
			local tbl_upvr = {}
			return function() -- Line 86
				--[[ Upvalues[1]:
					[1]: tbl_upvr (readonly)
				]]
				for _, v_2 in tbl_upvr do
					if v_2 then
						v_2:Cancel()
					end
				end
			end
		end
	end, {any_useRef_result1_upvr.current})
	local module_3 = {
		AnchorPoint = Vector2.new(0.5, 1);
	}
	local var40 = -8
	module_3.Position = UDim2.new(0.5, 0, 1, var40)
	module_3.Size = SingleIconButtonSize
	module_3.LayoutOrder = arg1.LayoutOrder
	module_3.BackgroundTransparency = chatSettings.BackgroundTransparency
	module_3.BackgroundColor3 = chatSettings.BackgroundColor3
	local module_2 = {}
	local tbl = {}
	if not arg1.isInsideMaximizeDistance then
		var40 = 0.75
	else
		var40 = 1
	end
	tbl.Scale = var40
	module_2.Scale = React_upvr.createElement("UIScale", tbl)
	module_2.UICorner = React_upvr.createElement("UICorner", {
		CornerRadius = UDim.new(0, SingleIconCornerRadiusOffset_upvr);
	})
	module_2.Container = React_upvr.createElement("ImageLabel", Dictionary_upvr.join({
		Size = UDim2.fromScale(1, 1);
		BackgroundTransparency = 1;
	}, chatSettings.ImageLabel), {
		UICorner = React_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0, SingleIconCornerRadiusOffset_upvr);
		});
		LikelySpeakingBubble = React_upvr.createElement("TextButton", {
			Size = SingleIconButtonSize;
			BorderSizePixel = 0;
			Transparency = 1;
			TextTransparency = 1;
			BackgroundTransparency = 1;
			ZIndex = 2;
			[React_upvr.Event.Activated] = function() -- Line 160
				--[[ Upvalues[4]:
					[1]: getFFlagEnableInExpLikelySpeakingAnalytics_upvr (copied, readonly)
					[2]: Analytics_upvr (copied, readonly)
					[3]: getAnalyticsData_upvr (copied, readonly)
					[4]: arg1 (readonly)
				]]
				if getFFlagEnableInExpLikelySpeakingAnalytics_upvr() then
					Analytics_upvr.FireLikelySpeakingBubbleAnalytics("clicked", getAnalyticsData_upvr())
				end
				if arg1.onActivated then
					arg1.onActivated()
				end
			end;
		}, {
			UICorner = React_upvr.createElement("UICorner", {
				CornerRadius = UDim.new(0, SingleIconCornerRadiusOffset_upvr);
			});
			Contents = React_upvr.createElement("Frame", {
				Size = UDim2.fromScale(1, 1);
				BorderSizePixel = 0;
				Transparency = 1;
				BackgroundTransparency = 1;
				ref = any_useRef_result1_upvr;
				ZIndex = 2;
			}, React_upvr.useMemo(function() -- Line 98
				--[[ Upvalues[4]:
					[1]: React_upvr (copied, readonly)
					[2]: SingleIconCornerRadiusOffset_upvr (readonly)
					[3]: Color3_fromRGB_result1_upvr (copied, readonly)
					[4]: udim2_upvr (copied, readonly)
				]]
				local module = {
					UICorner = React_upvr.createElement("UICorner", {
						CornerRadius = UDim.new(0, SingleIconCornerRadiusOffset_upvr);
					});
					UIListLayout = React_upvr.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Horizontal;
						VerticalAlignment = Enum.VerticalAlignment.Center;
						HorizontalAlignment = Enum.HorizontalAlignment.Center;
						SortOrder = Enum.SortOrder.LayoutOrder;
						Padding = UDim.new(0, 2);
					});
				}
				for i_3 = 1, 4 do
					module["Line"..i_3] = React_upvr.createElement("Frame", {
						BackgroundColor3 = Color3_fromRGB_result1_upvr;
						Size = udim2_upvr;
						BorderSizePixel = 0;
						ZIndex = 3;
						LayoutOrder = i_3;
					}, {
						UICorner = React_upvr.createElement("UICorner", {
							CornerRadius = UDim.new(0, SingleIconCornerRadiusOffset_upvr);
						});
					})
				end
				return module
			end, {}));
		});
	})
	local TailVisible = chatSettings.TailVisible
	if TailVisible then
		TailVisible = React_upvr.createElement
		TailVisible = TailVisible(Carat_upvr, {
			layoutOrder = 3;
			chatSettings = chatSettings;
		})
	end
	module_2.Carat = TailVisible
	TailVisible = chatSettings.UIGradient
	local var54 = TailVisible
	if var54 then
		var54 = React_upvr.createElement("UIGradient", chatSettings.UIGradient)
	end
	module_2.BubbleGradient = var54
	return React_upvr.createElement("Frame", module_3, module_2)
end