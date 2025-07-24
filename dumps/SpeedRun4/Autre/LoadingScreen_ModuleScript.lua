-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:05:13
-- Luau version 6, Types version 3
-- Time taken: 0.031163 seconds

local ExperienceLoadingScript = script:FindFirstAncestor("ExperienceLoadingScript")
local Parent = ExperienceLoadingScript.Parent
local GuiService_upvr = game:GetService("GuiService")
local CoreGui_upvr = game:GetService("CoreGui")
local RunService_upvr = game:GetService("RunService")
local UserInputService_upvr = game:GetService("UserInputService")
local ContextActionService_upvr = game:GetService("ContextActionService")
local InGameMenuDependencies = require(Parent.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local ExternalEventConnection_upvr = require(Parent.RoactUtils).ExternalEventConnection
local UIBlox = require(Parent.UIBlox)
local any_GetTranslator_result1_upvr = CoreGui_upvr.CoreScriptLocalization:GetTranslator(game:GetService("LocalizationService").RobloxLocaleId)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("BButtonDestroyLoadedGame", false)
local var14_upvw = 7
game:DefineFastFlag("IncreaseLoadingScreenOrder", false)
if game:GetFastFlag("IncreaseLoadingScreenOrder") then
	var14_upvw = 8
end
local tbl_20_upvr = {
	MOBILE_PORTRAIT = {
		TOP = 44;
		BOTTOM = 44;
		LEFT = 24;
		RIGHT = 24;
	};
	MOBILE_LANDSCAPE = {
		TOP = 24;
		BOTTOM = 24;
		LEFT = 44;
		RIGHT = 44;
	};
	DESKTOP = {
		TOP = 24;
		BOTTOM = 24;
		LEFT = 24;
		RIGHT = 24;
	};
	CONSOLE = {
		TOP = 64;
		BOTTOM = 64;
		LEFT = 64;
		RIGHT = 64;
	};
}
local any_IsTenFootInterface_result1_upvr = GuiService_upvr:IsTenFootInterface()
local any_GetPlatform_result1 = UserInputService_upvr:GetPlatform()
local var22_upvr = true
if any_GetPlatform_result1 ~= Enum.Platform.IOS then
	if any_GetPlatform_result1 ~= Enum.Platform.Android then
		var22_upvr = false
	else
		var22_upvr = true
	end
end
local tbl_3_upvr = {150, 256}
local var24_upvw
local function _(arg1) -- Line 76, Named "getPadding"
	--[[ Upvalues[3]:
		[1]: var22_upvr (readonly)
		[2]: tbl_20_upvr (readonly)
		[3]: any_IsTenFootInterface_result1_upvr (readonly)
	]]
	local var25
	if var25 then
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var25 = tbl_20_upvr.MOBILE_PORTRAIT
			return var25
		end
		if not arg1 or not INLINED() then
			var25 = tbl_20_upvr.MOBILE_LANDSCAPE
		end
		return var25
	end
	if any_IsTenFootInterface_result1_upvr then
		return tbl_20_upvr.CONSOLE
	end
	return tbl_20_upvr.DESKTOP
end
local function _(arg1, arg2) -- Line 86, Named "lerp"
	if type(arg1) == "table" and 2 <= #arg1 then
		local clamped_5 = math.clamp(arg2, 0, 1)
		return arg1[1] * (1 - clamped_5) + arg1[2] * clamped_5
	end
	return 0
end
local tbl_18_upvr = {
	FadeIn = function(arg1, arg2, arg3, arg4) -- Line 95, Named "FadeIn"
		local tbl_13 = {1, 1}
		local tbl_16 = {1, 0}
		local tbl_23 = {1, 0.2}
		if arg1 <= 0.6 then
			local var31
			if type(tbl_16) == "table" and 2 <= #tbl_16 then
				local clamped_21 = math.clamp(arg1 / 0.6, 0, 1)
				var31 = tbl_16[1] * (1 - clamped_21) + tbl_16[2] * clamped_21
			else
				var31 = 0
			end
			arg3.iconTransparency(var31)
			if type(tbl_13) == "table" and 2 <= #tbl_13 then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				local clamped_6 = math.clamp(arg1 / 0.6, 0, 1)
				var31 = tbl_13[1] * (1 - clamped_6) + tbl_13[2] * clamped_6
			else
				var31 = 0
			end
			arg3.iconSize(var31)
			if type(tbl_23) == "table" and 2 <= #tbl_23 then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				local clamped_14 = math.clamp(arg1 / 0.6, 0, 1)
				var31 = tbl_23[1] * (1 - clamped_14) + tbl_23[2] * clamped_14
			else
				var31 = 0
			end
			arg3.infoFrameTransparency(var31)
			if type(tbl_16) == "table" and 2 <= #tbl_16 then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				local clamped_13 = math.clamp(arg1 / 0.6, 0, 1)
				var31 = tbl_16[1] * (1 - clamped_13) + tbl_16[2] * clamped_13
			else
				var31 = 0
			end
			arg3.thumbnailTransparency(var31)
			if type(tbl_16) == "table" and 2 <= #tbl_16 then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				local clamped_11 = math.clamp(arg1 / 0.6, 0, 1)
				var31 = tbl_16[1] * (1 - clamped_11) + tbl_16[2] * clamped_11
			else
				var31 = 0
			end
			arg3.placeTextTransparency(var31)
			if type(tbl_13) == "table" and 2 <= #tbl_13 then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				local clamped_9 = math.clamp(arg1 / 0.6, 0, 1)
				var31 = tbl_13[1] * (1 - clamped_9) + tbl_13[2] * clamped_9
			else
				var31 = 0
			end
			arg3.placeTextSize(var31)
			if type(tbl_16) == "table" and 2 <= #tbl_16 then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				local clamped_17 = math.clamp(arg1 / 0.6, 0, 1)
				var31 = tbl_16[1] * (1 - clamped_17) + tbl_16[2] * clamped_17
			else
				var31 = 0
			end
			arg3.creatorTextTransparency(var31)
			if type(tbl_13) == "table" and 2 <= #tbl_13 then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				local clamped_20 = math.clamp(arg1 / 0.6, 0, 1)
				var31 = tbl_13[1] * (1 - clamped_20) + tbl_13[2] * clamped_20
			else
				var31 = 0
			end
			arg3.creatorTextSize(var31)
		else
			local var40
			if type(tbl_16) == "table" and 2 <= #tbl_16 then
				var40 = tbl_16[1] * 0 + tbl_16[2] * 1
			else
				var40 = 0
			end
			arg3.iconTransparency(var40)
			if type(tbl_13) == "table" and 2 <= #tbl_13 then
				var40 = tbl_13[1] * 0 + tbl_13[2] * 1
			else
				var40 = 0
			end
			arg3.iconSize(var40)
			if type(tbl_23) == "table" and 2 <= #tbl_23 then
				var40 = tbl_23[1] * 0 + tbl_23[2] * 1
			else
				var40 = 0
			end
			arg3.infoFrameTransparency(var40)
			if type(tbl_16) == "table" and 2 <= #tbl_16 then
				var40 = tbl_16[1] * 0 + tbl_16[2] * 1
			else
				var40 = 0
			end
			arg3.thumbnailTransparency(var40)
			if type(tbl_16) == "table" and 2 <= #tbl_16 then
				var40 = tbl_16[1] * 0 + tbl_16[2] * 1
			else
				var40 = 0
			end
			arg3.placeTextTransparency(var40)
			if type(tbl_13) == "table" and 2 <= #tbl_13 then
				var40 = tbl_13[1] * 0 + tbl_13[2] * 1
			else
				var40 = 0
			end
			arg3.placeTextSize(var40)
			if type(tbl_16) == "table" and 2 <= #tbl_16 then
				var40 = tbl_16[1] * 0 + tbl_16[2] * 1
			else
				var40 = 0
			end
			arg3.creatorTextTransparency(var40)
			if type(tbl_13) == "table" and 2 <= #tbl_13 then
				var40 = tbl_13[1] * 0 + tbl_13[2] * 1
			else
				var40 = 0
			end
			arg3.creatorTextSize(var40)
			arg4()
		end
	end;
	FadeOut = function(arg1, arg2, arg3, arg4) -- Line 124, Named "FadeOut"
		--[[ Upvalues[1]:
			[1]: RunService_upvr (readonly)
		]]
		local tbl_9 = {1, 0.6}
		local tbl_17 = {0, 1}
		local tbl_19 = {0.2, 1}
		if arg1 <= 0.6 then
			local var44
			if type(tbl_17) == "table" and 2 <= #tbl_17 then
				local clamped_7 = math.clamp(arg1 / 0.6, 0, 1)
				var44 = tbl_17[1] * (1 - clamped_7) + tbl_17[2] * clamped_7
			else
				var44 = 0
			end
			arg3.iconTransparency(var44)
			if type(tbl_9) == "table" and 2 <= #tbl_9 then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				local clamped_4 = math.clamp(arg1 / 0.6, 0, 1)
				var44 = tbl_9[1] * (1 - clamped_4) + tbl_9[2] * clamped_4
			else
				var44 = 0
			end
			arg3.iconSize(var44)
			if type(tbl_19) == "table" and 2 <= #tbl_19 then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				local clamped_12 = math.clamp(arg1 / 0.6, 0, 1)
				var44 = tbl_19[1] * (1 - clamped_12) + tbl_19[2] * clamped_12
			else
				var44 = 0
			end
			arg3.infoFrameTransparency(var44)
			if type(tbl_17) == "table" and 2 <= #tbl_17 then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				local clamped_3 = math.clamp(arg1 / 0.6, 0, 1)
				var44 = tbl_17[1] * (1 - clamped_3) + tbl_17[2] * clamped_3
			else
				var44 = 0
			end
			arg3.thumbnailTransparency(var44)
			if type(tbl_17) == "table" and 2 <= #tbl_17 then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				local clamped = math.clamp(arg1 / 0.6, 0, 1)
				var44 = tbl_17[1] * (1 - clamped) + tbl_17[2] * clamped
			else
				var44 = 0
			end
			arg3.placeTextTransparency(var44)
			if type(tbl_9) == "table" and 2 <= #tbl_9 then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				local clamped_16 = math.clamp(arg1 / 0.6, 0, 1)
				var44 = tbl_9[1] * (1 - clamped_16) + tbl_9[2] * clamped_16
			else
				var44 = 0
			end
			arg3.placeTextSize(var44)
			if type(tbl_17) == "table" and 2 <= #tbl_17 then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				local clamped_2 = math.clamp(arg1 / 0.6, 0, 1)
				var44 = tbl_17[1] * (1 - clamped_2) + tbl_17[2] * clamped_2
			else
				var44 = 0
			end
			arg3.creatorTextTransparency(var44)
			if type(tbl_9) == "table" and 2 <= #tbl_9 then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				local clamped_19 = math.clamp(arg1 / 0.6, 0, 1)
				var44 = tbl_9[1] * (1 - clamped_19) + tbl_9[2] * clamped_19
			else
				var44 = 0
			end
			arg3.creatorTextSize(var44)
		else
			RunService_upvr:SetRobloxGuiFocused(false)
			local var53
			if type(tbl_17) == "table" and 2 <= #tbl_17 then
				var53 = tbl_17[1] * 0 + tbl_17[2] * 1
			else
				var53 = 0
			end
			arg3.iconTransparency(var53)
			if type(tbl_9) == "table" and 2 <= #tbl_9 then
				var53 = tbl_9[1] * 0 + tbl_9[2] * 1
			else
				var53 = 0
			end
			arg3.iconSize(var53)
			if type(tbl_19) == "table" and 2 <= #tbl_19 then
				var53 = tbl_19[1] * 0 + tbl_19[2] * 1
			else
				var53 = 0
			end
			arg3.infoFrameTransparency(var53)
			if type(tbl_17) == "table" and 2 <= #tbl_17 then
				var53 = tbl_17[1] * 0 + tbl_17[2] * 1
			else
				var53 = 0
			end
			arg3.thumbnailTransparency(var53)
			if type(tbl_17) == "table" and 2 <= #tbl_17 then
				var53 = tbl_17[1] * 0 + tbl_17[2] * 1
			else
				var53 = 0
			end
			arg3.placeTextTransparency(var53)
			if type(tbl_9) == "table" and 2 <= #tbl_9 then
				var53 = tbl_9[1] * 0 + tbl_9[2] * 1
			else
				var53 = 0
			end
			arg3.placeTextSize(var53)
			if type(tbl_17) == "table" and 2 <= #tbl_17 then
				var53 = tbl_17[1] * 0 + tbl_17[2] * 1
			else
				var53 = 0
			end
			arg3.creatorTextTransparency(var53)
			if type(tbl_9) == "table" and 2 <= #tbl_9 then
				var53 = tbl_9[1] * 0 + tbl_9[2] * 1
			else
				var53 = 0
			end
			arg3.creatorTextSize(var53)
			arg4()
		end
	end;
}
local function _() -- Line 157, Named "disconnectAndCloseHealthStat"
	--[[ Upvalues[2]:
		[1]: var24_upvw (read and write)
		[2]: GuiService_upvr (readonly)
	]]
	if var24_upvw then
		var24_upvw:disconnect()
		var24_upvw = nil
		GuiService_upvr:CloseStatsBasedOnInputString("ConnectionHealth")
	end
end
local any_extend_result1 = Roact_upvr.Component:extend("LoadingScreen")
function any_extend_result1.playAnimation(arg1, arg2, arg3, arg4) -- Line 168
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	arg1.animationStartTime = tick()
	arg1.animationFunction = arg2
	if not arg1.renderSteppedConnection then
		arg1.renderSteppedConnection = RunService_upvr.RenderStepped:Connect(function() -- Line 173
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: arg3 (readonly)
				[3]: arg4 (readonly)
			]]
			arg1.animationFunction(tick() - arg1.animationStartTime, arg3, arg1.updateBindings, function() -- Line 174
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: arg4 (copied, readonly)
				]]
				arg1:stopAnimation()
				if arg4 then
					arg4()
				end
			end)
		end)
	end
