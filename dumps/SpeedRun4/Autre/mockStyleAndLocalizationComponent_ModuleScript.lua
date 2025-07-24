-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:24
-- Luau version 6, Types version 3
-- Time taken: 0.001199 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent
local UIBlox = require(Parent.UIBlox)
local Constants = UIBlox.App.Style.Constants
local Roact_upvr = require(Parent.Roact)
local LocaleProvider_upvr = require(Parent_2.Locale.LocaleProvider)
local AppStyleProvider_upvr = UIBlox.App.Style.AppStyleProvider
local Dark_upvr = Constants.ThemeName.Dark
local Gotham_upvr = Constants.FontName.Gotham
return function(arg1) -- Line 15
	--[[ Upvalues[5]:
		[1]: Roact_upvr (readonly)
		[2]: LocaleProvider_upvr (readonly)
		[3]: AppStyleProvider_upvr (readonly)
		[4]: Dark_upvr (readonly)
		[5]: Gotham_upvr (readonly)
	]]
	return Roact_upvr.createElement(LocaleProvider_upvr, {
		locale = "en-us";
		render = function() -- Line 18, Named "render"
			--[[ Upvalues[5]:
				[1]: Roact_upvr (copied, readonly)
				[2]: AppStyleProvider_upvr (copied, readonly)
				[3]: Dark_upvr (copied, readonly)
				[4]: Gotham_upvr (copied, readonly)
				[5]: arg1 (readonly)
			]]
			return Roact_upvr.createElement(AppStyleProvider_upvr, {
				style = {
					themeName = Dark_upvr;
					fontName = Gotham_upvr;
				};
			}, {Roact_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0);
			}, arg1)})
		end;
	})
end