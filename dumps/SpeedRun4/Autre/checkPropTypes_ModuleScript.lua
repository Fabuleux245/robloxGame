-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:05:18
-- Luau version 6, Types version 3
-- Time taken: 0.003342 seconds

local describeUnknownElementTypeFrameInDEV_upvr = require(script.Parent.ReactComponentStackFrame).describeUnknownElementTypeFrameInDEV
local ReactDebugCurrentFrame_upvr = require(script.Parent.ReactSharedInternals).ReactDebugCurrentFrame
local function _(arg1) -- Line 33, Named "setCurrentlyValidatingElement"
	--[[ Upvalues[2]:
		[1]: describeUnknownElementTypeFrameInDEV_upvr (readonly)
		[2]: ReactDebugCurrentFrame_upvr (readonly)
	]]
	local var3
	if _G.__DEV__ then
		if arg1 then
			local _owner_2 = arg1._owner
			if _owner_2 ~= nil then
				var3 = _owner_2.type
			else
				var3 = nil
			end
			ReactDebugCurrentFrame_upvr.setExtraStackFrame(describeUnknownElementTypeFrameInDEV_upvr(arg1.type, arg1._source, var3))
			return
		end
		ReactDebugCurrentFrame_upvr.setExtraStackFrame(nil)
	end
end
local console_upvr = require(script.Parent.console)
local Error_upvr = require(script.Parent.Parent.LuauPolyfill).Error
local describeError_upvr = require(script.Parent["ErrorHandling.roblox"]).describeError
local tbl_upvr = {}
return function(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 50, Named "checkPropTypes"
	--[[ Upvalues[6]:
		[1]: console_upvr (readonly)
		[2]: Error_upvr (readonly)
		[3]: describeError_upvr (readonly)
		[4]: describeUnknownElementTypeFrameInDEV_upvr (readonly)
		[5]: ReactDebugCurrentFrame_upvr (readonly)
		[6]: tbl_upvr (readonly)
	]]
	if _G.__DEV__ or _G.__DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION__ then
		if arg1 and arg2 then
			console_upvr.warn("You've defined both propTypes and validateProps on "..(arg5 or "a component"))
		end
		if arg2 then
			if typeof(arg2) ~= "function" then
				console_upvr.error("validateProps must be a function, but it is a %s.\nCheck the definition of the component %q.":format(typeof(arg2), arg5 or ""))
			else
				local arg2_result1, arg2_result2 = arg2(arg3)
				if not arg2_result1 then
					error(string.format("validateProps failed on a %s type in %s: %s", arg4, arg5 or "<UNKNOWN Component>", tostring(arg2_result2 or "<Validator function did not supply a message>")))
					local var15
				end
			end
		end
		if arg1 then
			if typeof(arg1) ~= "table" then
				var15 = false
			else
				var15 = true
			end
			assert(var15, "propTypes needs to be a table")
			var15 = nil
			for i_upvr, _ in arg1, var15 do
				local var18 = describeError_upvr
				local _, xpcall_result2 = xpcall(function() -- Line 114
					--[[ Upvalues[6]:
						[1]: arg1 (readonly)
						[2]: i_upvr (readonly)
						[3]: Error_upvr (copied, readonly)
						[4]: arg5 (readonly)
						[5]: arg4 (readonly)
						[6]: arg3 (readonly)
					]]
					if typeof(arg1[i_upvr]) ~= "function" then
						local any_new_result1 = Error_upvr.new((arg5 or "React class")..": "..arg4.." type `"..i_upvr.."` is invalid; ".."it must be a function, usually from the `prop-types` package, but received `"..typeof(arg1[i_upvr]).."`.".."This often happens because of typos such as `PropTypes.function` instead of `PropTypes.func`.")
						any_new_result1.name = "Invariant Violation"
						error(any_new_result1)
					end
					return arg1[i_upvr](arg3, i_upvr, arg5, arg4, nil, "SECRET_DO_NOT_PASS_THIS_OR_YOU_WILL_BE_FIRED")
				end, var18)
				if typeof(xpcall_result2) ~= "table" then
					var18 = false
				else
					var18 = true
				end
				if xpcall_result2 ~= nil and not var18 then
					local var21
					if _G.__DEV__ then
						if arg6 then
							local _owner = arg6._owner
							if _owner ~= nil then
								var21 = _owner.type
							else
								var21 = nil
							end
							ReactDebugCurrentFrame_upvr.setExtraStackFrame(describeUnknownElementTypeFrameInDEV_upvr(arg6.type, arg6._source, var21))
						else
							ReactDebugCurrentFrame_upvr.setExtraStackFrame(nil)
						end
					end
					console_upvr.error(string.format("%s: type specification of %s".." `%s` is invalid; the type checker ".."function must return `nil` or an `Error` but returned a %s. ".."You may have forgotten to pass an argument to the type checker ".."creator (arrayOf, instanceOf, objectOf, oneOf, oneOfType, and ".."shape all require an argument).", arg5 or "React class", arg4, i_upvr, typeof(xpcall_result2)))
					if _G.__DEV__ then
						ReactDebugCurrentFrame_upvr.setExtraStackFrame(nil)
					end
				end
				if var18 and tbl_upvr[xpcall_result2.message] == nil then
					tbl_upvr[tostring(xpcall_result2.message)] = true
					local var23
					if _G.__DEV__ then
						if arg6 then
							local _owner_3 = arg6._owner
							if _owner_3 ~= nil then
								var23 = _owner_3.type
							else
								var23 = nil
							end
							ReactDebugCurrentFrame_upvr.setExtraStackFrame(describeUnknownElementTypeFrameInDEV_upvr(arg6.type, arg6._source, var23))
						else
							ReactDebugCurrentFrame_upvr.setExtraStackFrame(nil)
						end
					end
					console_upvr.warn(string.format("Failed %s type: %s", arg4, tostring(xpcall_result2.message)))
					if _G.__DEV__ then
						ReactDebugCurrentFrame_upvr.setExtraStackFrame(nil)
					end
				end
			end
		end
	end
end