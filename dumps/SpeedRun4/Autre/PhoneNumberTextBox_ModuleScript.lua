-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:23
-- Luau version 6, Types version 3
-- Time taken: 0.006049 seconds

local AuthCommon = script:FindFirstAncestor("AuthCommon")
local Parent = AuthCommon.Parent
local Roact_upvr = require(Parent.Roact)
local UIBlox = require(Parent.UIBlox)
local any_extend_result1 = Roact_upvr.Component:extend("PhoneNumberTextBox")
any_extend_result1.defaultProps = {
	CountryCodeSize = 70;
	InnerPadding = 12;
}
function any_extend_result1.init(arg1) -- Line 26
	arg1:setState({
		CountryCodeHover = false;
		CountryCodeSearchVisible = false;
	})
	function arg1.CountryCodeMouseEnter() -- Line 32
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			CountryCodeHover = true;
		})
	end
	function arg1.CountryCodeMouseLeave() -- Line 38
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			CountryCodeHover = false;
		})
	end
	function arg1.OpenCountryCode() -- Line 44
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			CountryCodeSearchVisible = true;
		})
		if arg1.props.phoneCountryCodeSelectorCallback then
			arg1.props.phoneCountryCodeSelectorCallback(true)
		end
	end
	function arg1.CloseCountryCode() -- Line 54
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			CountryCodeSearchVisible = false;
		})
		if arg1.props.phoneCountryCodeSelectorCallback then
			arg1.props.phoneCountryCodeSelectorCallback(false)
		end
	end
	function arg1.SelectCountryCode(arg1_2) -- Line 64
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.SetCountryCode then
			arg1.props.SetCountryCode(arg1_2)
		end
		arg1.CloseCountryCode()
	end
