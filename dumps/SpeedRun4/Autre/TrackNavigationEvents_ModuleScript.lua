-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:12
-- Luau version 6, Types version 3
-- Time taken: 0.003071 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent
local Events = require(Parent_2.Events)
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.new() -- Line 16
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local module = {
		navigationEvents = {};
	}
	setmetatable(module, module_upvr)
	return module
end
function module_upvr.getNavigationEvents(arg1) -- Line 26
	return arg1.navigationEvents
end
function module_upvr.printNavigationEvents(arg1) -- Line 30
	print("Total Events: ", #arg1.navigationEvents)
	for _, v in arg1.navigationEvents do
		print(v)
	end
end
local ReactRoblox_upvr = require(Parent.Dev.ReactRoblox)
function module_upvr.waitForNumberEventsMaxWaitTime(arg1, arg2, arg3) -- Line 37
	--[[ Upvalues[1]:
		[1]: ReactRoblox_upvr (readonly)
	]]
	local var9_upvw = 0
	while #arg1.navigationEvents < arg2 and var9_upvw <= arg3 do
		ReactRoblox_upvr.act(function() -- Line 40
			--[[ Upvalues[1]:
				[1]: var9_upvw (read and write)
			]]
			var9_upvw += task.wait()
		end)
	end
end
function module_upvr.resetNavigationEvents(arg1) -- Line 46
	arg1.navigationEvents = {}
end
local tbl_upvr = {
	onWillFocus = Events.WillFocus;
	onDidFocus = Events.DidFocus;
	onWillBlur = Events.WillBlur;
	onDidBlur = Events.DidBlur;
}
local PageNavigationEvent_upvr = require(script.Parent.PageNavigationEvent)
local React_upvr = require(Parent.React)
local NavigationEvents_upvr = require(Parent_2.views.NavigationEvents)
function module_upvr.createNavigationAdapter(arg1, arg2) -- Line 57
	--[[ Upvalues[4]:
		[1]: tbl_upvr (readonly)
		[2]: PageNavigationEvent_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: NavigationEvents_upvr (readonly)
	]]
	local module_2 = {}
	for i_2, v_2_upvr in tbl_upvr do
		module_2[i_2] = function() -- Line 60
			--[[ Upvalues[4]:
				[1]: PageNavigationEvent_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: v_2_upvr (readonly)
				[4]: arg1 (readonly)
			]]
			PageNavigationEvent_upvr.new(arg2, v_2_upvr)
			table.insert(arg1.navigationEvents, PageNavigationEvent_upvr.new(arg2, v_2_upvr))
		end
	end
	return React_upvr.createElement(NavigationEvents_upvr, module_2)
end
local invariant_upvr = require(script.Parent.invariant)
function module_upvr.equalTo(arg1, arg2) -- Line 69
	--[[ Upvalues[1]:
		[1]: invariant_upvr (readonly)
	]]
	local var24
	if type(arg2) ~= "table" then
		var24 = false
	else
		var24 = true
	end
	invariant_upvr(var24, "should be a list")
	var24 = arg1.navigationEvents
	local len = #var24
	var24 = #arg2
	if len ~= var24 then
		var24 = false
		return var24, "different amount of events"
	end
	var24 = len
	for i_3 = 1, var24 do
		if not arg1.navigationEvents[i_3]:equalTo(arg2[i_3]) then
			return false, "events at position %d do not match":format(i_3)
		end
	end
	var24 = true
	return var24
end
local Array_upvr = require(Parent.LuauPolyfill).Array
function module_upvr.expect(arg1, arg2) -- Line 86
	--[[ Upvalues[1]:
		[1]: Array_upvr (readonly)
	]]
	local any_equalTo_result1, any_equalTo_result2 = arg1:equalTo(arg2)
	local var29
	if not any_equalTo_result1 then
		local var30 = "{}"
		var29 = "{}"
		if 0 < #arg1.navigationEvents then
			var30 = "{\n  %s,\n}":format(table.concat(Array_upvr.map(arg1.navigationEvents, tostring), ",\n  "))
		end
		if 0 < #arg2 then
			var29 = "{\n  %s,\n}":format(table.concat(Array_upvr.map(arg2, tostring), ",\n  "))
		end
		error("%s\nGot events: %s\n\nExpected events: %s":format(any_equalTo_result2, var30, var29))
	end
end
return module_upvr