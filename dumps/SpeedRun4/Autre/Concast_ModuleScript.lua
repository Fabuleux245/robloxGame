-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:44:20
-- Luau version 6, Types version 3
-- Time taken: 0.008280 seconds

local module = {}
local Parent = script.Parent.Parent.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local Boolean_upvr = LuauPolyfill.Boolean
local tbl_2_upvr = {}
local Observable_upvr = require(script.Parent.Observable).Observable
local function _(arg1) -- Line 50, Named "isPromiseLike"
	--[[ Upvalues[1]:
		[1]: Boolean_upvr (readonly)
	]]
	local any_toJSBoolean_result1_2 = Boolean_upvr.toJSBoolean(arg1)
	if any_toJSBoolean_result1_2 then
		if typeof(arg1.andThen) ~= "function" then
			any_toJSBoolean_result1_2 = false
		else
			any_toJSBoolean_result1_2 = true
		end
	end
	return any_toJSBoolean_result1_2
end
local setmetatable_result1_upvr = setmetatable({}, {
	__index = Observable_upvr;
})
setmetatable_result1_upvr.__index = setmetatable_result1_upvr
local Set_upvr = LuauPolyfill.Set
local Promise_upvr = require(Parent.Promise)
local iterateObserversSafely_upvr = require(script.Parent.iteration).iterateObserversSafely
function setmetatable_result1_upvr.new(arg1) -- Line 125
	--[[ Upvalues[7]:
		[1]: Observable_upvr (readonly)
		[2]: setmetatable_result1_upvr (readonly)
		[3]: Set_upvr (readonly)
		[4]: tbl_2_upvr (readonly)
		[5]: Promise_upvr (readonly)
		[6]: iterateObserversSafely_upvr (readonly)
		[7]: Boolean_upvr (readonly)
	]]
	local var14_upvw
	var14_upvw = setmetatable(Observable_upvr.new(function(arg1_2) -- Line 129
		--[[ Upvalues[1]:
			[1]: var14_upvw (read and write)
		]]
		var14_upvw:addObserver(arg1_2)
		return function() -- Line 131
			--[[ Upvalues[2]:
				[1]: var14_upvw (copied, read and write)
				[2]: arg1_2 (readonly)
			]]
			return var14_upvw:removeObserver(arg1_2)
		end
	end), setmetatable_result1_upvr)
	local var16_upvw = var14_upvw
	var16_upvw.observers = Set_upvr.new()
	var16_upvw.sub = tbl_2_upvr
	var16_upvw.source = {}
	var16_upvw.latest = nil
	var16_upvw.addCount = 0
	var16_upvw.promise = Promise_upvr.new(function(arg1_3, arg2) -- Line 163
		--[[ Upvalues[1]:
			[1]: var16_upvw (read and write)
		]]
		function var16_upvw.resolve(arg1_4, ...) -- Line 164
			--[[ Upvalues[1]:
				[1]: arg1_3 (readonly)
			]]
			arg1_3(...)
		end
		function var16_upvw.reject(arg1_5, ...) -- Line 167
			--[[ Upvalues[1]:
				[1]: arg2 (readonly)
			]]
			arg2(...)
		end
	end)
	var16_upvw.handlers = {
		next = function(arg1_6, arg2) -- Line 175, Named "next"
			--[[ Upvalues[2]:
				[1]: var16_upvw (read and write)
				[2]: iterateObserversSafely_upvr (copied, readonly)
			]]
			if var16_upvw.sub ~= nil then
				local tbl_4 = {"next"}
				tbl_4[2] = arg2
				var16_upvw.latest = tbl_4
				iterateObserversSafely_upvr(var16_upvw.observers, "next", arg2)
			end
		end;
		error = function(arg1_7, arg2) -- Line 181, Named "error"
			--[[ Upvalues[4]:
				[1]: var16_upvw (read and write)
				[2]: Boolean_upvr (copied, readonly)
				[3]: Promise_upvr (copied, readonly)
				[4]: iterateObserversSafely_upvr (copied, readonly)
			]]
			local sub_upvr = var16_upvw.sub
			if sub_upvr ~= nil then
				if Boolean_upvr.toJSBoolean(sub_upvr) then
					Promise_upvr.delay(0):andThen(function() -- Line 188
						--[[ Upvalues[1]:
							[1]: sub_upvr (readonly)
						]]
						return sub_upvr:unsubscribe()
					end)
				end
				var16_upvw.sub = nil
				local tbl_3 = {"error"}
				tbl_3[2] = arg2
				var16_upvw.latest = tbl_3
				var16_upvw:reject(arg2)
				iterateObserversSafely_upvr(var16_upvw.observers, "error", arg2)
			end
		end;
		complete = function(arg1_8) -- Line 198, Named "complete"
			--[[ Upvalues[3]:
				[1]: var16_upvw (read and write)
				[2]: Boolean_upvr (copied, readonly)
				[3]: iterateObserversSafely_upvr (copied, readonly)
			]]
			if var16_upvw.sub ~= nil then
				local popped = table.remove(var16_upvw.sources, 1)
				if not Boolean_upvr.toJSBoolean(popped) then
					var16_upvw.sub = nil
					if var16_upvw.latest ~= nil and var16_upvw.latest[1] == "next" then
						var16_upvw:resolve(var16_upvw.latest[2])
					else
						var16_upvw:resolve()
					end
					iterateObserversSafely_upvr(var16_upvw.observers, "complete")
					return
				end
				local any_toJSBoolean_result1 = Boolean_upvr.toJSBoolean(popped)
				if any_toJSBoolean_result1 then
					if typeof(popped.andThen) ~= "function" then
						any_toJSBoolean_result1 = false
					else
						any_toJSBoolean_result1 = true
					end
				end
				if any_toJSBoolean_result1 then
					popped:andThen(function(arg1_9) -- Line 216
						--[[ Upvalues[1]:
							[1]: var16_upvw (copied, read and write)
						]]
						var16_upvw.sub = arg1_9:subscribe(var16_upvw.handlers)
					end)
					return
				end
				var16_upvw.sub = popped:subscribe(var16_upvw.handlers)
			end
		end;
	}
	function var16_upvw.cancel(arg1_10, arg2) -- Line 227
		--[[ Upvalues[1]:
			[1]: var16_upvw (read and write)
		]]
		var16_upvw:reject(arg2)
		var16_upvw.sources = {}
		var16_upvw.handlers:complete()
	end
	var16_upvw.promise:catch(function() -- Line 236
	end)
	local var30
	if typeof(arg1) == "function" then
		local tbl = {Observable_upvr.new(var30)}
		var30 = tbl
	end
	local var32 = var30
	tbl = Boolean_upvr.toJSBoolean(var32)
	local var33 = tbl
	if var33 then
		if typeof(var32.andThen) ~= "function" then
			var33 = false
		else
			var33 = true
		end
	end
	if var33 then
		var30:andThen(function(arg1_11) -- Line 246
			--[[ Upvalues[1]:
				[1]: var16_upvw (read and write)
			]]
			var16_upvw:start(arg1_11)
		end, function(...) -- Line 248
			--[[ Upvalues[1]:
				[1]: var16_upvw (read and write)
			]]
			var16_upvw.handlers:error(...)
		end)
	else
		var16_upvw:start(var30)
	end
	return var16_upvw
