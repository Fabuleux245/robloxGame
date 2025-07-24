-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:13
-- Luau version 6, Types version 3
-- Time taken: 0.001844 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
local Signal_upvr = require(script:FindFirstAncestor("GameTile").Parent.AppCommonLib).Signal
function module_upvr.new() -- Line 24
	--[[ Upvalues[2]:
		[1]: Signal_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local module = {
		changed = Signal_upvr.new();
		hoveredKey = nil;
		waitingForHover = nil;
	}
	setmetatable(module, module_upvr)
	return module
end
function module_upvr.requestHover(arg1, arg2) -- Line 34
	if arg1.hoveredKey == arg2 then
	else
		if arg1.waitingForHover == arg2 then return end
		if arg1.hoveredKey == nil or arg1.waitingForHover ~= nil then
			arg1.hoveredKey = arg2
			arg1.waitingForHover = nil
			arg1.changed:fire(arg1.hoveredKey)
			return
		end
		arg1.waitingForHover = arg2
	end
end
function module_upvr.cancelHover(arg1, arg2) -- Line 57
	if arg1.hoveredKey == arg2 then
		if arg1.waitingForHover ~= nil then
			arg1.hoveredKey = arg1.waitingForHover
			arg1.waitingForHover = nil
		else
			arg1.hoveredKey = nil
		end
		arg1.changed:fire(arg1.hoveredKey)
	elseif arg1.waitingForHover == arg2 then
		arg1.waitingForHover = nil
	end
end
function module_upvr.reset(arg1) -- Line 72
	arg1.waitingForHover = nil
	arg1.hoveredKey = nil
	if arg1.hoveredKey ~= nil then
		arg1.changed:fire(arg1.hoveredKey)
	end
end
module_upvr.default = module_upvr.new()
return module_upvr