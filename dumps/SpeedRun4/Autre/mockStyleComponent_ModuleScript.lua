-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:46
-- Luau version 6, Types version 3
-- Time taken: 0.001328 seconds

local Parent = script.Parent.Parent
local Roact_upvr = require(Parent.Parent.Roact)
local FoundationProvider_upvr = require(Parent.Parent.Foundation).FoundationProvider
local AppStyleProvider_upvr = require(Parent.App.Style.AppStyleProvider)
return function(arg1, arg2) -- Line 11
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: FoundationProvider_upvr (readonly)
		[3]: AppStyleProvider_upvr (readonly)
	]]
	local module_2 = {}
	local var7 = "Dark"
	module_2.theme = var7
	if arg2 then
		var7 = {}
		var7.reducedMotion = arg2.reducedMotion
		var7.preferredTransparency = arg2.preferredTransparency
	else
		var7 = nil
	end
	module_2.preferences = var7
	local module = {}
	local tbl = {
		themeName = "Dark";
		fontName = "Gotham";
	}
	tbl.settings = arg2
	module.style = tbl
	return Roact_upvr.createElement(FoundationProvider_upvr, module_2, Roact_upvr.createElement(AppStyleProvider_upvr, module, {
		Content = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0);
		}, arg1);
	}))
end