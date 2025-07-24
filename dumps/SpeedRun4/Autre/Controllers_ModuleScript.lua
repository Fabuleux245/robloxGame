-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:40
-- Luau version 6, Types version 3
-- Time taken: 0.000940 seconds

local Parent_2 = script.Parent
local Parent = Parent_2.Parent.Parent.Parent.Parent
local React_upvr = require(Parent.React)
local LuauPolyfill_upvr = require(Parent.LuauPolyfill)
local function _(arg1) -- Line 14, Named "createControllerFunction"
	--[[ Upvalues[2]:
		[1]: LuauPolyfill_upvr (readonly)
		[2]: React_upvr (readonly)
	]]
	return function(arg1_2, arg2, arg3) -- Line 15
		--[[ Upvalues[3]:
			[1]: LuauPolyfill_upvr (copied, readonly)
			[2]: React_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		local module_3 = {}
		module_3.tooltipProps = arg1_2
		module_3.renderTriggerPoint = arg3
		return React_upvr.createElement(arg1, LuauPolyfill_upvr.Object.assign({}, arg2, module_3))
	end
end
local module_4 = {}
local TooltipController_upvr = require(Parent_2.TooltipController)
function module_4.withTooltip(arg1, arg2, arg3) -- Line 15
	--[[ Upvalues[3]:
		[1]: LuauPolyfill_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: TooltipController_upvr (readonly)
	]]
	local module = {}
	module.tooltipProps = arg1
	module.renderTriggerPoint = arg3
	return React_upvr.createElement(TooltipController_upvr, LuauPolyfill_upvr.Object.assign({}, arg2, module))
end
local HoverController_upvr = require(Parent_2.HoverController)
function module_4.withHoverTooltip(arg1, arg2, arg3) -- Line 15
	--[[ Upvalues[3]:
		[1]: LuauPolyfill_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: HoverController_upvr (readonly)
	]]
	local module_2 = {}
	module_2.tooltipProps = arg1
	module_2.renderTriggerPoint = arg3
	return React_upvr.createElement(HoverController_upvr, LuauPolyfill_upvr.Object.assign({}, arg2, module_2))
end
return module_4