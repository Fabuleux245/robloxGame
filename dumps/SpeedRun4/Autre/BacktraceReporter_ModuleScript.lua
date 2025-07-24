-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:01:56
-- Luau version 6, Types version 3
-- Time taken: 0.008364 seconds

local Parent = script:FindFirstAncestor("ErrorReporters").Parent
local RunService_upvr = game:GetService("RunService")
local Cryo_upvr = require(Parent.Cryo)
local t = require(Parent.t)
local BacktraceReport_upvr = require(script.Parent.BacktraceReport)
local any_IsStudio_result1_upvr = RunService_upvr:IsStudio()
local module_upvr = {}
module_upvr.__index = module_upvr
local any_strictInterface_result1_upvr = t.strictInterface({
	httpService = t.some(t.instanceOf("HttpService"), t.interface({
		JSONEncode = t.callback;
		JSONDecode = t.callback;
		RequestInternal = t.callback;
	}));
	token = t.string;
	processErrorReportMethod = t.optional(t.callback);
	queueOptions = t.optional(t.table);
	generateLogMethod = t.optional(t.callback);
	logIntervalInSeconds = t.optional(t.numberPositive);
})
local ErrorQueue_upvr = require(script.Parent.Parent.ErrorQueue)
function module_upvr.new(arg1) -- Line 41
	--[[ Upvalues[4]:
		[1]: any_strictInterface_result1_upvr (readonly)
		[2]: any_IsStudio_result1_upvr (readonly)
		[3]: module_upvr (readonly)
		[4]: ErrorQueue_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 19 start (CF ANALYSIS FAILED)
	local any_strictInterface_result1_upvr_result1, any_strictInterface_result1_upvr_result2 = any_strictInterface_result1_upvr(arg1)
	local var14_upvw
	if any_strictInterface_result1_upvr_result1 then
		var14_upvw = {
			_isEnabled = true;
			_httpService = arg1.httpService;
			_errorQueue = nil;
			_reportUrl = game:GetFastString("ErrorUploadToBacktraceBaseUrl").."token="..arg1.token;
			_processErrorReportMethod = arg1.processErrorReportMethod;
			_sharedAttributes = {};
			_sharedAnnotations = {};
			_generateLogMethod = arg1.generateLogMethod;
			_logIntervalInSeconds = arg1.logIntervalInSeconds or 60;
			_lastLogTime = 0;
		}
		-- KONSTANTWARNING: GOTO [74] #52
	end
	-- KONSTANTERROR: [0] 1. Error Block 19 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [55] 37. Error Block 20 start (CF ANALYSIS FAILED)
	if any_IsStudio_result1_upvr or _G.__DEV__ then
		error("invalid arguments for BacktraceReporter: "..any_strictInterface_result1_upvr_result2)
	else
		var14_upvw = {
			_isEnabled = false;
		}
	end
	setmetatable(var14_upvw, module_upvr)
	if var14_upvw._isEnabled then
		var14_upvw._errorQueue = ErrorQueue_upvr.new(function(...) -- Line 71
			--[[ Upvalues[1]:
				[1]: var14_upvw (read and write)
			]]
			var14_upvw:_reportErrorFromErrorQueue(...)
		end, arg1.queueOptions)
		var14_upvw._errorQueue:startTimer()
	end
	do
		return var14_upvw
	end
	-- KONSTANTERROR: [55] 37. Error Block 20 end (CF ANALYSIS FAILED)
end
local game_DefineFastInt_result1_upvr = game:DefineFastInt("OldestUAVersionToReportErrors", 0)
function module_upvr.isTooOldToReportErrors(arg1) -- Line 84
	--[[ Upvalues[2]:
		[1]: RunService_upvr (readonly)
		[2]: game_DefineFastInt_result1_upvr (readonly)
	]]
	local tonumber_result1 = tonumber(string.match(RunService_upvr:GetRobloxVersion(), ".(%d+)."))
	if not tonumber_result1 then
		return false
	end
	if tonumber_result1 < game_DefineFastInt_result1_upvr then
		return true
	end
	return false
end
function module_upvr.sendErrorReport(arg1, arg2, arg3) -- Line 96
	--[[ Upvalues[1]:
		[1]: any_IsStudio_result1_upvr (readonly)
	]]
	if not arg1._isEnabled then
	else
		if arg1:isTooOldToReportErrors() then return end
		if any_IsStudio_result1_upvr or _G.__DEV__ then
			assert(arg2:validate())
		end
		local pcall_result1_2, pcall_result2_upvr = pcall(function() -- Line 112
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
			]]
			return arg1._httpService:JSONEncode(arg2)
		end)
		if not pcall_result1_2 then
			warn("Cannot convert report to Json")
			return
		end
		pcall(function() -- Line 121
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: pcall_result2_upvr (readonly)
				[3]: arg3 (readonly)
			]]
			arg1._httpService:RequestInternal({
				Url = arg1._reportUrl.."&format=json";
				Method = "POST";
				Headers = {
					["Content-Type"] = "application/json";
				};
				Body = pcall_result2_upvr;
			}):Start(function(arg1_2, arg2_2) -- Line 131
				--[[ Upvalues[2]:
					[1]: arg3 (copied, readonly)
					[2]: arg1 (copied, readonly)
				]]
				if arg2_2.StatusCode == 200 and arg3 ~= nil then
					local pcall_result1, pcall_result2_4 = pcall(function() -- Line 135
						--[[ Upvalues[2]:
							[1]: arg1 (copied, readonly)
							[2]: arg2_2 (readonly)
						]]
						return arg1._httpService:JSONDecode(arg2_2.Body)
					end)
					if pcall_result1 and pcall_result2_4._rxid ~= nil then
						arg1:_sendLogToReport(pcall_result2_4._rxid, arg3)
					end
				end
			end)
		end)
	end
