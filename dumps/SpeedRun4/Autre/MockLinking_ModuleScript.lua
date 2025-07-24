-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:17:05
-- Luau version 6, Types version 3
-- Time taken: 0.000757 seconds

local Promise_upvr = require(script:FindFirstAncestor("AmpUpsell").Parent.Promise)
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new() -- Line 12
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return setmetatable({}, module_upvr)
end
function module_upvr.registerURL(arg1, arg2) -- Line 16
end
function module_upvr.detectURL(arg1, arg2) -- Line 20
end
function module_upvr.listenForLuaURLs(arg1, arg2) -- Line 24
end
function module_upvr.stopListeningForLuaURLs(arg1) -- Line 28
end
function module_upvr.openURL(arg1, arg2) -- Line 32
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	arg1.lastOpenedURL = arg2
	return Promise_upvr.resolve(true)
end
function module_upvr.isURLRegistered(arg1, arg2) -- Line 37
	--[[ Upvalues[1]:
		[1]: Promise_upvr (readonly)
	]]
	return Promise_upvr.resolve(true)
end
return module_upvr