-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:49
-- Luau version 6, Types version 3
-- Time taken: 0.000800 seconds

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")
local useStyle_upvr = require(VirtualEvents.Parent.UIBlox).Core.Style.useStyle
local Cryo_upvr = require(VirtualEvents.Parent.Cryo)
local React_upvr = require(VirtualEvents.Parent.React)
return function(arg1) -- Line 15, Named "SelectableTextLabel"
	--[[ Upvalues[3]:
		[1]: useStyle_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: React_upvr (readonly)
	]]
	local BaseSize = useStyle_upvr().Font.BaseSize
	return React_upvr.createElement("TextBox", Cryo_upvr.Dictionary.join({
		AutomaticSize = Enum.AutomaticSize.XY;
		BackgroundTransparency = 1;
		ClearTextOnFocus = false;
		Font = arg1.fontStyle.Font;
		TextColor3 = arg1.colorStyle.Color;
		TextEditable = false;
		TextTransparency = arg1.colorStyle.Transparency;
		TextXAlignment = Enum.TextXAlignment.Left;
		TextYAlignment = Enum.TextYAlignment.Top;
		ClipsDescendants = true;
	}, arg1, {
		fontStyle = Cryo_upvr.None;
		colorStyle = Cryo_upvr.None;
	}), {
		TextSizeConstraint = React_upvr.createElement("UITextSizeConstraint", {
			MaxTextSize = arg1.fontStyle.RelativeSize * BaseSize;
			MinTextSize = arg1.fontStyle.RelativeMinSize * BaseSize;
		});
	})
end