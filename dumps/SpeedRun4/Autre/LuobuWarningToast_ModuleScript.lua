-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:24
-- Luau version 6, Types version 3
-- Time taken: 0.000927 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local LuobuWarningToastComponent_upvr = require(script.LuobuWarningToastComponent)
local CoreGui_upvr = game:GetService("CoreGui")
function module_upvr.new() -- Line 11
	--[[ Upvalues[4]:
		[1]: module_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: LuobuWarningToastComponent_upvr (readonly)
		[4]: CoreGui_upvr (readonly)
	]]
	local setmetatable_result1_upvr = setmetatable({}, module_upvr)
	setmetatable_result1_upvr.element = Roact_upvr.createElement(LuobuWarningToastComponent_upvr)
	setmetatable_result1_upvr.root = Roact_upvr.mount(setmetatable_result1_upvr.element, CoreGui_upvr, "LuobuWarningToast")
	task.delay(10, function() -- Line 18
		--[[ Upvalues[2]:
			[1]: Roact_upvr (copied, readonly)
			[2]: setmetatable_result1_upvr (readonly)
		]]
		Roact_upvr.unmount(setmetatable_result1_upvr.root)
	end)
	return setmetatable_result1_upvr
end
return module_upvr.new()