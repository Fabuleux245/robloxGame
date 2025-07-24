-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:43:31
-- Luau version 6, Types version 3
-- Time taken: 0.002184 seconds

local Parent = script.Parent.Parent.Parent
local LuauPolyfill = require(Parent.Parent.LuauPolyfill)
local module = {}
local HttpService_upvr = game:GetService("HttpService")
local Error_upvr = LuauPolyfill.Error
local throwServerError_upvr = require(script.Parent.Parent.utils).throwServerError
local Array_upvr = LuauPolyfill.Array
local hasOwnProperty_upvr = require(Parent.luaUtils.hasOwnProperty)
function module.parseAndCheckHttpResponse(arg1) -- Line 34
	--[[ Upvalues[5]:
		[1]: HttpService_upvr (readonly)
		[2]: Error_upvr (readonly)
		[3]: throwServerError_upvr (readonly)
		[4]: Array_upvr (readonly)
		[5]: hasOwnProperty_upvr (readonly)
	]]
	return function(arg1_2) -- Line 35
		--[[ Upvalues[6]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: Error_upvr (copied, readonly)
			[3]: throwServerError_upvr (copied, readonly)
			[4]: Array_upvr (copied, readonly)
			[5]: hasOwnProperty_upvr (copied, readonly)
			[6]: arg1 (readonly)
		]]
		return arg1_2:text():andThen(function(arg1_3) -- Line 38
			--[[ Upvalues[3]:
				[1]: HttpService_upvr (copied, readonly)
				[2]: Error_upvr (copied, readonly)
				[3]: arg1_2 (readonly)
			]]
			local pcall_result1, pcall_result2 = pcall(function() -- Line 39
				--[[ Upvalues[2]:
					[1]: HttpService_upvr (copied, readonly)
					[2]: arg1_3 (readonly)
				]]
				return HttpService_upvr:JSONDecode(arg1_3), true
			end)
			if not pcall_result1 then
				local any_new_result1 = Error_upvr.new(pcall_result2)
				any_new_result1.name = "ServerParseError"
				any_new_result1.response = arg1_2
				any_new_result1.statusCode = arg1_2.status
				any_new_result1.bodyText = arg1_3
				error(any_new_result1)
			end
			return pcall_result2
		end):andThen(function(arg1_4) -- Line 54
			--[[ Upvalues[5]:
				[1]: arg1_2 (readonly)
				[2]: throwServerError_upvr (copied, readonly)
				[3]: Array_upvr (copied, readonly)
				[4]: hasOwnProperty_upvr (copied, readonly)
				[5]: arg1 (copied, readonly)
			]]
			if arg1_2.status ~= nil and 300 <= arg1_2.status then
				throwServerError_upvr(arg1_2, arg1_4, "Response not successful: Received status code %s":format(tostring(arg1_2.status)))
			end
			if not Array_upvr.isArray(arg1_4) and not hasOwnProperty_upvr(arg1_4, "data") then
				local var18
				if not hasOwnProperty_upvr(arg1_4, "errors") then
					local function INLINED_2() -- Internal function, doesn't exist in bytecode
						var18 = var18(Array_upvr.map(arg1, function(arg1_6) -- Line 77
							return arg1_6.operationName
						end), ", ")
						var18 = Array_upvr.join
						return var18
					end
					if not Array_upvr.isArray(arg1) or not INLINED_2() then
						var18 = arg1.operationName
					end
					throwServerError_upvr(arg1_2, arg1_4, "Server response was missing for query '%s'.":format(var18))
				end
			end
			return arg1_4
		end)
	end
end
return module