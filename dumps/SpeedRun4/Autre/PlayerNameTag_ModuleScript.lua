-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:22
-- Luau version 6, Types version 3
-- Time taken: 0.002061 seconds

local CorePackages = game:GetService("CorePackages")
local React_upvr = require(CorePackages.Packages.React)
local t = require(CorePackages.Packages.t)
local Parent = script.Parent.Parent.Parent
local any_extend_result1_upvr = React_upvr.PureComponent:extend("PlayerNameTag")
any_extend_result1_upvr.validateProps = t.strictInterface({
	player = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.Interfaces.playerInterface);
	isTitleEntry = t.boolean;
	isHovered = t.boolean;
	name = t.union(t.string, t.table);
	textStyle = t.strictInterface({
		Color = t.Color3;
		Transparency = t.number;
		StrokeColor = t.optional(t.Color3);
		StrokeTransparency = t.optional(t.number);
	});
	textFont = t.strictInterface({
		Size = t.number;
		MinSize = t.number;
		Font = t.enum(Enum.Font);
	});
})
local WithLayoutValues_upvr = require(script.Parent.Parent.Connection.LayoutValues).WithLayoutValues
function any_extend_result1_upvr.render(arg1) -- Line 58
	--[[ Upvalues[2]:
		[1]: WithLayoutValues_upvr (readonly)
		[2]: React_upvr (readonly)
	]]
	return WithLayoutValues_upvr(function(arg1_2) -- Line 59
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: React_upvr (copied, readonly)
		]]
		return React_upvr.createElement("TextLabel", {
			AnchorPoint = Vector2.new(1, 0);
			Position = UDim2.new(1, 0, 0, 0);
			Size = UDim2.new(1, -arg1_2.PlayerIconSizeMobile.X.Offset - arg1_2.PlayerNamePaddingXMobile * 2, 1, 0);
			TextXAlignment = Enum.TextXAlignment.Left;
			Font = arg1.props.textFont.Font;
			TextSize = arg1.props.textFont.Size;
			TextColor3 = arg1.props.textStyle.Color;
			TextTransparency = arg1.props.textStyle.Transparency;
			TextStrokeColor3 = arg1.props.textStyle.StrokeColor;
			TextStrokeTransparency = arg1.props.textStyle.StrokeTransparency;
			BackgroundTransparency = 1;
			Text = arg1.props.name;
			TextTruncate = Enum.TextTruncate.AtEnd;
		})
	end)
end
local usePlayerCombinedName_upvr = require(Parent.Hooks.usePlayerCombinedName)
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local function PlayerNameTagContainer(arg1) -- Line 81
	--[[ Upvalues[4]:
		[1]: usePlayerCombinedName_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: any_extend_result1_upvr (readonly)
		[4]: Cryo_upvr (readonly)
	]]
	return React_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, {
		name = usePlayerCombinedName_upvr(tostring(arg1.player.UserId), arg1.player.DisplayName);
	}))
end
if require(Parent.Flags.FFlagPlayerListReduceRerenders) then
	return React_upvr.memo(PlayerNameTagContainer, require(Parent.createShallowEqualAndTables)({"textFont"}))
end
return PlayerNameTagContainer