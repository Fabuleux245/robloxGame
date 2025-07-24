-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:00
-- Luau version 6, Types version 3
-- Time taken: 0.002991 seconds

local tbl_upvr = {
	BASE_SIZE = 16;
	FACTOR = 1.26;
}
local module_3_upvr = {}
module_3_upvr.__index = module_3_upvr
function module_3_upvr.new(arg1) -- Line 17
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	local module = {}
	module._tokens = arg1
	setmetatable(module, module_3_upvr)
	return module
end
local Cryo_upvr = require(script.Parent.Parent.Parent.Parent.Parent.Cryo)
function module_3_upvr.loadFont(arg1) -- Line 25
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	local _tokens = arg1._tokens
	local BASE_SIZE = tbl_upvr.BASE_SIZE
	local module_2 = {
		BaseSize = BASE_SIZE * tbl_upvr.FACTOR;
		HeadingLarge = {
			Font = Enum.Font.BuilderSansBold;
			RelativeSize = _tokens.Global.Size_350 / BASE_SIZE;
			RelativeMinSize = _tokens.Global.Size_300 / BASE_SIZE;
		};
		HeadingSmall = {
			Font = Enum.Font.BuilderSansBold;
			RelativeSize = _tokens.Global.Size_250 / BASE_SIZE;
			RelativeMinSize = _tokens.Global.Size_200 / BASE_SIZE;
		};
		TitleLarge = {
			Font = Enum.Font.BuilderSansBold;
			RelativeSize = _tokens.Global.Size_200 / BASE_SIZE;
			RelativeMinSize = _tokens.Global.Size_150 / BASE_SIZE;
		};
		BodyLarge = {
			Font = Enum.Font.BuilderSans;
			RelativeSize = _tokens.Global.Size_200 / BASE_SIZE;
			RelativeMinSize = _tokens.Global.Size_150 / BASE_SIZE;
		};
		CaptionLarge = {
			Font = Enum.Font.BuilderSansMedium;
			RelativeSize = _tokens.Global.Size_150 / BASE_SIZE;
			RelativeMinSize = _tokens.Global.Size_100 / BASE_SIZE;
		};
		BodySmall = {
			Font = Enum.Font.BuilderSans;
			RelativeSize = _tokens.Global.Size_150 / BASE_SIZE;
			RelativeMinSize = _tokens.Global.Size_100 / BASE_SIZE;
		};
		CaptionSmall = {
			Font = Enum.Font.BuilderSansMedium;
			RelativeSize = _tokens.Global.Size_125 / BASE_SIZE;
			RelativeMinSize = _tokens.Global.Size_100 / BASE_SIZE;
		};
	}
	return Cryo_upvr.Dictionary.join(arg1:mapLegacyFont(module_2, BASE_SIZE), module_2)
end
function module_3_upvr.mapLegacyFont(arg1, arg2, arg3) -- Line 78
	return {
		Title = {
			Font = arg2.HeadingLarge.Font;
			RelativeSize = 28 / arg3;
			RelativeMinSize = 24 / arg3;
		};
		Header1 = {
			Font = arg2.HeadingSmall.Font;
			RelativeSize = 20 / arg3;
			RelativeMinSize = 16 / arg3;
		};
		Header2 = {
			Font = arg2.TitleLarge.Font;
			RelativeSize = 16 / arg3;
			RelativeMinSize = 12 / arg3;
		};
		SubHeader1 = {
			Font = arg2.TitleLarge.Font;
			RelativeSize = 16 / arg3;
			RelativeMinSize = 12 / arg3;
		};
		Body = {
			Font = arg2.BodyLarge.Font;
			RelativeSize = 16 / arg3;
			RelativeMinSize = 12 / arg3;
		};
		CaptionHeader = {
			Font = arg2.CaptionLarge.Font;
			RelativeSize = 12 / arg3;
			RelativeMinSize = 9 / arg3;
		};
		CaptionSubHeader = {
			Font = arg2.CaptionLarge.Font;
			RelativeSize = 12 / arg3;
			RelativeMinSize = 9 / arg3;
		};
		CaptionBody = {
			Font = arg2.BodySmall.Font;
			RelativeSize = 12 / arg3;
			RelativeMinSize = 9 / arg3;
		};
		Footer = {
			Font = arg2.CaptionSmall.Font;
			RelativeSize = 10 / arg3;
			RelativeMinSize = 8 / arg3;
		};
	}
end
return module_3_upvr