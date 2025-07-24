-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:41:55
-- Luau version 6, Types version 3
-- Time taken: 0.001758 seconds

local Utils = script.Parent.Parent.Parent:FindFirstChild("Utils")
local Utils_2_upvr = require(Utils)
local module_upvr = require(Utils:WaitForChild("Fusion"))
local module_upvr_2 = {}
module_upvr_2.__index = module_upvr_2
local Value_upvr = module_upvr.Value
function module_upvr_2.new() -- Line 15
	--[[ Upvalues[2]:
		[1]: module_upvr_2 (readonly)
		[2]: Value_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_upvr_2)
	setmetatable_result1.Enabled = Value_upvr({})
	setmetatable_result1.Controllers = {}
	return setmetatable_result1
end
function module_upvr_2.Init(arg1, arg2) -- Line 24
	arg1.Controllers = arg2
	for i, v in pairs(arg2) do
		if v.Enable and v.Disable then
			({})[i] = false
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	arg1.Enabled:set({})
end
function module_upvr_2.GetEnabledComputed(arg1, arg2) -- Line 37
	--[[ Upvalues[2]:
		[1]: Utils_2_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local var13_upvw
	if not Utils_2_upvr.endsWith(arg2, "Controller") then
		var13_upvw = var13_upvw.."Controller"
	end
	return module_upvr.Computed(function() -- Line 42
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var13_upvw (read and write)
		]]
		return not not arg1.Enabled:get()[var13_upvw]
	end)
end
function module_upvr_2.UpdateEnabled(arg1, arg2, arg3) -- Line 48
	--[[ Upvalues[1]:
		[1]: Utils_2_upvr (readonly)
	]]
	local any_deepCopy_result1 = Utils_2_upvr.deepCopy(arg1.Enabled:get())
	any_deepCopy_result1[arg2] = arg3
	arg1.Enabled:set(any_deepCopy_result1)
end
function module_upvr_2.SwitchTo(arg1, arg2) -- Line 54
	local var20
	if not arg1.Controllers[arg2] and arg1.Controllers[var20.."Controller"] then
		var20 = var20.."Controller"
	end
	for i_2, _ in pairs(arg1.Enabled:get()) do
		if i_2 ~= var20 then
			arg1.Controllers[i_2]:Disable()
		end
	end
	if not table.find({"OutfitFeedController", "CategoryController"}, var20) then
		arg1.Controllers.TopBarController:Reset()
	end
	arg1.Controllers[var20]:Enable()
end
return module_upvr_2