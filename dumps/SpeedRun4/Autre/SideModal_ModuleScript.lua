-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:35:25
-- Luau version 6, Types version 3
-- Time taken: 0.006228 seconds

local Parent = script:FindFirstAncestor("GenericAbuseReporting").Parent
local Foundation = require(Parent.Foundation)
local tbl_3_upvr = {
	stiffness = 400;
	damping = 40;
	mass = 1;
	restingPositionLimit = 0.5;
	restingVelocityLimit = 0.1;
}
local function _(arg1) -- Line 52, Named "isFullWidth"
	local var4
	if arg1 >= 540 then
		var4 = false
	else
		var4 = true
	end
	return var4
end
local function getAnchorPoint_upvr(arg1) -- Line 56, Named "getAnchorPoint"
	local var5
	if arg1.X >= 540 then
		var5 = false
	else
		var5 = true
	end
	if var5 then
		var5 = Vector2.new(0.5, 1)
		return var5
	end
	var5 = Vector2.new(0, 0)
	return var5
end
local function getSize_upvr(arg1, arg2, arg3) -- Line 64, Named "getSize"
	local var6
	if arg1.X >= 540 then
		var6 = false
	else
		var6 = true
	end
	if var6 then
		var6 = UDim2.new(0, arg1.X, 0, arg3)
		return var6
	end
	var6 = UDim2.new(0, arg2, 0, arg1.Y)
	return var6
end
local function getPosition_upvr(arg1, arg2) -- Line 72, Named "getPosition"
	local var7
	if arg1.X >= 540 then
		var7 = false
	else
		var7 = true
	end
	if var7 then
		var7 = UDim2.new(0.5, 0, 1, 0)
		return var7
	end
	var7 = UDim2.new(1, -arg2, 0, 0)
	return var7