end
function any_extend_result1.stopAnimation(arg1) -- Line 184
	if arg1.renderSteppedConnection then
		arg1.renderSteppedConnection:Disconnect()
		arg1.renderSteppedConnection = nil
	end
end
function any_extend_result1.renderBackground(arg1, arg2) -- Line 191
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: var14_upvw (read and write)
		[3]: ExternalEventConnection_upvr (readonly)
		[4]: RunService_upvr (readonly)
	]]
	local var57
	if arg1.props.placeId and 0 < arg1.props.placeId then
		var57 = "rbxthumb://type=GameThumbnail&id=%d&w=768&h=432":format(arg1.props.placeId)
	end
	local module = {}
	local tbl_7 = {
		ThumbnailImage = Roact_upvr.createElement("ImageLabel", {
			BackgroundTransparency = 1;
			Image = var57;
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.fromScale(arg1.state.thumbnailPositionX, 0.5);
			Size = UDim2.fromOffset(arg1.state.thumbnailScaledWidth, arg1.state.thumbnailScaledHeight);
			ImageTransparency = arg1.bindings.thumbnailTransparency;
		});
	}
	local var63 = not arg2.Settings.ReducedMotion
	if var63 then
		var63 = Roact_upvr.createElement
		var63 = var63(ExternalEventConnection_upvr, {
			event = RunService_upvr.renderStepped;
			callback = arg1.renderBackgroundSteppedCallback;
		})
	end
	tbl_7.renderStepped = var63
	module[1] = Roact_upvr.createElement("Frame", {
		Name = "BackgroundFrame";
		[Roact_upvr.Change.AbsoluteSize] = arg1.onAbsoluteSizeChange;
		BackgroundColor3 = arg2.Theme.BackgroundUIDefault.Color;
		BackgroundTransparency = 0;
		BorderSizePixel = 0;
		Size = UDim2.fromScale(1, 1);
		Position = UDim2.fromScale(0.5, 0.5);
		AnchorPoint = Vector2.new(0.5, 0.5);
		Active = true;
	}, tbl_7)
	return Roact_upvr.createElement("ScreenGui", {
		DisplayOrder = var14_upvw;
		IgnoreGuiInset = true;
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
	}, module)
