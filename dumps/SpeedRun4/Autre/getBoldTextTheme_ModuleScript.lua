-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:49
-- Luau version 6, Types version 3
-- Time taken: 0.001100 seconds

local Cryo_upvr = require(script:FindFirstAncestor("AppChat").Parent.Cryo)
return function(arg1) -- Line 6
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	return {
		Theme = Cryo_upvr.Dictionary.join(arg1.Theme, {
			TextDefault = {
				Color = arg1.Theme.TextEmphasis.Color;
				Transparency = arg1.Theme.TextEmphasis.Transparency;
			};
		});
		Font = Cryo_upvr.Dictionary.join(arg1.Font, {
			Body = {
				Font = arg1.Font.Header1.Font;
				RelativeSize = arg1.Font.Body.RelativeSize;
				RelativeMinSize = arg1.Font.Body.RelativeMinSize;
			};
			CaptionBody = {
				Font = arg1.Font.Header1.Font;
				RelativeSize = arg1.Font.CaptionBody.RelativeSize;
				RelativeMinSize = arg1.Font.CaptionBody.RelativeMinSize;
			};
		});
		Settings = nil;
		Tokens = arg1.Tokens;
	}
end