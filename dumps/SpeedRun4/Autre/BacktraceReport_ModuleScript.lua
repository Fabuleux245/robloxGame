-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:01:55
-- Luau version 6, Types version 3
-- Time taken: 0.008327 seconds

local Parent = script:FindFirstAncestor("ErrorReporters").Parent
local Cryo_upvr = require(Parent.Cryo)
local t_upvr = require(Parent.t)
local ProcessErrorStack_upvr = require(script.Parent.ProcessErrorStack)
local GetFFlagBacktraceMainSourcePathEnabled_upvr = require(script.Parent.Flags.GetFFlagBacktraceMainSourcePathEnabled)
local any_optional_result1_2 = t_upvr.optional(t_upvr.map(t_upvr.string, t_upvr.some(t_upvr.string, t_upvr.number, t_upvr.boolean)))
local any_optional_result1 = t_upvr.optional(t_upvr.map(t_upvr.string, function(arg1) -- Line 77
	--[[ Upvalues[1]:
		[1]: t_upvr (readonly)
	]]
	local function checkTypeRecursive_upvr(arg1_2) -- Line 78, Named "checkTypeRecursive"
		--[[ Upvalues[2]:
			[1]: checkTypeRecursive_upvr (readonly)
			[2]: t_upvr (copied, readonly)
		]]
		if type(arg1_2) == "table" then
			for i, v in pairs(arg1_2) do
				local checkTypeRecursive_upvr_result1, checkTypeRecursive_result2 = checkTypeRecursive_upvr(v)
				if not checkTypeRecursive_upvr_result1 then
					return false, string.format("error when checking key: %s - %s", i, checkTypeRecursive_result2)
				end
			end
			return true
		end
		return t_upvr.some(t_upvr.string, t_upvr.number, t_upvr.boolean)(arg1_2)
	end
	return checkTypeRecursive_upvr(arg1)
end))
local module_upvr = {
	IAttributes = any_optional_result1_2;
	IAnnotations = any_optional_result1;
}
module_upvr.__index = module_upvr
local function _(arg1) -- Line 155
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	if arg1 and type(arg1) == "table" then
		local any_keys_result1_6 = Cryo_upvr.Dictionary.keys(arg1)
		if 0 < #any_keys_result1_6 then
			local var33 = arg1[any_keys_result1_6[1]]
			if var33 and var33.path ~= nil then
				return var33.path
			end
		end
	end
	return ""