end
local var65_upvw = 0
local var66_upvw = math.huge
function any_extend_result1.showConnnectionHealthDebugMenu(arg1, arg2) -- Line 233
	--[[ Upvalues[4]:
		[1]: var65_upvw (read and write)
		[2]: var66_upvw (read and write)
		[3]: var22_upvr (readonly)
		[4]: GuiService_upvr (readonly)
	]]
	if var65_upvw == 0 then
		var65_upvw = 1
		var66_upvw = tick()
	else
		if var22_upvr and tick() - var66_upvw <= 0.5 then
			GuiService_upvr:ShowStatsBasedOnInputString("ConnectionHealth")
		end
		var65_upvw = 0
		var66_upvw = math.huge
	end
end
local Color3_fromRGB_result1_upvr = Color3.fromRGB(101, 102, 104)
function any_extend_result1.renderPlaceIcon(arg1, arg2) -- Line 250
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: Color3_fromRGB_result1_upvr (readonly)
		[3]: ExternalEventConnection_upvr (readonly)
		[4]: RunService_upvr (readonly)
	]]
	local var68
	if arg1.props.universeId and 0 < arg1.props.universeId then
		var68 = "rbxthumb://type=GameIcon&id=%d&w=256&h=256":format(arg1.props.universeId)
	end
	local module_2 = {}
	local var71 = not arg2.Settings.ReducedMotion
	if var71 then
		var71 = Roact_upvr.createElement
		local tbl_4 = {
			Corner = Roact_upvr.createElement("UICorner");
		}
		local tbl_15 = {
			Rotation = 25;
			Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.5, 0.5, 0.5)), ColorSequenceKeypoint.new(0.5, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.5, 0.5, 0.5))});
		}
		local tbl_5 = {}
		local tbl_11 = {0.7, 1}
		local var78
		if type(tbl_11) == "table" and 2 <= #tbl_11 then
			local clamped_15 = math.clamp(arg1.bindings.iconTransparency:getValue(), 0, 1)
			var78 = tbl_11[1] * (1 - clamped_15) + tbl_11[2] * clamped_15
		else
			var78 = 0
		end
		local var80
		var78 = 0.5
		local tbl_12 = {0.3, 1}
		if type(tbl_12) == "table" and 2 <= #tbl_12 then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			local clamped_10 = math.clamp(arg1.bindings.iconTransparency:getValue(), 0, 1)
			var80 = tbl_12[1] * (1 - clamped_10) + tbl_12[2] * clamped_10
		else
			var80 = 0
		end
		local var83
		var78 = NumberSequenceKeypoint.new
		var80 = 1
		local tbl_8 = {0.7, 1}
		if type(tbl_8) == "table" and 2 <= #tbl_8 then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			local clamped_18 = math.clamp(arg1.bindings.iconTransparency:getValue(), 0, 1)
			var83 = tbl_8[1] * (1 - clamped_18) + tbl_8[2] * clamped_18
		else
			var83 = 0
		end
		var78 = var78(var80, var83)
		tbl_5[1] = NumberSequenceKeypoint.new(0, var78)
		tbl_5[2] = NumberSequenceKeypoint.new(var78, var80)
		tbl_5[3] = var78
		tbl_15.Transparency = NumberSequence.new(tbl_5)
		tbl_15.Offset = Vector2.new(arg1.state.shimPos, 0)
		tbl_4.Gradient = Roact_upvr.createElement("UIGradient", tbl_15)
		tbl_4.renderStepped = Roact_upvr.createElement(ExternalEventConnection_upvr, {
			event = RunService_upvr.renderStepped;
			callback = arg1.renderShimmerCallback;
		})
		var71 = var71("Frame", {
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.fromScale(0.5, 0.5);
			Size = UDim2.fromScale(1, 1);
			BackgroundColor3 = Color3.new(1, 1, 1);
			BackgroundTransparency = 0;
			ZIndex = 2;
		}, tbl_4)
	end
	module_2.LoadingOverlay = var71
	module_2.GameIconImage = Roact_upvr.createElement("ImageLabel", {
		BackgroundTransparency = 1;
		Image = var68;
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.fromScale(0.5, 0.5);
		Size = UDim2.fromScale(1, 1);
		ImageTransparency = arg1.bindings.iconTransparency;
	}, {
		Corner = Roact_upvr.createElement("UICorner");
	})
	module_2.Corner = Roact_upvr.createElement("UICorner")
	return Roact_upvr.createElement("Frame", {
		Name = "IconFrame";
		BackgroundTransparency = arg1.bindings.iconTransparency;
		BackgroundColor3 = Color3_fromRGB_result1_upvr;
		BorderSizePixel = 0;
		Size = arg1.bindings.iconSize;
		Position = UDim2.fromScale(0.5, 0);
		AnchorPoint = Vector2.new(0.5, 0.5);
		Active = true;
	}, module_2)
