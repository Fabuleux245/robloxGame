-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:05:33
-- Luau version 6, Types version 3
-- Time taken: 0.009982 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local inspect_upvr = LuauPolyfill.util.inspect
local __DEV__ = _G.__DEV__
local var5 = require(Parent.SafeFlags).createGetFFlag("ReactInstanceMapDisableErrorChecking")()
local module = {}
local function _(arg1) -- Line 43, Named "isValidFiber"
	local var9 = false
	if arg1.tag ~= nil then
		var9 = false
		if arg1.subtreeFlags ~= nil then
			var9 = false
			if arg1.lanes ~= nil then
				if arg1.childLanes == nil then
					var9 = false
				else
					var9 = true
				end
			end
		end
	end
	return var9
end
function module.remove(arg1) -- Line 50
	arg1._reactInternals = nil
end
if not var5 or __DEV__ then
	local Error_upvr = LuauPolyfill.Error
	local getComponentName_upvr = require(script.Parent.getComponentName)
	function module.get(arg1) -- Line 55
		--[[ Upvalues[3]:
			[1]: Error_upvr (readonly)
			[2]: getComponentName_upvr (readonly)
			[3]: inspect_upvr (readonly)
		]]
		local _reactInternals_2 = arg1._reactInternals
		local var23 = false
		if _reactInternals_2.tag ~= nil then
			var23 = false
			if _reactInternals_2.subtreeFlags ~= nil then
				var23 = false
				if _reactInternals_2.lanes ~= nil then
					if _reactInternals_2.childLanes == nil then
						var23 = false
					else
						var23 = true
					end
				end
			end
		end
		if not var23 then
			error(Error_upvr.new("invalid fiber in "..(getComponentName_upvr(arg1) or "UNNAMED Component").." during get from ReactInstanceMap! "..inspect_upvr(_reactInternals_2)))
			return _reactInternals_2
		end
		if _reactInternals_2.alternate ~= nil then
			local alternate_4 = _reactInternals_2.alternate
			local var25 = false
			if alternate_4.tag ~= nil then
				var25 = false
				if alternate_4.subtreeFlags ~= nil then
					var25 = false
					if alternate_4.lanes ~= nil then
						if alternate_4.childLanes == nil then
							var25 = false
						else
							var25 = true
						end
					end
				end
			end
			if not var25 then
				error(Error_upvr.new("invalid alternate fiber ("..(getComponentName_upvr(arg1) or "UNNAMED alternate")..") in "..(getComponentName_upvr(arg1) or "UNNAMED Component").." during get from ReactInstanceMap! "..inspect_upvr(_reactInternals_2.alternate)))
			end
		end
		return _reactInternals_2
	end
else
	module.get = function(arg1) -- Line 81
		return arg1._reactInternals
	end
end
function module.has(arg1) -- Line 86
	local var28
	if arg1._reactInternals == nil then
		var28 = false
	else
		var28 = true
	end
	return var28
end
if not var5 or __DEV__ then
	function module.set(arg1, arg2) -- Line 91
		--[[ Upvalues[3]:
			[1]: getComponentName_upvr (readonly)
			[2]: inspect_upvr (readonly)
			[3]: Error_upvr (readonly)
		]]
		local var44 = arg2
		while var44 ~= nil do
			local var45 = var44
			local var46 = false
			if var45.tag ~= nil then
				var46 = false
				if var45.subtreeFlags ~= nil then
					var46 = false
					if var45.lanes ~= nil then
						if var45.childLanes == nil then
							var46 = false
						else
							var46 = true
						end
					end
				end
			end
			if not var46 then
				local var47 = "invalid fiber in "..(getComponentName_upvr(arg1) or "UNNAMED Component").." being set in ReactInstanceMap! "..inspect_upvr(var44)..'\n'
				if arg2 ~= var44 then
					var47 = var47.." (from original fiber "..(getComponentName_upvr(arg1) or "UNNAMED Component")..')'
				end
				error(Error_upvr.new(var47))
			elseif var44.alternate ~= nil then
				local alternate_6 = var44.alternate
				local var49 = false
				if alternate_6.tag ~= nil then
					var49 = false
					if alternate_6.subtreeFlags ~= nil then
						var49 = false
						if alternate_6.lanes ~= nil then
							if alternate_6.childLanes == nil then
								var49 = false
							else
								var49 = true
							end
						end
					end
				end
				if not var49 then
					var47 = "invalid alternate fiber ("..(getComponentName_upvr(arg1) or "UNNAMED alternate")..") in "..(getComponentName_upvr(arg1) or "UNNAMED Component").." being set in ReactInstanceMap! "..inspect_upvr(var44.alternate)..'\n'
					local var50 = var47
					if arg2 ~= var44 then
						var50 = var50.." (from original fiber "..(getComponentName_upvr(arg1) or "UNNAMED Component")..')'
					end
					error(Error_upvr.new(var50))
				end
			end
		end
		arg1._reactInternals = arg2
	end
	return module
end
function module.set(arg1, arg2) -- Line 128
	arg1._reactInternals = arg2
end
return module