-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:16:51
-- Luau version 6, Types version 3
-- Time taken: 0.004863 seconds

local CorePackages = game:GetService("CorePackages")
local Url = require(CorePackages.Workspace.Packages.Http).Url
local UrlBuilder = require(CorePackages.Packages.UrlBuilder).UrlBuilder
local Logging_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).Logging
local ArgCheck_upvr = require(CorePackages.Workspace.Packages.ArgCheck)
local tbl_2 = {
	GET_INSTRUCTIONS = "timed-entertainment-allowance/v1/instructions";
	REPORT_EXECUTION = "timed-entertainment-allowance/v1/reportExecute";
}
local tbl_3_upvr = {
	GET_INSTRUCTIONS = {
		errorCode = "number";
		instructions = "table";
	};
	INSTRUCTION = {
		type = "number";
		instructionName = "string";
		serialId = "string";
		title = "string";
		message = "string";
		url = "string";
		modalType = "number";
		data = "string";
	};
	REPORT_EXECUTION = {
		errorCode = "number";
	};
}
local function checkFormat_upvr(arg1, arg2) -- Line 60, Named "checkFormat"
	for i, v in pairs(arg1) do
		local var21
		if arg2[i] == nil then
			var21 = false
		else
			var21 = true
		end
		assert(var21, "Missing key")
		if type(arg2[i]) ~= v then
			var21 = false
		else
			var21 = true
		end
		assert(var21, "Wrong type")
	end