end
function module_upvr._sendLogToReport(arg1, arg2, arg3) -- Line 147
	if type(arg3) ~= "string" or #arg3 == 0 then
	else
		pcall(function() -- Line 152
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
				[3]: arg3 (readonly)
			]]
			local tbl_2 = {
				Url = arg1._reportUrl.."&object="..arg2.."&attachment_name=log.txt";
				Method = "POST";
			}
			tbl_2.Headers = {
				["Content-Type"] = "text/plain";
			}
			tbl_2.Body = arg3
			arg1._httpService:RequestInternal(tbl_2):Start(function(arg1_3, arg2_3) -- Line 162
			end)
		end)
	end
end
function module_upvr._generateLog(arg1) -- Line 168
	if arg1._generateLogMethod ~= nil and arg1._logIntervalInSeconds < tick() - arg1._lastLogTime then
		arg1._lastLogTime = tick()
		local pcall_result1_5, pcall_result2 = pcall(function() -- Line 172
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1._generateLogMethod()
		end)
		if pcall_result1_5 and type(pcall_result2) == "string" and 0 < #pcall_result2 then
			return pcall_result2
		end
	end
	return nil
end
function module_upvr._generateErrorReport(arg1, arg2, arg3, arg4) -- Line 184
	--[[ Upvalues[1]:
		[1]: BacktraceReport_upvr (readonly)
	]]
	local var43
	if type(arg4) == "table" then
		var43 = BacktraceReport_upvr.fromDetails(arg4)
	else
		var43 = BacktraceReport_upvr.fromMessageAndStack(arg2, arg3)
	end
	var43:addAttributes(arg1._sharedAttributes)
	var43:addAnnotations(arg1._sharedAnnotations)
	if type(arg4) == "string" and arg4 ~= "" then
		local tbl_4 = {}
		tbl_4.stackDetails = arg4
		var43:addAnnotations(tbl_4)
	end
	return var43
end
function module_upvr.reportErrorImmediately(arg1, arg2, arg3, arg4) -- Line 206
	if not arg1._isEnabled then
	else
		local any__generateErrorReport_result1_2 = arg1:_generateErrorReport(arg2, arg3, arg4)
		if arg1._processErrorReportMethod ~= nil then
			any__generateErrorReport_result1_2 = arg1._processErrorReportMethod(any__generateErrorReport_result1_2)
		end
		arg1:sendErrorReport(any__generateErrorReport_result1_2, arg1:_generateLog())
	end
end
function module_upvr.reportErrorDeferred(arg1, arg2, arg3, arg4) -- Line 223
	if not arg1._isEnabled then
	else
		local formatted = string.format("%s | %s", arg2, arg3)
		local tbl = {}
		if not arg1._errorQueue:hasError(formatted) then
			local any__generateErrorReport_result1 = arg1:_generateErrorReport(arg2, arg3, arg4)
			if arg1._processErrorReportMethod ~= nil then
				any__generateErrorReport_result1 = arg1._processErrorReportMethod(any__generateErrorReport_result1)
			end
			tbl = {
				backtraceReport = any__generateErrorReport_result1;
				log = arg1:_generateLog();
			}
		end
		arg1._errorQueue:addError(formatted, tbl)
	end
end
function module_upvr._reportErrorFromErrorQueue(arg1, arg2, arg3, arg4) -- Line 250
	local backtraceReport = arg3.backtraceReport
	local tbl_3 = {}
	tbl_3.ErrorCount = arg4
	backtraceReport:addAttributes(tbl_3)
	arg1:sendErrorReport(backtraceReport, arg3.log)
end
local IAttributes_upvr = BacktraceReport_upvr.IAttributes
function module_upvr.updateSharedAttributes(arg1, arg2) -- Line 264
	--[[ Upvalues[3]:
		[1]: Cryo_upvr (readonly)
		[2]: IAttributes_upvr (readonly)
		[3]: any_IsStudio_result1_upvr (readonly)
	]]
	local any_join_result1 = Cryo_upvr.Dictionary.join(arg1._sharedAttributes, arg2)
	local IAttributes_upvr_result1, IAttributes_upvr_result2 = IAttributes_upvr(any_join_result1)
	if not IAttributes_upvr_result1 then
		if any_IsStudio_result1_upvr or _G.__DEV__ then
			assert(IAttributes_upvr_result1, IAttributes_upvr_result2)
		else
			return
		end
	end
	arg1._sharedAttributes = any_join_result1
end
local IAnnotations_upvr = BacktraceReport_upvr.IAnnotations
function module_upvr.updateSharedAnnotations(arg1, arg2) -- Line 283
	--[[ Upvalues[3]:
		[1]: Cryo_upvr (readonly)
		[2]: IAnnotations_upvr (readonly)
		[3]: any_IsStudio_result1_upvr (readonly)
	]]
	local any_join_result1_2 = Cryo_upvr.Dictionary.join(arg1._sharedAnnotations, arg2)
	local var56_result1, var56_result2 = IAnnotations_upvr(any_join_result1_2)
	if not var56_result1 then
		if any_IsStudio_result1_upvr or _G.__DEV__ then
			assert(var56_result1, var56_result2)
		else
			return
		end
	end
	arg1._sharedAnnotations = any_join_result1_2
end
function module_upvr.reportAllErrors(arg1) -- Line 300
	if arg1._errorQueue ~= nil then
		arg1._errorQueue:reportAllErrors()
	end
end
function module_upvr.stop(arg1) -- Line 306
	arg1._isEnabled = false
	if arg1._errorQueue ~= nil then
		arg1:reportAllErrors()
		arg1._errorQueue:stopTimer()
	end
end
return module_upvr