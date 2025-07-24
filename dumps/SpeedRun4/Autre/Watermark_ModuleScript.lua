-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:42:40
-- Luau version 6, Types version 3
-- Time taken: 0.000738 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local WatermarkComponent_upvr = require(script.WatermarkComponent)
local CoreGui_upvr = game:GetService("CoreGui")
function module_upvr.new() -- Line 11
	--[[ Upvalues[4]:
		[1]: module_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: WatermarkComponent_upvr (readonly)
		[4]: CoreGui_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_upvr)
	setmetatable_result1.root = Roact_upvr.createElement(WatermarkComponent_upvr)
	setmetatable_result1.element = Roact_upvr.mount(setmetatable_result1.root, CoreGui_upvr, "Watermark")
	return setmetatable_result1
end
return module_upvr.new()