end
local any_intersection_result1_upvr = t_upvr.intersection(t_upvr.strictInterface({
	uuid = t_upvr.string;
	timestamp = t_upvr.number;
	lang = t_upvr.string;
	langVersion = t_upvr.string;
	agent = t_upvr.string;
	agentVersion = t_upvr.string;
	threads = t_upvr.map(t_upvr.string, t_upvr.strictInterface({
		name = t_upvr.optional(t_upvr.string);
		fault = t_upvr.optional(t_upvr.boolean);
		stack = t_upvr.optional(t_upvr.array(t_upvr.strictInterface({
			guessed_frame = t_upvr.optional(t_upvr.boolean);
			funcName = t_upvr.optional(t_upvr.string);
			address = t_upvr.optional(t_upvr.string);
			line = t_upvr.optional(t_upvr.string);
			column = t_upvr.optional(t_upvr.string);
			sourceCode = t_upvr.optional(t_upvr.string);
			library = t_upvr.optional(t_upvr.string);
			debug_identifier = t_upvr.optional(t_upvr.string);
			faulted = t_upvr.optional(t_upvr.boolean);
			registers = t_upvr.optional(t_upvr.map(t_upvr.string, t_upvr.some(t_upvr.string, t_upvr.number)));
		})));
	}));
	mainThread = t_upvr.string;
	attributes = any_optional_result1_2;
	annotations = any_optional_result1;
	symbolication = t_upvr.optional(t_upvr.literal("minidump"));
	entryThread = t_upvr.optional(t_upvr.string);
	arch = t_upvr.optional(t_upvr.strictInterface({
		name = t_upvr.string;
		registers = t_upvr.map(t_upvr.string, t_upvr.string);
	}));
	fingerprint = t_upvr.optional(t_upvr.string);
	classifiers = t_upvr.optional(t_upvr.array(t_upvr.string));
	sourceCode = t_upvr.optional(t_upvr.map(t_upvr.string, t_upvr.strictInterface({
		text = t_upvr.optional(t_upvr.string);
		startLine = t_upvr.optional(t_upvr.number);
		startColumn = t_upvr.optional(t_upvr.number);
		startPos = t_upvr.optional(t_upvr.number);
		path = t_upvr.optional(t_upvr.string);
		tabWidth = t_upvr.optional(t_upvr.number);
	})));
	memory = t_upvr.optional(t_upvr.array(t_upvr.strictInterface({
		start = t_upvr.string;
		size = t_upvr.optional(t_upvr.number);
		data = t_upvr.optional(t_upvr.string);
		perms = t_upvr.optional(t_upvr.strictInterface({
			read = t_upvr.boolean;
			write = t_upvr.boolean;
			exec = t_upvr.boolean;
		}));
	})));
	modules = t_upvr.optional(t_upvr.array(t_upvr.strictInterface({
		start = t_upvr.string;
		size = t_upvr.number;
		code_file = t_upvr.optional(t_upvr.string);
		version = t_upvr.optional(t_upvr.string);
		debug_file = t_upvr.optional(t_upvr.string);
		debug_identifier = t_upvr.optional(t_upvr.string);
		debug_file_exists = t_upvr.optional(t_upvr.boolean);
	})));
}), function(arg1) -- Line 122
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local pairs_result1_2, pairs_result2, pairs_result3_2 = pairs(arg1.threads)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 18. Error Block 18 start (CF ANALYSIS FAILED)
	if false then
		-- KONSTANTWARNING: GOTO [28] #20
	end
	-- KONSTANTERROR: [25] 18. Error Block 18 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 7. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [26.8]
	-- KONSTANTERROR: [8] 7. Error Block 2 end (CF ANALYSIS FAILED)
end)
function module_upvr.validate(arg1) -- Line 168
	--[[ Upvalues[1]:
		[1]: any_intersection_result1_upvr (readonly)
	]]
	return any_intersection_result1_upvr(arg1)
