-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:14
-- Luau version 6, Types version 3
-- Time taken: 0.000537 seconds

local Roact_upvr = require(game:GetService("CorePackages").Packages.InGameMenuDependencies).Roact
local KeyboardControls_upvr = require(script.Parent.KeyboardControls)
return function(arg1) -- Line 8, Named "TouchControls"
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: KeyboardControls_upvr (readonly)
	]]
	return Roact_upvr.createElement(KeyboardControls_upvr, arg1)
end