end
local Array_upvr = LuauPolyfill.Array
function setmetatable_result1_upvr.start(arg1, arg2) -- Line 261
	--[[ Upvalues[2]:
		[1]: tbl_2_upvr (readonly)
		[2]: Array_upvr (readonly)
	]]
	if arg1.sub ~= tbl_2_upvr then
	else
		arg1.sources = Array_upvr.from(arg2)
		arg1.handlers:complete()
	end
end
function setmetatable_result1_upvr.deliverLastMessage(arg1, arg2) -- Line 278
	--[[ Upvalues[1]:
		[1]: Boolean_upvr (readonly)
	]]
	if Boolean_upvr.toJSBoolean(arg1.latest) then
		local _1 = arg1.latest[1]
		local var38 = arg2[_1]
		if Boolean_upvr.toJSBoolean(var38) then
			var38(arg2, arg1.latest[2])
		end
		if arg1.sub == nil and _1 == "next" and arg2.complete ~= nil then
			arg2.complete(arg2)
		end
	end
end
function setmetatable_result1_upvr.addObserver(arg1, arg2) -- Line 296
	if not arg1.observers:has(arg2) then
		arg1:deliverLastMessage(arg2)
		arg1.observers:add(arg2)
		arg1.addCount += 1
	end
end
local Error_upvr = LuauPolyfill.Error
function setmetatable_result1_upvr.removeObserver(arg1, arg2, arg3) -- Line 306
	--[[ Upvalues[1]:
		[1]: Error_upvr (readonly)
	]]
	if arg1.observers:delete(arg2) then
		arg1.addCount -= 1
		if arg1.addCount < 1 and not arg3 then
			arg1.handlers:error(Error_upvr.new("Observable cancelled prematurely"))
		end
	end
end
function setmetatable_result1_upvr.cleanup(arg1, arg2) -- Line 322
	local var40_upvw = false
	local var41_upvw
	local function once() -- Line 325
		--[[ Upvalues[4]:
			[1]: var40_upvw (read and write)
			[2]: arg1 (readonly)
			[3]: var41_upvw (read and write)
			[4]: arg2 (readonly)
		]]
		if not var40_upvw then
			var40_upvw = true
			arg1.observers:delete(var41_upvw)
			arg2()
		end
	end
	var41_upvw = {
		next = once;
		error = once;
		complete = once;
	}
	arg1:addObserver(var41_upvw)
	arg1.addCount = arg1.addCount
end
function setmetatable_result1_upvr.of(...) -- Line 345
	--[[ Upvalues[2]:
		[1]: Observable_upvr (readonly)
		[2]: setmetatable_result1_upvr (readonly)
	]]
	return Observable_upvr.of(setmetatable_result1_upvr, ...)
end
function setmetatable_result1_upvr.from(...) -- Line 349
	--[[ Upvalues[2]:
		[1]: Observable_upvr (readonly)
		[2]: setmetatable_result1_upvr (readonly)
	]]
	return Observable_upvr.from(setmetatable_result1_upvr, ...)
end
module.Concast = setmetatable_result1_upvr
require(script.Parent.subclassing).fixObservableSubclass(setmetatable_result1_upvr)
return module