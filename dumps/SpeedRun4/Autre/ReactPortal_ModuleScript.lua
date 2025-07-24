-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:21
-- Luau version 6, Types version 3
-- Time taken: 0.000465 seconds

local REACT_PORTAL_TYPE_upvr = require(script.Parent.Parent.Shared).ReactSymbols.REACT_PORTAL_TYPE
return {
	createPortal = function(arg1, arg2, arg3, arg4) -- Line 19, Named "createPortal"
		--[[ Upvalues[1]:
			[1]: REACT_PORTAL_TYPE_upvr (readonly)
		]]
		if arg4 ~= nil then
		end
		local module = {
			["$$typeof"] = REACT_PORTAL_TYPE_upvr;
			key = tostring(arg4);
		}
		module.children = arg1
		module.containerInfo = arg2
		module.implementation = arg3
		return module
	end;
}