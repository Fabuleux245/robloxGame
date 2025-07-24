-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:05
-- Luau version 6, Types version 3
-- Time taken: 0.000431 seconds

local dependencies = require(script.Parent.Parent.Parent.dependencies)
local Roact_upvr = dependencies.Roact
local UIBlox_upvr = dependencies.UIBlox
return function(arg1) -- Line 5
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: UIBlox_upvr (readonly)
	]]
	local module = {}
	module.TestElement = arg1
	return Roact_upvr.createElement(UIBlox_upvr.App.Style.AppStyleProvider, {
		style = {
			themeName = "Dark";
			fontName = "Gotham";
		};
	}, module)
end