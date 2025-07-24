-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:39
-- Luau version 6, Types version 3
-- Time taken: 0.004852 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent
local Assets_upvr = require(Parent.Resources.Assets)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local tbl_upvr = {
	[Enum.KeyCode.Escape] = {
		text = "ESC";
		fontKey = "Footer";
		width = 36;
	};
	[Enum.KeyCode.Space] = {
		text = "Space";
		width = 92;
	};
	[Enum.KeyCode.LeftShift] = {
		text = "Shift";
		width = 66;
		alignment = Enum.TextXAlignment.Left;
	};
	[Enum.KeyCode.LeftControl] = {
		text = "Ctrl";
		width = 66;
		alignment = Enum.TextXAlignment.Left;
	};
	[Enum.KeyCode.LeftSuper] = {
		text = "Command";
	};
	[Enum.KeyCode.LeftMeta] = {
		text = "fn";
	};
	[Enum.KeyCode.LeftAlt] = {
		text = "Opt";
	};
	[Enum.KeyCode.Tilde] = {
		text = '~';
		fontKey = "CaptionHeader";
	};
	[Enum.KeyCode.F10] = {
		fontKey = "CaptionHeader";
		width = 36;
	};
	[Enum.KeyCode.F11] = {
		fontKey = "CaptionHeader";
		width = 36;
	};
	[Enum.KeyCode.Up] = {
		image = Assets_upvr.Images.UpArrow;
	};
	[Enum.KeyCode.Down] = {
		image = Assets_upvr.Images.DownArrow;
	};
	[Enum.KeyCode.Left] = {
		image = Assets_upvr.Images.LeftArrow;
	};
	[Enum.KeyCode.Right] = {
		image = Assets_upvr.Images.RightArrow;
	};
}
local UserInputService_upvr = game:GetService("UserInputService")
local TextService_upvr = game:GetService("TextService")
local ThemedTextLabel_upvr = require(Parent.Components.ThemedTextLabel)
local function getLabelWidthAndContent_upvr(arg1, arg2, arg3) -- Line 71, Named "getLabelWidthAndContent"
	--[[ Upvalues[6]:
		[1]: tbl_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ImageSetLabel_upvr (readonly)
		[4]: UserInputService_upvr (readonly)
		[5]: TextService_upvr (readonly)
		[6]: ThemedTextLabel_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 45 start (CF ANALYSIS FAILED)
	local var27 = tbl_upvr[arg1]
	if var27 and var27.image then
		return 36, Roact_upvr.createElement(ImageSetLabel_upvr, {
			AnchorPoint = Vector2.new(0.5, 0.5);
			BackgroundTransparency = 1;
			Image = var27.image;
			ImageColor3 = arg2.Theme.IconEmphasis.Color;
			ImageTransparency = arg2.Theme.IconEmphasis.Transparency;
			Position = UDim2.new(0.5, 0, 0.5, -1);
			Size = UDim2.new(0, 16, 0, 16);
		})
	end
	local any_GetStringForKeyCode_result1 = UserInputService_upvr:GetStringForKeyCode(arg1)
	if var27 and var27.text then
		local var30
		-- KONSTANTWARNING: GOTO [86] #63
	end
	-- KONSTANTERROR: [0] 1. Error Block 45 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [79] 58. Error Block 46 start (CF ANALYSIS FAILED)
	if any_GetStringForKeyCode_result1 and any_GetStringForKeyCode_result1 ~= "" then
		var30 = any_GetStringForKeyCode_result1
	else
		var30 = arg1.Name
	end
	if var30:len() >= 3 then
		-- KONSTANTWARNING: GOTO [94] #69
	end
	-- KONSTANTERROR: [79] 58. Error Block 46 end (CF ANALYSIS FAILED)
end
local GlobalConfig_upvr = require(Parent.GlobalConfig)
local any_strictInterface_result1_upvr = t.strictInterface({
	input = t.enum(Enum.KeyCode);
	borderThemeKey = t.optional(t.string);
	textThemeKey = t.optional(t.string);
	AnchorPoint = t.optional(t.Vector2);
	Position = t.optional(t.UDim2);
	LayoutOrder = t.optional(t.integer);
	ZIndex = t.optional(t.integer);
})
local withStyle_upvr = UIBlox.Core.Style.withStyle
return function(arg1) -- Line 142, Named "KeyLabel"
	--[[ Upvalues[7]:
		[1]: GlobalConfig_upvr (readonly)
		[2]: any_strictInterface_result1_upvr (readonly)
		[3]: withStyle_upvr (readonly)
		[4]: getLabelWidthAndContent_upvr (readonly)
		[5]: Roact_upvr (readonly)
		[6]: ImageSetLabel_upvr (readonly)
		[7]: Assets_upvr (readonly)
	]]
	if GlobalConfig_upvr.propValidation then
		assert(any_strictInterface_result1_upvr(arg1))
	end
	return withStyle_upvr(function(arg1_2) -- Line 147
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: getLabelWidthAndContent_upvr (copied, readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: ImageSetLabel_upvr (copied, readonly)
			[5]: Assets_upvr (copied, readonly)
		]]
		local var35 = arg1_2.Theme[arg1.borderThemeKey or "UIEmphasis"]
		local getLabelWidthAndContent_result1, getLabelWidthAndContent_result2, getLabelWidthAndContent_result3 = getLabelWidthAndContent_upvr(arg1.input, arg1_2, arg1.textThemeKey)
		local var39
		if getLabelWidthAndContent_result3 then
			var39 = 9
		end
		local module = {}
		local var42 = var39
		if var42 then
			var42 = Roact_upvr.createElement
			var42 = var42("UIPadding", {
				PaddingLeft = UDim.new(0, var39);
				PaddingRight = UDim.new(0, var39);
			})
		end
		module.Padding = var42
		module.LabelContent = getLabelWidthAndContent_result2
		return Roact_upvr.createElement(ImageSetLabel_upvr, {
			BackgroundTransparency = 1;
			ImageTransparency = var35.Transparency;
			ImageColor3 = var35.Color;
			Image = Assets_upvr.Images.KeyBorder;
			ScaleType = Enum.ScaleType.Slice;
			SliceCenter = Rect.new(Vector2.new(9, 7), Vector2.new(26, 26));
			Size = UDim2.new(0, getLabelWidthAndContent_result1, 0, 36);
			Position = arg1.Position;
			AnchorPoint = arg1.AnchorPoint;
			LayoutOrder = arg1.LayoutOrder;
			ZIndex = arg1.ZIndex;
		}, module)
	end)
end