end
local VerifiedBadges_upvr = require(Parent.VerifiedBadges)
function any_extend_result1.renderInfoFrame(arg1, arg2) -- Line 311
	--[[ Upvalues[4]:
		[1]: VerifiedBadges_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: var22_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local productInfo = arg1.props.productInfo
	local var91
	if not productInfo or not productInfo.Name then
	end
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var91 = productInfo.Creator
		return var91.Name
	end
	if not productInfo or not INLINED_2() then
	end
	var91 = productInfo
	if var91 then
		var91 = productInfo.Creator.HasVerifiedBadge
	end
	if var91 then
	end
	local module_4 = {
		Name = "InfoFrame";
		BackgroundColor3 = arg2.Theme.BackgroundMuted.Color;
		BackgroundTransparency = arg1.bindings.infoFrameTransparency;
		BorderSizePixel = 0;
		AnchorPoint = Vector2.new(0.5, 0.5);
		AutomaticSize = Enum.AutomaticSize.Y;
		Position = UDim2.fromScale(0.5, 0.5);
	}
	if not arg1.isPortrait or not UDim2.fromScale(1, 0) then
	end
	module_4.Size = UDim2.fromScale(0.6, 0)
	module_4.Active = true
	local module_7 = {
		PlaceIcon = arg1:renderPlaceIcon(arg2);
	}
	local tbl_6 = {
		PlaceLabel = Roact_upvr.createElement("TextLabel", {
			Name = "PlaceLabel";
			BackgroundTransparency = 1;
			TextTransparency = arg1.bindings.placeTextTransparency;
			Size = UDim2.fromScale(0.8, 0);
			AnchorPoint = Vector2.new(0.5, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
			Font = arg2.Font.Title.Font;
			TextSize = arg1.bindings.placeTextSize;
			TextScaled = false;
			TextWrapped = true;
			TextColor3 = arg2.Theme.TextEmphasis.Color;
			TextStrokeTransparency = 1;
			Text = "";
			TextXAlignment = Enum.TextXAlignment.Center;
			TextYAlignment = Enum.TextYAlignment.Center;
			ZIndex = 2;
			LayoutOrder = 1;
			TextTruncate = Enum.TextTruncate.AtEnd;
			RichText = false;
		});
	}
	local tbl_22 = {
		Name = "CreatorLabel";
		BackgroundTransparency = 1;
		TextTransparency = arg1.bindings.creatorTextTransparency;
		Size = UDim2.fromScale(0.6, 0);
		AnchorPoint = Vector2.new(0.5, 1);
		AutomaticSize = Enum.AutomaticSize.Y;
		Font = arg2.Font.CaptionBody.Font;
		TextSize = arg1.bindings.creatorTextSize;
		TextWrapped = true;
		TextScaled = false;
	}
	local Theme = arg2.Theme
	tbl_22.TextColor3 = Theme.TextDefault.Color
	tbl_22.TextStrokeTransparency = 1
	tbl_22.Text = VerifiedBadges_upvr.appendVerifiedBadge("")
	tbl_22.TextXAlignment = Enum.TextXAlignment.Center
	tbl_22.TextYAlignment = Enum.TextYAlignment.Center
	tbl_22.ZIndex = 2
	tbl_22.LayoutOrder = 2
	tbl_22.TextTruncate = Enum.TextTruncate.AtEnd
	tbl_22.RichText = false
	tbl_6.CreatorLabel = Roact_upvr.createElement("TextLabel", tbl_22)
	local tbl_21 = {
		SortOrder = Enum.SortOrder.LayoutOrder;
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
		VerticalAlignment = Enum.VerticalAlignment.Center;
	}
	if var22_upvr then
		Theme = 12
	else
		Theme = 36
	end
	tbl_21.Padding = UDim.new(0, Theme)
	tbl_6.UIListLayout = Roact_upvr.createElement("UIListLayout", tbl_21)
	local tbl_2 = {}
	if var22_upvr then
		-- KONSTANTWARNING: GOTO [408] #266
	end
	tbl_2.PaddingTop = UDim.new(0, 36)
	if var22_upvr then
	else
	end
	tbl_2.PaddingBottom = UDim.new(0, 36)
	tbl_6.Padding = Roact_upvr.createElement("UIPadding", tbl_2)
	module_7.TextLayoutFrame = Roact_upvr.createElement("Frame", {
		Name = "TextLayout";
		BackgroundColor3 = arg2.Theme.BackgroundMuted.Color;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		AnchorPoint = Vector2.new(0.5, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		Position = UDim2.new(0.5, 0, 0, math.clamp(math.max(arg1.state.absoluteSize.X, arg1.state.absoluteSize.Y) / 1024 * tbl_3_upvr[1], tbl_3_upvr[1], tbl_3_upvr[2]) / 2);
		Size = UDim2.fromScale(1, 0);
		Active = true;
	}, tbl_6)
	module_7.Corner = Roact_upvr.createElement("UICorner")
	return Roact_upvr.createElement("Frame", module_4, module_7)
end
local LoadingSpinner_upvr = UIBlox.App.Loading.LoadingSpinner
function any_extend_result1.renderMain(arg1, arg2) -- Line 404
	--[[ Upvalues[6]:
		[1]: var22_upvr (readonly)
		[2]: tbl_20_upvr (readonly)
		[3]: any_IsTenFootInterface_result1_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: var14_upvw (read and write)
		[6]: LoadingSpinner_upvr (readonly)
	]]
	local var102
	if var22_upvr then
		local function INLINED_3() -- Internal function, doesn't exist in bytecode
			var102 = tbl_20_upvr.MOBILE_PORTRAIT
			return var102
		end
		if not arg1.isPortrait or not INLINED_3() then
			var102 = tbl_20_upvr.MOBILE_LANDSCAPE
			-- KONSTANTWARNING: GOTO [23] #19
		end
	elseif any_IsTenFootInterface_result1_upvr then
		var102 = tbl_20_upvr.CONSOLE
	else
		var102 = tbl_20_upvr.DESKTOP
	end
	local module_6 = {}
	local tbl_14 = {
		Gradient = Roact_upvr.createElement("UIGradient", {
			Rotation = 90;
			Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0, 0, 0)), ColorSequenceKeypoint.new(0.5, Color3.new(0, 0, 0)), ColorSequenceKeypoint.new(1, Color3.new(0, 0, 0))});
			Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.5, 1), NumberSequenceKeypoint.new(1, 0.5)});
		});
	}
	local ReducedMotion = arg2.Settings.ReducedMotion
	if ReducedMotion then
		ReducedMotion = Roact_upvr.createElement
		ReducedMotion = ReducedMotion("Frame", {
			Size = UDim2.fromScale(1, 1);
			BackgroundColor3 = Color3.new(1, 1, 1);
			BackgroundTransparency = 1;
			ZIndex = 20;
		}, {Roact_upvr.createElement(LoadingSpinner_upvr, {
			size = UDim2.fromOffset(30, 30);
			position = UDim2.new(1, 0, 1, 0);
			anchorPoint = Vector2.new(1, 1);
			rotationRate = 180;
		})})
	end
	tbl_14.Spinner = ReducedMotion
	tbl_14.infoFrame = arg1:renderInfoFrame(arg2)
	tbl_14.serverFrame = arg1:renderServerFrame(arg2)
	tbl_14.closeBtn = arg1:renderCloseBtn(arg2)
	tbl_14.tenfootCancelBtn = arg1:renderTenFootCancelBtn(arg2)
	tbl_14.Padding = Roact_upvr.createElement("UIPadding", {
		PaddingLeft = UDim.new(0, var102.LEFT);
		PaddingRight = UDim.new(0, var102.RIGHT);
		PaddingTop = UDim.new(0, var102.TOP);
		PaddingBottom = UDim.new(0, var102.BOTTOM);
	})
	module_6.DarkGradient = Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 0;
		BorderSizePixel = 0;
		Size = UDim2.fromScale(1, 1);
		Position = UDim2.fromScale(0.5, 0.5);
		AnchorPoint = Vector2.new(0.5, 0.5);
	}, tbl_14)
	return Roact_upvr.createElement("ScreenGui", {
		DisplayOrder = var14_upvw + 1;
		IgnoreGuiInset = true;
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
		OnTopOfCoreBlur = true;
	}, module_6)
