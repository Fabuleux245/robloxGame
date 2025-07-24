-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:18
-- Luau version 6, Types version 3
-- Time taken: 0.003016 seconds

local AuthCommon = script:FindFirstAncestor("AuthCommon")
local Parent = AuthCommon.Parent
local Roact_upvr = require(Parent.Roact)
local Colors = require(Parent.Style).Colors
local GetFFlagCountryCodeBoldPrefixEnabled_upvr = require(AuthCommon.Flags.GetFFlagCountryCodeBoldPrefixEnabled)
local Text_upvr = require(Parent.AppCommonLib).Text
local AppFonts_upvr = require(Parent.Style).AppFonts
local useStyle_upvr = require(Parent.UIBlox).Core.Style.useStyle
local White_upvr = Colors.White
local Gray2_upvr = Colors.Gray2
return function(arg1) -- Line 27, Named "CountryCodeSelectorButton"
	--[[ Upvalues[7]:
		[1]: GetFFlagCountryCodeBoldPrefixEnabled_upvr (readonly)
		[2]: Text_upvr (readonly)
		[3]: AppFonts_upvr (readonly)
		[4]: useStyle_upvr (readonly)
		[5]: Roact_upvr (readonly)
		[6]: White_upvr (readonly)
		[7]: Gray2_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var11 = arg1.CountryCode.localizedName or ""
	local var12 = '+'..(arg1.CountryCode.prefix or "")
	local TextSize = arg1.ListButtonProps.TextSize
	local GetFFlagCountryCodeBoldPrefixEnabled_upvr_result1 = GetFFlagCountryCodeBoldPrefixEnabled_upvr()
	if GetFFlagCountryCodeBoldPrefixEnabled_upvr_result1 then
		GetFFlagCountryCodeBoldPrefixEnabled_upvr_result1 = arg1.BoldPrefixEnabled
	end
	local SelectionCallback_upvr = arg1.ListButtonProps.SelectionCallback
	if not SelectionCallback_upvr then
		function SelectionCallback_upvr(arg1_2) -- Line 36
		end
	end
	local useStyle_upvr_result1 = useStyle_upvr()
	if GetFFlagCountryCodeBoldPrefixEnabled_upvr_result1 then
		({}).FullText = Roact_upvr.createElement("TextLabel", {
			Size = UDim2.new(1, 0, 1, 0);
			Text = string.format("%s (%s)", var11, var12);
			BackgroundTransparency = 1;
			Font = useStyle_upvr_result1.Tokens.Semantic.Typography.CaptionBody.Font;
			TextColor3 = useStyle_upvr_result1.Tokens.Semantic.Color.Ui.Emphasis.Color3;
			TextSize = TextSize;
			TextXAlignment = Enum.TextXAlignment.Left;
			TextTruncate = Enum.TextTruncate.AtEnd;
		})
	else
	end
	return Roact_upvr.createElement("TextButton", {
		Size = arg1.Size;
		BackgroundTransparency = 1;
		LayoutOrder = arg1.LayoutOrder;
		Text = "";
		[Roact_upvr.Event.Activated] = function() -- Line 81
			--[[ Upvalues[2]:
				[1]: SelectionCallback_upvr (readonly)
				[2]: arg1 (readonly)
			]]
			SelectionCallback_upvr(arg1.CountryCode)
		end;
	}, {
		CountryName = Roact_upvr.createElement("TextLabel", {
			Size = UDim2.new(1, -Text_upvr.GetTextWidth(var12, AppFonts_upvr.default:getDefault(), TextSize), 1, 0);
			Text = var11;
			BackgroundTransparency = 1;
			Font = AppFonts_upvr.default:getDefault();
			TextColor3 = White_upvr;
			TextSize = TextSize;
			TextXAlignment = Enum.TextXAlignment.Left;
			TextTruncate = Enum.TextTruncate.AtEnd;
		});
		CountryPrefix = Roact_upvr.createElement("TextLabel", {
			Size = UDim2.new(1, 0, 1, 0);
			Text = var12;
			BackgroundTransparency = 1;
			Font = AppFonts_upvr.default:getDefault();
			TextColor3 = Gray2_upvr;
			TextSize = TextSize;
			TextXAlignment = Enum.TextXAlignment.Right;
			TextTruncate = Enum.TextTruncate.AtEnd;
		});
	})
end