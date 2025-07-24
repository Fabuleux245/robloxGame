-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:15
-- Luau version 6, Types version 3
-- Time taken: 0.001683 seconds

local Parent = script:FindFirstAncestor("AuthCommon").Parent
local Roact_upvr = require(Parent.Roact)
local Colors = require(Parent.Style).Colors
local any_extend_result1 = Roact_upvr.PureComponent:extend("CountryCodeSelectorButton")
function any_extend_result1.init(arg1) -- Line 14
	function arg1.selectionCallback() -- Line 15
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.ListButtonProps.SelectionCallback then
			arg1.props.ListButtonProps.SelectionCallback(arg1.props.Data)
		end
	end
end
local Text_upvr = require(Parent.AppCommonLib).Text
local AppFonts_upvr = require(Parent.Style).AppFonts
local White_upvr = Colors.White
local Gray2_upvr = Colors.Gray2
function any_extend_result1.render(arg1) -- Line 22
	--[[ Upvalues[5]:
		[1]: Text_upvr (readonly)
		[2]: AppFonts_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: White_upvr (readonly)
		[5]: Gray2_upvr (readonly)
	]]
	local var10 = '+'..(arg1.props.Data.prefix or "")
	local TextSize = arg1.props.ListButtonProps.TextSize
	return Roact_upvr.createElement("TextButton", {
		Size = arg1.props.Size;
		BackgroundTransparency = 1;
		LayoutOrder = arg1.props.LayoutOrder;
		Text = "";
		[Roact_upvr.Event.Activated] = arg1.selectionCallback;
	}, {
		CountryName = Roact_upvr.createElement("TextLabel", {
			Size = UDim2.new(1, -Text_upvr.GetTextWidth(var10, AppFonts_upvr.default:getDefault(), TextSize), 1, 0);
			Text = arg1.props.Data.localizedName or "";
			BackgroundTransparency = 1;
			Font = AppFonts_upvr.default:getDefault();
			TextColor3 = White_upvr;
			TextSize = TextSize;
			TextXAlignment = Enum.TextXAlignment.Left;
			TextTruncate = Enum.TextTruncate.AtEnd;
		});
		CountryPrefix = Roact_upvr.createElement("TextLabel", {
			Size = UDim2.new(1, 0, 1, 0);
			Text = var10;
			BackgroundTransparency = 1;
			Font = AppFonts_upvr.default:getDefault();
			TextColor3 = Gray2_upvr;
			TextSize = TextSize;
			TextXAlignment = Enum.TextXAlignment.Right;
		});
	})
end
return any_extend_result1