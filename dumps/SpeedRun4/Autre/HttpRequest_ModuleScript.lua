-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:03:39
-- Luau version 6, Types version 3
-- Time taken: 0.004277 seconds

local HttpService_upvr = game:GetService("HttpService")
local ApplicationJson_upvr = Enum.HttpContentType.ApplicationJson
local Extreme_upvr = Enum.ThrottlingPriority.Extreme
local Promise_upvr = require(game:GetService("CorePackages").Packages.Promise)
return function(arg1) -- Line 10
	--[[ Upvalues[4]:
		[1]: HttpService_upvr (readonly)
		[2]: ApplicationJson_upvr (readonly)
		[3]: Extreme_upvr (readonly)
		[4]: Promise_upvr (readonly)
	]]
	local function doHttpPost_upvr(arg1_2, arg2) -- Line 12, Named "doHttpPost"
		--[[ Upvalues[4]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: ApplicationJson_upvr (copied, readonly)
			[3]: Extreme_upvr (copied, readonly)
			[4]: arg1 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 19 start (CF ANALYSIS FAILED)
		assert(arg2.postBody, "Expected a postBody to be specified with this request")
		local var6_upvw
		if type(arg2.postBody) == "table" then
			var6_upvw = HttpService_upvr:JSONEncode(arg2.postBody)
			-- KONSTANTWARNING: GOTO [40] #28
		end
		-- KONSTANTERROR: [0] 1. Error Block 19 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [25] 18. Error Block 20 start (CF ANALYSIS FAILED)
		if type(arg2.postBody) == "string" then
			var6_upvw = arg2.postBody
		else
			error("Expected postBody to be a string or table")
		end
		if not arg2.contentType then
			arg2.contentType = ApplicationJson_upvr
		end
		if not arg2.throttlingPriority then
			arg2.throttlingPriority = Extreme_upvr
		end
		do
			return function() -- Line 31
				--[[ Upvalues[4]:
					[1]: arg1 (copied, readonly)
					[2]: arg1_2 (readonly)
					[3]: var6_upvw (read and write)
					[4]: arg2 (readonly)
				]]
				return arg1:PostAsyncFullUrl(arg1_2, var6_upvw, arg2.throttlingPriority, arg2.contentType)
			end
		end
		-- KONSTANTERROR: [25] 18. Error Block 20 end (CF ANALYSIS FAILED)
	end
	local function _(arg1_3) -- Line 41, Named "doHttpGet"
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Extreme_upvr (copied, readonly)
		]]
		return function() -- Line 42
			--[[ Upvalues[3]:
				[1]: arg1 (copied, readonly)
				[2]: arg1_3 (readonly)
				[3]: Extreme_upvr (copied, readonly)
			]]
			return arg1:GetAsyncFullUrl(arg1_3, Extreme_upvr)
		end
	end
	return function(arg1_4, arg2, arg3) -- Line 55
		--[[ Upvalues[5]:
			[1]: doHttpPost_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: Extreme_upvr (copied, readonly)
			[4]: Promise_upvr (copied, readonly)
			[5]: HttpService_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var10
		if type(arg1_4) ~= "string" then
			var10 = false
		else
			var10 = true
		end
		assert(var10, "Expected url to be a string")
		if type(arg2) ~= "string" then
			var10 = false
		else
			var10 = true
		end
		assert(var10, "Expected requestMethod to be a string")
		var10 = not arg3
		if not var10 then
			if type(arg3) ~= "table" then
				var10 = false
			else
				var10 = true
			end
		end
		assert(var10, "Expected options to be a table")
		var10 = arg2
		local string_upper_result1 = string.upper(var10)
		if string_upper_result1 == "POST" then
			var10 = doHttpPost_upvr(arg1_4, arg3)
		elseif string_upper_result1 == "GET" then
			local function var12_upvw() -- Line 42
				--[[ Upvalues[3]:
					[1]: arg1 (copied, readonly)
					[2]: arg1_4 (readonly)
					[3]: Extreme_upvr (copied, readonly)
				]]
				return arg1:GetAsyncFullUrl(arg1_4, Extreme_upvr)
			end
		else
			var10 = error
			var10(string.format("Unsupported requestMethod : %s", string_upper_result1 or "nil"))
		end
		var10 = Promise_upvr.new
		var10 = var10(function(arg1_5, arg2_2) -- Line 70
			--[[ Upvalues[2]:
				[1]: var12_upvw (read and write)
				[2]: HttpService_upvr (copied, readonly)
			]]
			if var12_upvw then
				spawn(function() -- Line 72
					--[[ Upvalues[4]:
						[1]: var12_upvw (copied, read and write)
						[2]: HttpService_upvr (copied, readonly)
						[3]: arg1_5 (readonly)
						[4]: arg2_2 (readonly)
					]]
					local pcall_result1_2, pcall_result2_2_upvr = pcall(var12_upvw)
					if pcall_result1_2 then
						local pcall_result1, pcall_result2 = pcall(function() -- Line 76
							--[[ Upvalues[2]:
								[1]: HttpService_upvr (copied, readonly)
								[2]: pcall_result2_2_upvr (readonly)
							]]
							return HttpService_upvr:JSONDecode(pcall_result2_2_upvr)
						end)
						if pcall_result1 then
							arg1_5({
								responseBody = pcall_result2;
							})
						else
							arg2_2(pcall_result2)
						end
					end
					arg2_2(pcall_result2_2_upvr)
				end)
			else
				arg2_2()
			end
		end)
		return var10
	end
end