end
local HttpService_upvr = game:GetService("HttpService")
function module_upvr.new() -- Line 173
	--[[ Upvalues[2]:
		[1]: HttpService_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local module = {
		uuid = HttpService_upvr:GenerateGUID(false):lower();
		timestamp = os.time();
		lang = "lua";
		langVersion = "Roblox";
		agent = "backtrace-Lua";
		agentVersion = "0.1.0";
		threads = {};
		mainThread = "default";
	}
	setmetatable(module, module_upvr)
	return module
end
function module_upvr.addAttributes(arg1, arg2) -- Line 190
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	if type(arg2) ~= "table" then
		warn("Cannot add attributes of type: ", type(arg2))
	else
		local attributes = arg1.attributes
		if not attributes then
			attributes = {}
		end
		arg1.attributes = Cryo_upvr.Dictionary.join(attributes, arg2)
	end
end
function module_upvr.addAnnotations(arg1, arg2) -- Line 203
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	if type(arg2) ~= "table" then
		warn("Cannot add annotations of type: ", type(arg2))
	else
		local annotations = arg1.annotations
		if not annotations then
			annotations = {}
		end
		arg1.annotations = Cryo_upvr.Dictionary.join(annotations, arg2)
	end
end
function module_upvr.addStackToThread(arg1, arg2, arg3) -- Line 216
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	local tbl_9 = {}
	local tbl_4 = {}
	tbl_4.name = arg3
	tbl_4.stack = arg2
	tbl_9[arg3] = tbl_4
	arg1.threads = Cryo_upvr.Dictionary.join(arg1.threads, tbl_9)
end
function module_upvr.addStackToMainThread(arg1, arg2) -- Line 229
	arg1:addStackToThread(arg2, arg1.mainThread)
end
function module_upvr.fromMessageAndStack(arg1, arg2) -- Line 233
	--[[ Upvalues[4]:
		[1]: module_upvr (readonly)
		[2]: ProcessErrorStack_upvr (readonly)
		[3]: GetFFlagBacktraceMainSourcePathEnabled_upvr (readonly)
		[4]: Cryo_upvr (readonly)
	]]
	local any_new_result1_3 = module_upvr.new()
	local tbl_2 = {}
	tbl_2["error.message"] = arg1
	any_new_result1_3:addAttributes(tbl_2)
	local ProcessErrorStack_upvr_result1_2, ProcessErrorStack_upvr_result2_2 = ProcessErrorStack_upvr(arg2)
	any_new_result1_3:addStackToMainThread(ProcessErrorStack_upvr_result1_2)
	any_new_result1_3.sourceCode = ProcessErrorStack_upvr_result2_2
	if GetFFlagBacktraceMainSourcePathEnabled_upvr() then
		local tbl = {}
		local sourceCode_2 = any_new_result1_3.sourceCode
		if sourceCode_2 and type(sourceCode_2) == "table" then
			local any_keys_result1_3 = Cryo_upvr.Dictionary.keys(sourceCode_2)
			if 0 < #any_keys_result1_3 then
				local var57 = sourceCode_2[any_keys_result1_3[1]]
				if var57 and var57.path ~= nil then
					-- KONSTANTWARNING: GOTO [56] #42
				end
			end
		end
		tbl.MainSourcePath = ""
		any_new_result1_3:addAttributes(tbl)
	end
	return any_new_result1_3
end
function module_upvr.fromDetails(arg1) -- Line 253
	--[[ Upvalues[4]:
		[1]: module_upvr (readonly)
		[2]: ProcessErrorStack_upvr (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: GetFFlagBacktraceMainSourcePathEnabled_upvr (readonly)
	]]
	local any_new_result1_2 = module_upvr.new()
	any_new_result1_2:addAttributes({
		["error.message"] = arg1.message;
	})
	any_new_result1_2.sourceCode = {}
	for i_2, v_2 in ipairs(arg1.stacks) do
		local ProcessErrorStack_upvr_result1_4, ProcessErrorStack_upvr_result2, _ = ProcessErrorStack_upvr(v_2, 0)
		if i_2 == 1 then
			any_new_result1_2:addStackToMainThread(ProcessErrorStack_upvr_result1_4)
		else
			any_new_result1_2:addStackToThread(ProcessErrorStack_upvr_result1_4, "stack"..i_2)
		end
		any_new_result1_2.sourceCode = Cryo_upvr.Dictionary.join(any_new_result1_2.sourceCode, ProcessErrorStack_upvr_result2)
	end
	any_new_result1_2:addAnnotations(arg1.annotations)
	if GetFFlagBacktraceMainSourcePathEnabled_upvr() then
		local tbl_5 = {}
		v_2 = any_new_result1_2.sourceCode
		if v_2 and type(v_2) == "table" then
			local any_keys_result1 = Cryo_upvr.Dictionary.keys(v_2)
			if 0 < #any_keys_result1 then
				local var83 = v_2[any_keys_result1[1]]
				if var83 and var83.path ~= nil then
					i_2 = var83.path
					-- KONSTANTWARNING: GOTO [97] #70
				end
			end
		end
		i_2 = ""
		tbl_5.MainSourcePath = i_2
		any_new_result1_2:addAttributes(tbl_5)
	end
	return any_new_result1_2
end
return module_upvr