end
local module = {
	httpService = nil;
	new = function(arg1, arg2) -- Line 77, Named "new"
		--[[ Upvalues[1]:
			[1]: ArgCheck_upvr (readonly)
		]]
		ArgCheck_upvr.isNotNil(arg2, "httpService")
		local module_2 = {}
		module_2.httpService = arg2
		setmetatable(module_2, arg1)
		arg1.__index = arg1
		return module_2
	end;
}
local var24_upvr = UrlBuilder.new({
	base = Url.APIS_URL;
	path = tbl_2.GET_INSTRUCTIONS;
})()
function module.getInstructions(arg1, arg2) -- Line 99
	--[[ Upvalues[5]:
		[1]: ArgCheck_upvr (readonly)
		[2]: var24_upvr (readonly)
		[3]: checkFormat_upvr (readonly)
		[4]: tbl_3_upvr (readonly)
		[5]: Logging_upvr (readonly)
	]]
	ArgCheck_upvr.isNotNil(arg1.httpService, "httpService")
	ArgCheck_upvr.isNotNil(arg2, "callback")
	arg1.httpService:RequestInternal({
		Url = var24_upvr;
		Method = "GET";
	}):Start(function(arg1_2, arg2_2) -- Line 106
		--[[ Upvalues[6]:
			[1]: arg1 (readonly)
			[2]: checkFormat_upvr (copied, readonly)
			[3]: tbl_3_upvr (copied, readonly)
			[4]: Logging_upvr (copied, readonly)
			[5]: var24_upvr (copied, readonly)
			[6]: arg2 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 24 start (CF ANALYSIS FAILED)
		local var27
		if not arg1_2 then
			var27 = false
			-- KONSTANTWARNING: GOTO [44] #36
		end
		-- KONSTANTERROR: [0] 1. Error Block 24 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [9] 9. Error Block 25 start (CF ANALYSIS FAILED)
		if arg2_2.StatusCode == 401 then
			var27 = false
		elseif arg2_2.StatusCode < 200 or 400 <= arg2_2.StatusCode then
			var27 = false
		else
			local tbl_upvw = {}
			local pcall_result1_2, pcall_result2_2 = pcall(function() -- Line 123
				--[[ Upvalues[5]:
					[1]: arg1 (copied, readonly)
					[2]: arg2_2 (readonly)
					[3]: checkFormat_upvr (copied, readonly)
					[4]: tbl_3_upvr (copied, readonly)
					[5]: tbl_upvw (read and write)
				]]
				local any_JSONDecode_result1 = arg1.httpService:JSONDecode(arg2_2.Body)
				local GET_INSTRUCTIONS = tbl_3_upvr.GET_INSTRUCTIONS
				checkFormat_upvr(GET_INSTRUCTIONS, any_JSONDecode_result1)
				if any_JSONDecode_result1.errorCode ~= 0 then
					GET_INSTRUCTIONS = false
				else
					GET_INSTRUCTIONS = true
				end
				assert(GET_INSTRUCTIONS, "Error code is not 0")
				for _, v_2 in ipairs(any_JSONDecode_result1.instructions) do
					checkFormat_upvr(tbl_3_upvr.INSTRUCTION, v_2)
				end
				tbl_upvw = any_JSONDecode_result1.instructions
			end)
			var27 = pcall_result1_2
		end
		if not var27 then
			Logging_upvr.warn("HttpRequests".." getInstructions failed: "..var24_upvr..", "..pcall_result2_2)
		end
		arg2(var27, true, tbl_upvw)
		-- KONSTANTERROR: [9] 9. Error Block 25 end (CF ANALYSIS FAILED)
	end)
end
local var41_upvr = UrlBuilder.new({
	base = Url.APIS_URL;
	path = tbl_2.REPORT_EXECUTION;
})()
function module.reportExecution(arg1, arg2, arg3, arg4) -- Line 148
	--[[ Upvalues[5]:
		[1]: ArgCheck_upvr (readonly)
		[2]: var41_upvr (readonly)
		[3]: checkFormat_upvr (readonly)
		[4]: tbl_3_upvr (readonly)
		[5]: Logging_upvr (readonly)
	]]
	ArgCheck_upvr.isNotNil(arg1.httpService, "httpService")
	local tbl = {}
	tbl.instructionName = arg2
	tbl.serialId = arg3
	tbl.execTime = os.date("%Y-%m-%dT%H:%M:%SZ")
	arg1.httpService:RequestInternal({
		Url = var41_upvr;
		Method = "POST";
		Headers = {
			["Content-Type"] = "application/json";
		};
		Body = arg1.httpService:JSONEncode(tbl);
	}):Start(function(arg1_3, arg2_3) -- Line 165
		--[[ Upvalues[6]:
			[1]: arg1 (readonly)
			[2]: checkFormat_upvr (copied, readonly)
			[3]: tbl_3_upvr (copied, readonly)
			[4]: Logging_upvr (copied, readonly)
			[5]: var41_upvr (copied, readonly)
			[6]: arg4 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
		if not arg1_3 then
			-- KONSTANTWARNING: GOTO [32] #27
		end
		-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [6] 7. Error Block 21 start (CF ANALYSIS FAILED)
		local var46
		if arg2_3.StatusCode < 200 and 400 <= arg2_3.StatusCode then
			var46 = false
		else
			local pcall_result1, pcall_result2 = pcall(function() -- Line 176
				--[[ Upvalues[4]:
					[1]: arg1 (copied, readonly)
					[2]: arg2_3 (readonly)
					[3]: checkFormat_upvr (copied, readonly)
					[4]: tbl_3_upvr (copied, readonly)
				]]
				local any_JSONDecode_result1_2 = arg1.httpService:JSONDecode(arg2_3.Body)
				local REPORT_EXECUTION = tbl_3_upvr.REPORT_EXECUTION
				checkFormat_upvr(REPORT_EXECUTION, any_JSONDecode_result1_2)
				if any_JSONDecode_result1_2.errorCode ~= 0 then
					REPORT_EXECUTION = false
				else
					REPORT_EXECUTION = true
				end
				assert(REPORT_EXECUTION, "Error code is not 0")
			end)
			var46 = pcall_result1
		end
		if not var46 then
			Logging_upvr.warn("HttpRequests".." reportExecution failed: "..var41_upvr..", "..pcall_result2)
		end
		if arg4 ~= nil then
			arg4(var46)
		end
		-- KONSTANTERROR: [6] 7. Error Block 21 end (CF ANALYSIS FAILED)
	end)
end
local var52_upvr = UrlBuilder.new({
	base = Url.AUTH_URL;
	path = "v1/logout";
})()
function module.logout(arg1) -- Line 191
	--[[ Upvalues[2]:
		[1]: ArgCheck_upvr (readonly)
		[2]: var52_upvr (readonly)
	]]
	ArgCheck_upvr.isNotNil(arg1.httpService, "httpService")
	local any_RequestInternal_result1_upvr = arg1.httpService:RequestInternal({
		Url = var52_upvr;
		Method = "POST";
		Headers = {
			["Content-Type"] = "application/json";
		};
		Body = "";
	})
	pcall(function() -- Line 201
		--[[ Upvalues[1]:
			[1]: any_RequestInternal_result1_upvr (readonly)
		]]
		any_RequestInternal_result1_upvr:Start(function(arg1_4, arg2) -- Line 202
		end)
	end)
end
return module