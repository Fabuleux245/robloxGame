-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:26
-- Luau version 6, Types version 3
-- Time taken: 0.010651 seconds

local Parent = script.Parent.Parent.Parent
local Parent_2 = Parent.Parent
local UserInputService_upvr = game:GetService("UserInputService")
local var4_upvr = 0
if UserInputService_upvr:GetPlatform() == Enum.Platform.OSX then
	var4_upvr = "Opt"
else
	var4_upvr = "Alt"
end
local useStyle_upvr = require(Parent_2.UIBlox).Core.Style.useStyle
local React_upvr = require(Parent_2.React)
local CapturesContext_upvr = require(Parent.Context.CapturesContext)
local GuiService_upvr = game:GetService("GuiService")
local useLocalization_upvr = require(Parent_2.Localization).Hooks.useLocalization
local useKeyboardEnabled_upvr = require(Parent.Hooks.useKeyboardEnabled)
local Text_upvr = require(Parent_2.AppCommonLib).Text
local udim_upvr = UDim.new(var4_upvr, 8)
local OnOffButton_upvr = require(Parent.Components.CoreUI.OnOffButton)
local VideoCaptureCTA_upvr = require(Parent.Components.CoreUI.VideoCaptureCTA)
return require(Parent.App.CapturesPolicy).connect(function(arg1) -- Line 222
	return {
		eligibleForVideoCapture = arg1.eligibleForVideoCapture();
	}
end)(function(arg1) -- Line 44
	--[[ Upvalues[12]:
		[1]: useStyle_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: CapturesContext_upvr (readonly)
		[4]: GuiService_upvr (readonly)
		[5]: useLocalization_upvr (readonly)
		[6]: var4_upvr (readonly)
		[7]: UserInputService_upvr (readonly)
		[8]: useKeyboardEnabled_upvr (readonly)
		[9]: Text_upvr (readonly)
		[10]: udim_upvr (readonly)
		[11]: OnOffButton_upvr (readonly)
		[12]: VideoCaptureCTA_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var6_result1 = useStyle_upvr()
	local chromeEnabled = React_upvr.useContext(CapturesContext_upvr).chromeEnabled
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(Vector2.new(0, 0))
	local any_useState_result1_2, any_useState_result2_upvr_2 = React_upvr.useState(GuiService_upvr.PreferredTextSize)
	React_upvr.useEffect(function() -- Line 51
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr_2 (readonly)
			[2]: GuiService_upvr (copied, readonly)
		]]
		local any_Connect_result1_upvr = GuiService_upvr:GetPropertyChangedSignal("PreferredTextSize"):Connect(function() -- Line 52, Named "onPreferredTextSizeChangedSignal"
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr_2 (copied, readonly)
				[2]: GuiService_upvr (copied, readonly)
			]]
			any_useState_result2_upvr_2(GuiService_upvr.PreferredTextSize)
		end)
		return function() -- Line 58
			--[[ Upvalues[1]:
				[1]: any_Connect_result1_upvr (readonly)
			]]
			any_Connect_result1_upvr:Disconnect()
		end
	end, {})
	local tbl_3 = {
		capturesTitle = "Feature.Captures.Title.Captures";
		educationalText = "Feature.Captures.Label.EducationalText";
	}
	local tbl_2_upvr = {
		keyOne = var4_upvr;
		keyTwo = UserInputService_upvr:GetStringForKeyCode(Enum.KeyCode.One);
		"Feature.Captures.Label.HotkeyEducationalText"
	}
	tbl_3.hotkeyEducationalText = tbl_2_upvr
	local var27
	if useKeyboardEnabled_upvr() then
		tbl_2_upvr = useLocalization_upvr(tbl_3).hotkeyEducationalText
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_2_upvr = useLocalization_upvr(tbl_3).educationalText
	end
	local Color = var6_result1.Theme.BackgroundDefault.Color
	local Transparency = var6_result1.Theme.BackgroundDefault.Transparency
	local Font_upvr = var6_result1.Font.CaptionBody.Font
	local var31_upvr = var6_result1.Font.BaseSize * var6_result1.Font.CaptionBody.RelativeSize
	var27 = var6_result1.Font
	var27 = {}
	var27[1] = Font_upvr
	var27[2] = var31_upvr
	var27[3] = any_useState_result1_2
	var27[4] = tbl_2_upvr
	local any_useMemo_result1 = React_upvr.useMemo(function() -- Line 96
		--[[ Upvalues[4]:
			[1]: Text_upvr (copied, readonly)
			[2]: tbl_2_upvr (readonly)
			[3]: Font_upvr (readonly)
			[4]: var31_upvr (readonly)
		]]
		return Text_upvr.GetTextWidth(tbl_2_upvr, Font_upvr, var31_upvr)
	end, var27)
	local X = any_useState_result1.X
	if any_useMemo_result1 >= X - 224 - 24 then
		var27 = false
	else
		var27 = true
	end
	if not var27 then
		if any_useMemo_result1 >= X - 24 then
		else
		end
		if not true then
		end
	end
	local module = {
		UICorner = React_upvr.createElement("UICorner", {
			CornerRadius = udim_upvr;
		});
	}
	local any_createElement_result1 = React_upvr.createElement("UIPadding", {
		PaddingBottom = UDim.new(0, 12);
		PaddingLeft = UDim.new(0, 12);
		PaddingRight = UDim.new(0, 12);
		PaddingTop = UDim.new(0, 12);
	})
	module.UIPadding = any_createElement_result1
	if not chromeEnabled then
		any_createElement_result1 = React_upvr.createElement
		any_createElement_result1 = any_createElement_result1("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Top;
		})
	else
		any_createElement_result1 = nil
	end
	module.Layout = any_createElement_result1
	if not chromeEnabled then
		local tbl_7 = {
			AutomaticSize = Enum.AutomaticSize.Y;
			BackgroundColor3 = Color;
			BackgroundTransparency = Transparency;
			BorderSizePixel = 0;
			LayoutOrder = 1;
			Size = UDim2.fromScale(1, 0);
		}
		local tbl_6 = {}
		local tbl_5 = {
			Layout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				SortOrder = Enum.SortOrder.LayoutOrder;
				VerticalAlignment = Enum.VerticalAlignment.Top;
			});
		}
		local tbl = {
			BackgroundTransparency = 1;
			Font = var6_result1.Font.Header2.Font;
			LayoutOrder = 1;
			Size = UDim2.new(1, 0, 0, 30);
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl.Text = useLocalization_upvr(tbl_3).capturesTitle
		tbl.TextColor3 = var6_result1.Theme.TextEmphasis.Color
		tbl.TextSize = var6_result1.Font.BaseSize * var27.Header2.RelativeSize
		tbl.TextXAlignment = Enum.TextXAlignment.Left
		tbl_5.Title = React_upvr.createElement("TextLabel", tbl)
		tbl_5.EducationalLabel = React_upvr.createElement("TextLabel", {
			BackgroundTransparency = 1;
			Font = Font_upvr;
			LayoutOrder = 2;
			Size = UDim2.new(1, 0, 0, Text_upvr.GetTextHeight(tbl_2_upvr, Font_upvr, var31_upvr, X - 24) + 10);
			Text = tbl_2_upvr;
			TextColor3 = var6_result1.Theme.TextDefault.Color;
			TextSize = var31_upvr;
			TextWrapped = true;
			TextXAlignment = Enum.TextXAlignment.Left;
		})
		tbl_6.TextFrame = React_upvr.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y;
			BackgroundTransparency = 1;
			Size = UDim2.fromScale(1, 0);
		}, tbl_5)
		local tbl_4 = {}
		if var27 then
			tbl_5 = Vector2.new(1, 0.5)
		else
			tbl_5 = Vector2.new(1, 0)
		end
		tbl_4.AnchorPoint = tbl_5
		tbl_5 = 1
		local var50 = tbl_5
		tbl_4.BackgroundTransparency = var50
		if var27 then
			var50 = UDim2.fromScale(1, 0.5)
		else
			var50 = UDim2.new(1, 0, 0, -10)
		end
		tbl_4.Position = var50
		tbl_4.Size = UDim2.fromOffset(224, 44)
		tbl_6.CapturesToggleFrame = React_upvr.createElement("Frame", tbl_4, {
			OnOffButton = React_upvr.createElement(OnOffButton_upvr, {
				height = 44;
				width = 224;
			});
		})
	else
	end
	module.CapturesToggleCTA = nil
	local var53
	if arg1.eligibleForVideoCapture and not chromeEnabled then
		var53 = React_upvr.createElement
		var53 = var53("Frame", {
			BorderSizePixel = 0;
			BackgroundTransparency = 1;
			Size = UDim2.new(0, 0, 0, 20);
			LayoutOrder = 2;
		})
	else
		var53 = nil
	end
	module.Space = var53
	if arg1.eligibleForVideoCapture then
		var53 = React_upvr.createElement
		var53 = var53(VideoCaptureCTA_upvr, {
			closeSettingsMenu = arg1.closeSettingsMenu;
			LayoutOrder = 3;
		})
	else
		var53 = nil
	end
	module.VideoCaptureCTA = var53
	return React_upvr.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundColor3 = Color;
		BackgroundTransparency = Transparency;
		BorderSizePixel = 0;
		LayoutOrder = arg1.LayoutOrder;
		Size = UDim2.fromScale(1, 0);
		[React_upvr.Change.AbsoluteSize] = React_upvr.useCallback(function(arg1_2) -- Line 89
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr (readonly)
				[2]: arg1 (readonly)
			]]
			any_useState_result2_upvr(arg1_2.AbsoluteSize)
			if arg1.onAbsoluteSizeChanged then
				arg1.onAbsoluteSizeChanged(arg1_2.AbsoluteSize)
			end
		end, {});
	}, module)
end)