end
local GetFFlagReportFirstExperienceCancelled_upvr = require(ExperienceLoadingScript.Flags.GetFFlagReportFirstExperienceCancelled)
local LoggingProtocol_upvr = require(Parent.LoggingProtocol)
function any_extend_result1.renderCloseBtn(arg1, arg2) -- Line 461
	--[[ Upvalues[4]:
		[1]: any_IsTenFootInterface_result1_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: GetFFlagReportFirstExperienceCancelled_upvr (readonly)
		[4]: LoggingProtocol_upvr (readonly)
	]]
	if not arg1.state.showCloseBtn and 5 < tick() - arg1.startTime and not any_IsTenFootInterface_result1_upvr then
		arg1:setState({
			showCloseBtn = true;
		})
	end
	local showCloseBtn = arg1.state.showCloseBtn
	if showCloseBtn then
		showCloseBtn = Roact_upvr.createElement
		showCloseBtn = showCloseBtn("ImageButton", {
			Name = "CloseButton";
			Image = "rbxasset://textures/loading/cancelButton.png";
			ImageTransparency = 0;
			BackgroundTransparency = 1;
			Position = UDim2.fromOffset(0, 0);
			Size = UDim2.fromOffset(32, 32);
			Active = false;
			ZIndex = 10;
			[Roact_upvr.Event.MouseButton1Click] = function() -- Line 477
				--[[ Upvalues[2]:
					[1]: GetFFlagReportFirstExperienceCancelled_upvr (copied, readonly)
					[2]: LoggingProtocol_upvr (copied, readonly)
				]]
				if GetFFlagReportFirstExperienceCancelled_upvr then
					LoggingProtocol_upvr.default:logEventOnce("first_experience_cancelled")
				end
				game:Shutdown()
			end;
		})
	end
	return showCloseBtn
