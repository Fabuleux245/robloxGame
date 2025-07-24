-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:15
-- Luau version 6, Types version 3
-- Time taken: 0.003846 seconds

local Parent = script.Parent.Parent.Parent
local Parent_2 = Parent.Parent
local UIBlox = require(Parent_2.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local useAnalytics_upvr = require(Parent.Analytics.useAnalytics)
local useDispatch_upvr = require(Parent_2.RoactUtils).Hooks.RoactRodux.useDispatch
local useStyle_upvr = UIBlox.Core.Style.useStyle
local React_upvr = require(Parent_2.React)
local Constants_upvr = require(Parent.Constants)
local icons_actions_cycleLeft_upvr = Images["icons/actions/cycleLeft"]
local icons_actions_cycleRight_upvr = Images["icons/actions/cycleRight"]
local InputUtilities_upvr = require(Parent_2.SocialCommon).Utils.InputUtilities
local EventNames_upvr = require(Parent.Analytics.EventNames)
local CarouselNavigated_upvr = require(Parent.Thunks.CarouselNavigated)
local RunService_upvr = game:GetService("RunService")
local useExternalEvent_upvr = UIBlox.Core.Hooks.useExternalEvent
local UserInputService_upvr = game:GetService("UserInputService")
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
return function(arg1) -- Line 38
	--[[ Upvalues[14]:
		[1]: useAnalytics_upvr (readonly)
		[2]: useDispatch_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: Constants_upvr (readonly)
		[6]: icons_actions_cycleLeft_upvr (readonly)
		[7]: icons_actions_cycleRight_upvr (readonly)
		[8]: InputUtilities_upvr (readonly)
		[9]: EventNames_upvr (readonly)
		[10]: CarouselNavigated_upvr (readonly)
		[11]: RunService_upvr (readonly)
		[12]: useExternalEvent_upvr (readonly)
		[13]: UserInputService_upvr (readonly)
		[14]: ImageSetLabel_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local useStyle_upvr_result1 = useStyle_upvr()
	local var21
	local any_useRef_result1_upvr = React_upvr.useRef(var21)
	local var23
	if var23 ~= Constants_upvr.CarouselDirection.Left then
		var21 = false
	else
		var21 = true
	end
	if var21 then
		var23 = Vector2.new(0, 0.5)
	else
		var23 = Vector2.new(1, 0.5)
	end
	if var21 then
	else
	end
	if var21 then
		local udim2 = UDim2.fromScale(0, 0.5)
	else
	end
	React_upvr.useEffect(function() -- Line 51
		--[[ Upvalues[1]:
			[1]: any_useRef_result1_upvr (readonly)
		]]
		return function() -- Line 52
			--[[ Upvalues[1]:
				[1]: any_useRef_result1_upvr (copied, readonly)
			]]
			if any_useRef_result1_upvr.current then
				any_useRef_result1_upvr.current:Disconnect()
				any_useRef_result1_upvr.current = nil
			end
		end
	end, {})
	React_upvr.useEffect(function() -- Line 60
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: any_useRef_result1_upvr (readonly)
		]]
		if arg1.isDisabled and any_useRef_result1_upvr.current then
			any_useRef_result1_upvr.current:Disconnect()
			any_useRef_result1_upvr.current = nil
		end
	end, {arg1.isDisabled})
	local useAnalytics_upvr_result1_upvr = useAnalytics_upvr()
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	useExternalEvent_upvr(UserInputService_upvr.InputEnded, function(arg1_5) -- Line 116
		--[[ Upvalues[2]:
			[1]: InputUtilities_upvr (copied, readonly)
			[2]: any_useRef_result1_upvr (readonly)
		]]
		if InputUtilities_upvr.isActivationInput(arg1_5) and any_useRef_result1_upvr.current then
			any_useRef_result1_upvr.current:Disconnect()
			any_useRef_result1_upvr.current = nil
		end
	end)
	return React_upvr.createElement("TextButton", {
		AnchorPoint = var23;
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(1, 0.5);
		Size = arg1.Size;
		Text = "";
		ZIndex = arg1.ZIndex;
		Visible = not arg1.isDisabled;
		[React_upvr.Event.InputBegan] = React_upvr.useCallback(function(arg1_2, arg2) -- Line 67
			--[[ Upvalues[8]:
				[1]: arg1 (readonly)
				[2]: InputUtilities_upvr (copied, readonly)
				[3]: any_useRef_result1_upvr (readonly)
				[4]: useAnalytics_upvr_result1_upvr (readonly)
				[5]: EventNames_upvr (copied, readonly)
				[6]: useDispatch_upvr_result1_upvr (readonly)
				[7]: CarouselNavigated_upvr (copied, readonly)
				[8]: RunService_upvr (copied, readonly)
			]]
			if arg1.isDisabled then
			else
				if arg2.UserInputState ~= Enum.UserInputState.Begin then return end
				if not InputUtilities_upvr.isActivationInput(arg2) then return end
				if any_useRef_result1_upvr.current then
					any_useRef_result1_upvr.current:Disconnect()
					any_useRef_result1_upvr.current = nil
				end
				useAnalytics_upvr_result1_upvr.fireEvent(EventNames_upvr.CapturesCarouselNavigated, {
					direction = arg1.direction;
				})
				useDispatch_upvr_result1_upvr(CarouselNavigated_upvr(arg1.direction))
				local tick_result1_upvw = tick()
				any_useRef_result1_upvr.current = RunService_upvr.RenderStepped:Connect(function(arg1_3) -- Line 93
					--[[ Upvalues[7]:
						[1]: tick_result1_upvw (readonly)
						[2]: tick_result1_upvw (read and write)
						[3]: useAnalytics_upvr_result1_upvr (copied, readonly)
						[4]: EventNames_upvr (copied, readonly)
						[5]: arg1 (copied, readonly)
						[6]: useDispatch_upvr_result1_upvr (copied, readonly)
						[7]: CarouselNavigated_upvr (copied, readonly)
					]]
					if math.max(0.5 / (tick() - tick_result1_upvw), 0.15) < tick() - tick_result1_upvw then
						useAnalytics_upvr_result1_upvr.fireEvent(EventNames_upvr.CapturesCarouselNavigated, {
							direction = arg1.direction;
						})
						useDispatch_upvr_result1_upvr(CarouselNavigated_upvr(arg1.direction))
						tick_result1_upvw = tick()
					end
				end)
			end
		end, {arg1.isDisabled});
		[React_upvr.Event.InputEnded] = React_upvr.useCallback(function(arg1_4, arg2) -- Line 107
			--[[ Upvalues[2]:
				[1]: InputUtilities_upvr (copied, readonly)
				[2]: any_useRef_result1_upvr (readonly)
			]]
			if InputUtilities_upvr.isActivationInput(arg2) and any_useRef_result1_upvr.current then
				any_useRef_result1_upvr.current:Disconnect()
				any_useRef_result1_upvr.current = nil
			end
		end, {});
	}, {
		Arrow = React_upvr.createElement(ImageSetLabel_upvr, {
			AnchorPoint = Vector2.new(0.5, 0.5);
			BackgroundTransparency = 1;
			Image = icons_actions_cycleRight_upvr;
			ImageColor3 = useStyle_upvr_result1.Theme.IconEmphasis.Color;
			ImageTransparency = useStyle_upvr_result1.Theme.IconEmphasis.Transparency;
			Position = UDim2.fromScale(0.5, 0.5);
			Size = UDim2.fromOffset(36, 36);
		});
	})
end