end
local withStyle_upvr = UIBlox.Style.withStyle
local Text_upvr = require(Parent.AppCommonLib).Text
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local GetImageData_upvr = require(Parent.RobloxAppAssets).GetImageData
local CoreGui_upvr = game:GetService("CoreGui")
local CountryCodeSelector_upvr = require(AuthCommon.Components.CountryCodeSelector)
function any_extend_result1.render(arg1) -- Line 72
	--[[ Upvalues[7]:
		[1]: withStyle_upvr (readonly)
		[2]: Text_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: ImageSetLabel_upvr (readonly)
		[5]: GetImageData_upvr (readonly)
		[6]: CoreGui_upvr (readonly)
		[7]: CountryCodeSelector_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_3) -- Line 73
		--[[ Upvalues[7]:
			[1]: arg1 (readonly)
			[2]: Text_upvr (copied, readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: ImageSetLabel_upvr (copied, readonly)
			[5]: GetImageData_upvr (copied, readonly)
			[6]: CoreGui_upvr (copied, readonly)
			[7]: CountryCodeSelector_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local Color_2 = arg1.props.Color
		local Color_3 = arg1_3.Theme.BackgroundMuted.Color
		local Transparency = arg1.props.Transparency
		local Font = arg1_3.Font.Body.Font
		local var28 = arg1_3.Font.BaseSize * arg1_3.Font.Body.RelativeSize
		local Color = arg1_3.Theme.TextDefault.Color
		local TextInputTypeOverride = arg1.props.TextInputTypeOverride
		if not TextInputTypeOverride then
			TextInputTypeOverride = Enum.TextInputType.Phone
		end
		local var31 = " +"..arg1.props.CountryCode.prefix
		local maximum = math.max(Text_upvr.GetTextWidth(var31, Font, var28) + arg1.props.InnerPadding * 2, arg1.props.CountryCodeSize)
		local module = {
			InputWrapper = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(1, -maximum - 2, 1, 0);
				Position = UDim2.new(0, maximum + 2, 0, 0);
				BackgroundTransparency = 1;
				ClipsDescendants = true;
			}, {
				Background = Roact_upvr.createElement(ImageSetLabel_upvr, {
					Size = UDim2.new(1, 18, 1, 0);
					Position = UDim2.new(0, -18, 0, 0);
					BackgroundTransparency = 1;
					Image = GetImageData_upvr("LuaApp/buttons/buttonFill") or "LuaApp/buttons/buttonFill";
					ImageColor3 = Color_2;
					ImageTransparency = Transparency;
					BorderSizePixel = 0;
					ScaleType = Enum.ScaleType.Slice;
					SliceCenter = Rect.new(8, 8, 9, 9);
				});
				InputField = Roact_upvr.createElement("TextBox", {
					BackgroundTransparency = 1;
					ZIndex = 2;
					Size = UDim2.new(1, -arg1.props.InnerPadding * 2, 1, 0);
					Position = UDim2.new(0, arg1.props.InnerPadding, 0, 0);
					PlaceholderColor3 = arg1_3.Theme.UIDefault.Color;
					PlaceholderText = arg1.props.PlaceholderText;
					Text = arg1.props.Text or "";
					TextXAlignment = Enum.TextXAlignment.Left;
					TextColor3 = Color;
					TextSize = var28;
					TextInputType = TextInputTypeOverride;
					Font = Font;
					ClearTextOnFocus = false;
					[Roact_upvr.Event.Focused] = arg1.props.onFocused;
					[Roact_upvr.Event.FocusLost] = arg1.props.onFocusLost;
					[Roact_upvr.Change.Text] = arg1.props.onChangeText;
				});
			});
		}
		local tbl_2 = {}
		local tbl = {
			Size = UDim2.new(1, 18, 1, 0);
			BackgroundTransparency = 1;
			Image = GetImageData_upvr("LuaApp/buttons/buttonFill") or "LuaApp/buttons/buttonFill";
		}
		if not arg1.state.CountryCodeHover or not Color_3 then
		end
		tbl.ImageColor3 = Color_2
		tbl.ImageTransparency = Transparency
		tbl.BorderSizePixel = 0
		tbl.ScaleType = Enum.ScaleType.Slice
		tbl.SliceCenter = Rect.new(8, 8, 9, 9)
		tbl_2.Background = Roact_upvr.createElement(ImageSetLabel_upvr, tbl)
		tbl_2.Prefix = Roact_upvr.createElement("TextLabel", {
			Size = UDim2.new(1, -arg1.props.InnerPadding, 1, 0);
			TextXAlignment = Enum.TextXAlignment.Right;
			ZIndex = 2;
			Font = Font;
			Text = "<u>"..var31.."</u>";
			TextSize = var28;
			TextColor3 = Color;
			TextTransparency = arg1_3.Theme.TextDefault.Transparency;
			BackgroundTransparency = 1;
			RichText = true;
		})
		module.CountryCodeButton = Roact_upvr.createElement("TextButton", {
			Size = UDim2.new(0, maximum, 1, 0);
			ZIndex = 2;
			Text = "";
			BackgroundTransparency = 1;
			ClipsDescendants = true;
			[Roact_upvr.Event.MouseEnter] = arg1.CountryCodeMouseEnter;
			[Roact_upvr.Event.MouseLeave] = arg1.CountryCodeMouseLeave;
			[Roact_upvr.Event.Activated] = arg1.OpenCountryCode;
		}, tbl_2)
		module.Divider = Roact_upvr.createElement("Frame", {
			BackgroundColor3 = Color_3;
			Size = UDim2.new(0, 2, 1, 0);
			Position = UDim2.new(0, maximum, 0, 0);
			BackgroundTransparency = Transparency;
			BorderSizePixel = 0;
			ZIndex = 2;
		})
		module.CountryCodePortal = Roact_upvr.createElement(Roact_upvr.Portal, {
			target = CoreGui_upvr;
		}, {
			CountryCodeSelectionGui = Roact_upvr.createElement("ScreenGui", {
				Enabled = true;
				ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
				DisplayOrder = 13;
			}, {
				CountryCodeSelector = Roact_upvr.createElement(CountryCodeSelector_upvr, {
					WidgetVisible = arg1.state.CountryCodeSearchVisible;
					CloseCallback = arg1.CloseCountryCode;
					SelectionCallback = arg1.SelectCountryCode;
				});
			});
		})
		return Roact_upvr.createElement("TextButton", {
			Size = arg1.props.Size;
			Position = arg1.props.Position;
			AnchorPoint = arg1.props.AnchorPoint;
			LayoutOrder = arg1.props.LayoutOrder;
			BackgroundTransparency = 1;
			Text = "";
			[Roact_upvr.Event.MouseEnter] = arg1.props.onMouseEnter;
			[Roact_upvr.Event.MouseLeave] = arg1.props.onMouseLeave;
		}, module)
	end)
end
return any_extend_result1