end
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("FixServerInfoLocalization", false)
function any_extend_result1.renderServerFrame(arg1, arg2) -- Line 486
	--[[ Upvalues[5]:
		[1]: any_IsTenFootInterface_result1_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: any_GetTranslator_result1_upvr (readonly)
		[4]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[5]: CoreGui_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local props = arg1.props
	local var123
	if var123 then
		props = 16
	else
		props = 12
	end
	if any_IsTenFootInterface_result1_upvr then
		var123 = 16
	else
		var123 = 12
	end
	local module_5 = {}
	if props.isSubjectToChinaPolicies then
	end
	module_5.PolicyLabel = Roact_upvr.createElement("TextLabel", {
		Name = "PolicyLabel";
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 0, 2 * var123);
		Position = UDim2.new(0, 0, 1, -4 * props - 2 * var123);
		Font = arg2.Font.Footer.Font;
		TextSize = var123;
		TextWrapped = true;
		TextScaled = false;
		TextColor3 = arg2.Theme.TextDefault.Color;
		TextStrokeTransparency = 1;
		Text = any_GetTranslator_result1_upvr:FormatByKey("Authentication.Login.WeChat.AntiAddictionText");
		TextXAlignment = Enum.TextXAlignment.Center;
		TextYAlignment = Enum.TextYAlignment.Center;
		ZIndex = 2;
	})
	local tbl = {
		Name = "JoinText";
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 0, 4 * props);
		Position = UDim2.new(0, 0, 1, -2 * props);
		Font = arg2.Font.Footer.Font;
		TextSize = props;
		TextWrapped = true;
		TextScaled = false;
		TextColor3 = arg2.Theme.TextDefault.Color;
		TextStrokeTransparency = 1;
		Text = arg1.state.serverStatusText;
		TextXAlignment = Enum.TextXAlignment.Center;
		TextYAlignment = Enum.TextYAlignment.Center;
	}
	local var128 = 2
	tbl.ZIndex = var128
	if game_DefineFastFlag_result1_upvr_2 then
		var128 = CoreGui_upvr.CoreScriptLocalization
	else
		var128 = nil
	end
	tbl.RootLocalizationTable = var128
	if arg1.props.isSubjectToChinaPolicies or not arg1.showConnnectionHealthDebugMenu then
	end
	tbl[Roact_upvr.Event.InputBegan] = nil
	module_5.JoinServerLabel = Roact_upvr.createElement("TextLabel", tbl)
	return Roact_upvr.createElement("Frame", {
		Name = "ServerFrame";
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		AnchorPoint = Vector2.new(0.5, 1);
		Position = UDim2.fromScale(0.5, 1);
		Size = UDim2.new(1, -48, 0.2, 0);
		Active = true;
	}, module_5)
end
function any_extend_result1.renderTenFootCancelBtn(arg1, arg2) -- Line 539
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: any_GetTranslator_result1_upvr (readonly)
	]]
	local showTenFootCancelBtn = arg1.state.showTenFootCancelBtn
	if showTenFootCancelBtn then
		showTenFootCancelBtn = Roact_upvr.createElement
		showTenFootCancelBtn = showTenFootCancelBtn("Frame", {
			Name = "TenfootCancelFrame";
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			AnchorPoint = Vector2.new(0, 1);
			Position = UDim2.fromScale(0, 1);
			Size = UDim2.fromOffset(150, 48);
			Active = true;
		}, {
			CancelIcon = Roact_upvr.createElement("ImageLabel", {
				Name = "TenfootCancel";
				Image = "rbxasset://textures/ui/Controls/DesignSystem/ButtonB@2x.png";
				BackgroundTransparency = 1;
				Size = UDim2.fromOffset(24, 24);
				Active = false;
				ZIndex = 10;
				LayoutOrder = 0;
			});
			CancelLabel = Roact_upvr.createElement("TextLabel", {
				Name = "CancelText";
				BackgroundTransparency = 1;
				Size = UDim2.fromScale(1, 1);
				Font = arg2.Font.SubHeader1.Font;
				TextSize = 24;
				TextWrapped = true;
				TextColor3 = arg2.Theme.TextEmphasis.Color;
				TextStrokeTransparency = 1;
				Text = any_GetTranslator_result1_upvr:FormatByKey("CoreScripts.TopBar.Back");
				TextXAlignment = Enum.TextXAlignment.Left;
				TextYAlignment = Enum.TextYAlignment.Center;
				ZIndex = 2;
				LayoutOrder = 1;
			});
			UIListLayout = Roact_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				HorizontalAlignment = Enum.HorizontalAlignment.Left;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				FillDirection = Enum.FillDirection.Horizontal;
				Padding = UDim.new(0, 5);
			});
		})
	end
	return showTenFootCancelBtn