end
local useTokens_upvr = Foundation.Hooks.useTokens
local React_upvr = require(Parent.React)
local ReactOtter_upvr = require(Parent.ReactOtter)
local View_upvr = Foundation.View
local IconButton_upvr = Foundation.IconButton
local IconSize_upvr = Foundation.Enums.IconSize
local Text_upvr = Foundation.Text
local Button_upvr = Foundation.Button
local ButtonVariant_upvr = Foundation.Enums.ButtonVariant
local ButtonSize_upvr = Foundation.Enums.ButtonSize
local FillBehavior_upvr = Foundation.Enums.FillBehavior
return function(arg1) -- Line 80, Named "SideModal"
	--[[ Upvalues[15]:
		[1]: useTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: getAnchorPoint_upvr (readonly)
		[4]: getSize_upvr (readonly)
		[5]: getPosition_upvr (readonly)
		[6]: ReactOtter_upvr (readonly)
		[7]: tbl_3_upvr (readonly)
		[8]: View_upvr (readonly)
		[9]: IconButton_upvr (readonly)
		[10]: IconSize_upvr (readonly)
		[11]: Text_upvr (readonly)
		[12]: Button_upvr (readonly)
		[13]: ButtonVariant_upvr (readonly)
		[14]: ButtonSize_upvr (readonly)
		[15]: FillBehavior_upvr (readonly)
	]]
	local var8_result1 = useTokens_upvr()
	local any_useState_result1_5, any_useState_result2_upvr_2 = React_upvr.useState(getAnchorPoint_upvr(arg1.screenSize))
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(getSize_upvr(arg1.screenSize, arg1.width, arg1.height))
	local any_useState_result1_4, any_useState_result2_upvr_5 = React_upvr.useState(getPosition_upvr(arg1.screenSize, arg1.width))
	local any_useState_result1_3_upvr, any_useState_result2_upvr_4 = React_upvr.useState(true)
	local any_useState_result1_2_upvr, any_useState_result2_upvr_3 = React_upvr.useState(false)
	local any_useAnimatedBinding_result1, any_useAnimatedBinding_result2_upvr = ReactOtter_upvr.useAnimatedBinding(1, function() -- Line 88
		--[[ Upvalues[3]:
			[1]: any_useState_result1_3_upvr (readonly)
			[2]: any_useState_result1_2_upvr (readonly)
			[3]: arg1 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [4] 5. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [4] 5. Error Block 3 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [15] 13. Error Block 8 start (CF ANALYSIS FAILED)
		if arg1.onAbandon then
			arg1.onAbandon()
		end
		-- KONSTANTERROR: [15] 13. Error Block 8 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [23] 19. Error Block 7 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [23] 19. Error Block 7 end (CF ANALYSIS FAILED)
	end)
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 103
		--[[ Upvalues[1]:
			[1]: any_useState_result1_3_upvr (readonly)
		]]
		if any_useState_result1_3_upvr then
			return 0
		end
		return 1
	end, {any_useState_result1_3_upvr})
	React_upvr.useEffect(function() -- Line 107
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: any_useState_result2_upvr_4 (readonly)
		]]
		if arg1.closeWithAnimation then
			any_useState_result2_upvr_4(false)
		end
	end, {arg1.closeWithAnimation})
	React_upvr.useEffect(function() -- Line 113
		--[[ Upvalues[4]:
			[1]: any_useAnimatedBinding_result2_upvr (readonly)
			[2]: ReactOtter_upvr (copied, readonly)
			[3]: any_useMemo_result1_upvr (readonly)
			[4]: tbl_3_upvr (copied, readonly)
		]]
		any_useAnimatedBinding_result2_upvr(ReactOtter_upvr.spring(any_useMemo_result1_upvr, tbl_3_upvr))
	end, {any_useMemo_result1_upvr})
	React_upvr.useEffect(function() -- Line 117
		--[[ Upvalues[7]:
			[1]: any_useState_result2_upvr_2 (readonly)
			[2]: getAnchorPoint_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: any_useState_result2_upvr (readonly)
			[5]: getSize_upvr (copied, readonly)
			[6]: any_useState_result2_upvr_5 (readonly)
			[7]: getPosition_upvr (copied, readonly)
		]]
		any_useState_result2_upvr_2(getAnchorPoint_upvr(arg1.screenSize))
		any_useState_result2_upvr(getSize_upvr(arg1.screenSize, arg1.width, arg1.height))
		any_useState_result2_upvr_5(getPosition_upvr(arg1.screenSize, arg1.width))
	end, {arg1.screenSize})
	local any_useCallback_result1 = React_upvr.useCallback(function() -- Line 123
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr_4 (readonly)
		]]
		any_useState_result2_upvr_4(false)
	end, {any_useState_result2_upvr_4})
	local module = {}
	local tbl_4 = {}
	local tbl_5 = {
		IconRow = React_upvr.createElement(View_upvr, {
			Size = UDim2.new(1, 0, 0, 32);
			tag = "padding-left-medium";
			LayoutOrder = 0;
		}, {
			IconButton = React_upvr.createElement(IconButton_upvr, {
				icon = "icons/navigation/pushBack";
				size = IconSize_upvr.Medium;
				tag = "anchor-center-left position-center-left";
				onActivated = any_useCallback_result1;
			});
		});
	}
	local tbl_2 = {
		Title = React_upvr.createElement(Text_upvr, {
			fontStyle = var8_result1.Typography.TitleLarge;
			textStyle = var8_result1.Color.Content.Emphasis;
			Text = arg1.title;
			TextWrapped = true;
			Size = UDim2.new(1, 0, 0, 32);
			tag = "auto-xy";
		});
	}
	tbl_5.TitleRow = React_upvr.createElement(View_upvr, {
		Size = UDim2.new(1, 0, 0, 32);
		tag = "auto-xy";
		LayoutOrder = 1;
	}, tbl_2)
	local tbl = {}
	tbl_2 = true
	local var63 = tbl_2
	tbl.ClipsDescendants = var63
	if arg1.buttonProps then
		var63 = UDim2.new(1, 0, 1, -116)
	else
		var63 = UDim2.new(1, 0, 1, -84)
	end
	tbl.Size = var63
	tbl.tag = "padding-x-medium"
	tbl.LayoutOrder = 2
	tbl_5.Content = React_upvr.createElement(View_upvr, tbl, {
		MiddleContent = React_upvr.createElement(View_upvr, {
			tag = "size-full";
		}, arg1.children);
	})
	local buttonProps = arg1.buttonProps
	if buttonProps then
		buttonProps = React_upvr.createElement
		buttonProps = buttonProps(View_upvr, {
			Size = UDim2.new(1, 0, 0, 32);
			tag = "padding-x-medium padding-bottom-medium";
			LayoutOrder = 3;
		}, {
			Button = React_upvr.createElement(Button_upvr, {
				text = arg1.buttonProps.text;
				variant = ButtonVariant_upvr.Emphasis;
				onActivated = React_upvr.useCallback(function() -- Line 127
					--[[ Upvalues[3]:
						[1]: arg1 (readonly)
						[2]: any_useState_result2_upvr_3 (readonly)
						[3]: any_useState_result2_upvr_4 (readonly)
					]]
					if arg1.buttonProps and arg1.buttonProps.validateState and not arg1.buttonProps.validateState() then
					else
						any_useState_result2_upvr_3(true)
						any_useState_result2_upvr_4(false)
					end
				end, {any_useState_result2_upvr_4, any_useState_result2_upvr_3, arg1.buttonProps});
				isDisabled = false;
				size = ButtonSize_upvr.Small;
				fillBehavior = FillBehavior_upvr.Fill;
			});
		})
	end
	tbl_5.ButtonRow = buttonProps
	tbl_4.SideModal = React_upvr.createElement(View_upvr, {
		AnchorPoint = any_useState_result1_5;
		Position = any_useState_result1_4;
		Size = any_useState_result1;
		tag = "bg-surface-300 radius-medium col";
	}, tbl_5)
	module.SideModalContainer = React_upvr.createElement(View_upvr, {
		AnchorPoint = Vector2.new(1, 0);
		Position = any_useAnimatedBinding_result1:map(function(arg1_3) -- Line 153
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local var52
			if arg1.screenSize.X >= 540 then
				var52 = false
			else
				var52 = true
			end
			if var52 then
				var52 = 1
				return UDim2.new(var52, 0, 0, arg1.height * arg1_3)
			end
			var52 = 1
			return UDim2.new(var52, arg1.width * arg1_3, 0, 0)
		end);
		tag = "size-full";
	}, tbl_4)
	return React_upvr.createElement("TextButton", {
		AutoButtonColor = false;
		BorderSizePixel = 0;
		BackgroundTransparency = any_useAnimatedBinding_result1:map(function(arg1_2) -- Line 141
			return arg1_2 + 0.3
		end);
		BackgroundColor3 = Color3.fromHex("#000000");
		Text = "";
		Size = UDim2.new(1, 0, 1, 0);
		Position = UDim2.fromScale(0.5, 0.5);
		AnchorPoint = Vector2.new(0.5, 0.5);
		[React_upvr.Event.Activated] = any_useCallback_result1;
	}, module)
end