end
local vector2_upvr = Vector2.new(768, 432)
function any_extend_result1.init(arg1) -- Line 584
	--[[ Upvalues[9]:
		[1]: vector2_upvr (readonly)
		[2]: any_IsTenFootInterface_result1_upvr (readonly)
		[3]: ContextActionService_upvr (readonly)
		[4]: tbl_18_upvr (readonly)
		[5]: Roact_upvr (readonly)
		[6]: tbl_3_upvr (readonly)
		[7]: var22_upvr (readonly)
		[8]: GuiService_upvr (readonly)
		[9]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	arg1.thumbnailMoveSpd = 0.05
	arg1.fadeinComplete = false
	arg1.isPortrait = false
	arg1.startTime = tick()
	arg1.numberOfTaps = 0
	arg1.lastTapTime = math.huge
	arg1:setState({
		visible = true;
		absoluteSize = Vector2.new(0, 0);
		thumbnailPositionX = 0.5;
		thumbnailScaledWidth = vector2_upvr.x;
		thumbnailScaledHeight = vector2_upvr.y;
		shimPos = 0;
		serverStatusText = "";
		showCloseBtn = false;
		showTenFootCancelBtn = any_IsTenFootInterface_result1_upvr;
	})
	function arg1.onAbsoluteSizeChange(arg1_2) -- Line 608
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			absoluteSize = arg1_2.AbsoluteSize;
		})
		local var139
		if arg1_2.AbsoluteSize.X >= arg1_2.AbsoluteSize.Y then
			var139 = false
		else
			var139 = true
		end
		arg1.isPortrait = var139
		var139 = arg1.updateBindings
		var139 = 1
		var139.iconSize(var139)
	end
	game.Loaded:Connect(function() -- Line 617
		--[[ Upvalues[4]:
			[1]: any_IsTenFootInterface_result1_upvr (copied, readonly)
			[2]: ContextActionService_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: tbl_18_upvr (copied, readonly)
		]]
		if any_IsTenFootInterface_result1_upvr then
			ContextActionService_upvr:UnbindCoreAction("CancelGameLoad")
		end
		while not arg1.fadeinComplete do
			wait()
		end
		arg1:stopAnimation()
		arg1:playAnimation(tbl_18_upvr.FadeOut, {}, function() -- Line 625
			--[[ Upvalues[1]:
				[1]: arg1 (copied, readonly)
			]]
			arg1:setState({
				visible = false;
			})
		end)
	end)
	local any_createBinding_result1_4, any_createBinding_result2_8 = Roact_upvr.createBinding(1)
	local any_createBinding_result1_7, any_createBinding_result2_7 = Roact_upvr.createBinding(1)
	local any_createBinding_result1_5, any_createBinding_result2_3 = Roact_upvr.createBinding(0)
	local any_createBinding_result1_3, any_createBinding_result2 = Roact_upvr.createBinding(1)
	local any_createBinding_result1_6, any_createBinding_result2_6 = Roact_upvr.createBinding(0)
	local any_createBinding_result1_2, any_createBinding_result2_5 = Roact_upvr.createBinding(1)
	local any_createBinding_result1, any_createBinding_result2_4 = Roact_upvr.createBinding(0)
	local any_createBinding_result1_8, any_createBinding_result2_2 = Roact_upvr.createBinding(1)
	arg1.bindings = {
		thumbnailTransparency = any_createBinding_result1_4;
		iconTransparency = any_createBinding_result1_7;
		iconSize = any_createBinding_result1_5:map(function(arg1_3) -- Line 645
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: tbl_3_upvr (copied, readonly)
			]]
			local clamped_8 = math.clamp(math.max(arg1.state.absoluteSize.X, arg1.state.absoluteSize.Y) / 1024 * tbl_3_upvr[1], tbl_3_upvr[1], tbl_3_upvr[2])
			return UDim2.fromOffset(clamped_8 * arg1_3, clamped_8 * arg1_3)
		end);
		placeTextTransparency = any_createBinding_result1_3;
		placeTextSize = any_createBinding_result1_6:map(function(arg1_4) -- Line 651
			--[[ Upvalues[1]:
				[1]: var22_upvr (copied, readonly)
			]]
			local var163
			if var22_upvr then
				var163 = 20
			else
				var163 = 36
			end
			return var163 * arg1_4
		end);
		creatorTextTransparency = any_createBinding_result1_2;
		creatorTextSize = any_createBinding_result1:map(function(arg1_5) -- Line 655
			return 20 * arg1_5
		end);
		infoFrameTransparency = any_createBinding_result1_8;
	}
	arg1.updateBindings = {
		thumbnailTransparency = any_createBinding_result2_8;
		iconTransparency = any_createBinding_result2_7;
		iconSize = any_createBinding_result2_3;
		placeTextTransparency = any_createBinding_result2;
		placeTextSize = any_createBinding_result2_6;
		creatorTextTransparency = any_createBinding_result2_5;
		creatorTextSize = any_createBinding_result2_4;
		infoFrameTransparency = any_createBinding_result2_2;
	}
	function arg1.renderBackgroundSteppedCallback(arg1_6) -- Line 673
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: vector2_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local absoluteSize = arg1.state.absoluteSize
		local var168 = absoluteSize.x * 1.5
		local var169 = var168 / vector2_upvr.x * vector2_upvr.y
		if var169 < absoluteSize.y then
			var168 = absoluteSize.y / vector2_upvr.y * vector2_upvr.x
			var169 = absoluteSize.y
		end
		local var170 = var168 / absoluteSize.x / 2
		local maximum = math.max(var170, 1 - var170)
		local minimum = math.min(var170, 1 - var170)
		local var173 = arg1.state.thumbnailPositionX + arg1.thumbnailMoveSpd * arg1_6
		if maximum <= var173 or var173 <= minimum then
			arg1.thumbnailMoveSpd = -arg1.thumbnailMoveSpd
		end
		arg1:setState({
			thumbnailPositionX = math.clamp(var173, minimum, maximum);
			thumbnailScaledHeight = var169;
			thumbnailScaledWidth = var168;
		})
	end
	function arg1.renderShimmerCallback(arg1_7) -- Line 700
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var176 = arg1.state.shimPos + arg1_7 * 1
		if 1 < var176 then
			var176 = -1
		end
		arg1:setState({
			shimPos = var176;
		})
	end
	if GuiService_upvr:GetUiMessage() ~= "" then
		arg1:setState({
			serverStatusText = GuiService_upvr:GetUiMessage();
		})
	end
	GuiService_upvr.UiMessageChanged:Connect(function(arg1_8, arg2) -- Line 717
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1_8 == Enum.UiMessageType.UiMessageInfo then
			local tbl_10 = {}
			tbl_10.serverStatusText = arg2
			arg1:setState(tbl_10)
		end
	end)
	if any_IsTenFootInterface_result1_upvr then
		local var182_upvw = false
		ContextActionService_upvr:BindCoreAction("CancelGameLoad", function(arg1_9, arg2, arg3) -- Line 727
			--[[ Upvalues[4]:
				[1]: var182_upvw (read and write)
				[2]: arg1 (readonly)
				[3]: ContextActionService_upvr (copied, readonly)
				[4]: game_DefineFastFlag_result1_upvr (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [4] 3. Error Block 2 start (CF ANALYSIS FAILED)
			var182_upvw = true
			do
				return
			end
			-- KONSTANTERROR: [4] 3. Error Block 2 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [7] 6. Error Block 3 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [7] 6. Error Block 3 end (CF ANALYSIS FAILED)
		end, false, Enum.KeyCode.ButtonB)
	end
end
local withStyle_upvr = UIBlox.Style.withStyle
function any_extend_result1.render(arg1) -- Line 749
	--[[ Upvalues[2]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_10) -- Line 752
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
		]]
		local visible = arg1.state.visible
		if visible then
			visible = Roact_upvr.createElement
			visible = visible("Folder", {}, {
				BackgroundScreen = arg1:renderBackground(arg1_10);
				MainScreen = arg1:renderMain(arg1_10);
			})
		end
		return visible
	end)
end
function any_extend_result1.willUpdate(arg1, arg2, arg3) -- Line 761
end
function any_extend_result1.didMount(arg1) -- Line 763
	--[[ Upvalues[2]:
		[1]: RunService_upvr (readonly)
		[2]: tbl_18_upvr (readonly)
	]]
	RunService_upvr:SetRobloxGuiFocused(true)
	arg1.props.fetchUniverseId(arg1.props.placeId)
	arg1.props.fetchGameProductInfo(arg1.props.placeId)
	arg1.props.fetchSubjectToChinaPolicies()
	arg1:playAnimation(tbl_18_upvr.FadeIn, {}, function() -- Line 772
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.fadeinComplete = true
	end)
end
function any_extend_result1.willUnmount(arg1) -- Line 777
	--[[ Upvalues[7]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: any_IsTenFootInterface_result1_upvr (readonly)
		[3]: ContextActionService_upvr (readonly)
		[4]: RunService_upvr (readonly)
		[5]: var24_upvw (read and write)
		[6]: UserInputService_upvr (readonly)
		[7]: GuiService_upvr (readonly)
	]]
	if game_DefineFastFlag_result1_upvr and any_IsTenFootInterface_result1_upvr then
		ContextActionService_upvr:UnbindCoreAction("CancelGameLoad")
	end
	RunService_upvr:SetRobloxGuiFocused(false)
	if not var24_upvw then
		var24_upvw = UserInputService_upvr.InputBegan:Connect(function() -- Line 786
			--[[ Upvalues[2]:
				[1]: var24_upvw (copied, read and write)
				[2]: GuiService_upvr (copied, readonly)
			]]
			if var24_upvw then
				var24_upvw:disconnect()
				var24_upvw = nil
				GuiService_upvr:CloseStatsBasedOnInputString("ConnectionHealth")
			end
		end)
	end
end
local GetGameProductInfo_upvr = require(ExperienceLoadingScript.Thunks.GetGameProductInfo)
local GetIsSubjectToChinaPolicies_upvr = require(ExperienceLoadingScript.Thunks.GetIsSubjectToChinaPolicies)
local GetUniverseId_upvr = require(ExperienceLoadingScript.Thunks.GetUniverseId)
local any_requestInternalWrapper_result1_upvr = require(Parent.Http).NetworkLayers.requestInternalWrapper(game:GetService("HttpRbxApiService"))
return InGameMenuDependencies.RoactRodux.connect(function(arg1, arg2) -- Line 792
	local module_3 = {
		productInfo = arg1.productInfo;
		isSubjectToChinaPolicies = arg1.isSubjectToChinaPolicies;
	}
	local var191
	local function INLINED_4() -- Internal function, doesn't exist in bytecode
		var191 = arg1.gameIds.placeId
		return var191
	end
	if not arg1.gameIds or not INLINED_4() then
		var191 = arg2.placeId
	end
	module_3.placeId = var191
	local function INLINED_5() -- Internal function, doesn't exist in bytecode
		var191 = arg1.gameIds.universeId
		return var191
	end
	if not arg1.gameIds or not INLINED_5() then
		var191 = 0
	end
	module_3.universeId = var191
	var191 = arg1.settings
	module_3.settings = var191
	return module_3
end, function(arg1) -- Line 800
	--[[ Upvalues[4]:
		[1]: GetGameProductInfo_upvr (readonly)
		[2]: GetIsSubjectToChinaPolicies_upvr (readonly)
		[3]: GetUniverseId_upvr (readonly)
		[4]: any_requestInternalWrapper_result1_upvr (readonly)
	]]
	return {
		fetchGameProductInfo = function(arg1_11) -- Line 802, Named "fetchGameProductInfo"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: GetGameProductInfo_upvr (copied, readonly)
			]]
			arg1(GetGameProductInfo_upvr(arg1_11))
		end;
		fetchSubjectToChinaPolicies = function() -- Line 805, Named "fetchSubjectToChinaPolicies"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: GetIsSubjectToChinaPolicies_upvr (copied, readonly)
			]]
			arg1(GetIsSubjectToChinaPolicies_upvr())
		end;
		fetchUniverseId = function(arg1_12) -- Line 808, Named "fetchUniverseId"
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: GetUniverseId_upvr (copied, readonly)
				[3]: any_requestInternalWrapper_result1_upvr (copied, readonly)
			]]
			arg1(GetUniverseId_upvr(any_requestInternalWrapper_result1_upvr, arg1_12))
		end;
	}
end)(any_extend_result1)