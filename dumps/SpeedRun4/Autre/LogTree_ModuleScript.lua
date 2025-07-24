-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:18:42
-- Luau version 6, Types version 3
-- Time taken: 0.003922 seconds

local AppDebug = script:FindFirstAncestor("AppDebug")
local Parent = AppDebug.Parent
local Dash_upvr = require(Parent.Dash)
local Lumberyak_upvr = require(Parent.Lumberyak)
local Levels_upvr = Lumberyak_upvr.Logger.Levels
local any_new_result1_upvr = Lumberyak_upvr.Logger.new(nil, "root")
local tbl_upvr = {
	['*'] = any_new_result1_upvr;
}
any_new_result1_upvr:setContext({
	tostring = function(arg1) -- Line 46, Named "argToString"
		--[[ Upvalues[1]:
			[1]: Dash_upvr (readonly)
		]]
		if typeof(arg1) == "string" then
			return arg1
		end
		local getmetatable_result1 = getmetatable(arg1)
		if getmetatable_result1 and getmetatable_result1.__tostring then
			return tostring(arg1)
		end
		return Dash_upvr.pretty(arg1)
	end;
})
local function _(arg1, arg2) -- Line 63, Named "newLogger"
	--[[ Upvalues[2]:
		[1]: Lumberyak_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	local any_new_result1 = Lumberyak_upvr.Logger.new(arg1, arg2)
	tbl_upvr[arg2] = any_new_result1
	return any_new_result1
end
local function createLoggerTree_upvr(arg1) -- Line 69, Named "createLoggerTree"
	--[[ Upvalues[3]:
		[1]: any_new_result1_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: Lumberyak_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var19
	for i, v in arg1:split('.'), nil do
		if v == "" then
			error("Invalid log tag: "..arg1)
		end
		if i == 1 then
			var19 = v
		else
			var19 = var19..'.'..v
		end
		local var20 = tbl_upvr[var19]
		if not var20 then
			local var21 = var19
			local any_new_result1_2 = Lumberyak_upvr.Logger.new(any_new_result1_upvr, var21)
			tbl_upvr[var21] = any_new_result1_2
			var20 = any_new_result1_2
		end
	end
	return var20
end
local function _(arg1) -- Line 92, Named "parseTag"
	--[[ Upvalues[2]:
		[1]: Dash_upvr (readonly)
		[2]: Levels_upvr (readonly)
	]]
	local any_split_result1_2 = arg1:split(':')
	if #any_split_result1_2 ~= 2 then
		warn("Invalid LogTree value: "..arg1)
		return nil, nil
	end
	local unpacked_value_1, unpacked_value_2_2 = table.unpack(any_split_result1_2)
	return Dash_upvr.trim(unpacked_value_1), Levels_upvr.fromString(unpacked_value_2_2)
end
local tick_result1_upvr = tick()
local function formatLog_upvr(arg1, arg2, arg3) -- Line 103, Named "formatLog"
	--[[ Upvalues[1]:
		[1]: tick_result1_upvr (readonly)
	]]
	local formatted = string.format("%s [%s] %s", arg2.level:sub(1, 1), arg2.loggerName, arg1)
	if arg3 then
		formatted = string.format("[%0.3f] %s", tick() - tick_result1_upvr, formatted)
	end
	return formatted
end
local function _(arg1) -- Line 123, Named "splitNonEmpty"
	--[[ Upvalues[1]:
		[1]: Dash_upvr (readonly)
	]]
	return Dash_upvr.filter(Dash_upvr.splitOn(arg1, "%s+"), function(arg1_2) -- Line 125
		local var32
		if 0 >= #arg1_2 then
			var32 = false
		else
			var32 = true
		end
		return var32
	end)
end
local SharedSink_upvr = require(AppDebug.SharedSink)
return {
	logger = function(arg1) -- Line 88, Named "logger"
		--[[ Upvalues[2]:
			[1]: tbl_upvr (readonly)
			[2]: createLoggerTree_upvr (readonly)
		]]
		local var23 = tbl_upvr[arg1]
		if not var23 then
			var23 = createLoggerTree_upvr(arg1)
		end
		return var23
	end;
	formatLog = formatLog_upvr;
	logToConsole = function(arg1, arg2, arg3) -- Line 113, Named "logToConsole"
		--[[ Upvalues[2]:
			[1]: formatLog_upvr (readonly)
			[2]: Levels_upvr (readonly)
		]]
		local level = arg3.level
		local formatLog_upvr_result1 = formatLog_upvr(arg2, arg3, false)
		if level == Levels_upvr.Error or level == Levels_upvr.Warning then
			warn(formatLog_upvr_result1)
		else
			print(formatLog_upvr_result1)
		end
	end;
	setLogTags = function(arg1, arg2) -- Line 130, Named "setLogTags"
		--[[ Upvalues[5]:
			[1]: SharedSink_upvr (readonly)
			[2]: Dash_upvr (readonly)
			[3]: Levels_upvr (readonly)
			[4]: tbl_upvr (readonly)
			[5]: createLoggerTree_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		for _, v_2 in Dash_upvr.filter(Dash_upvr.splitOn(arg1, "%s+"), function(arg1_3) -- Line 125
			local var43
			if 0 >= #arg1_3 then
				var43 = false
			else
				var43 = true
			end
			return var43
		end), nil do
			local any_split_result1 = v_2:split(':')
			local var45
			if #any_split_result1 ~= 2 then
				warn("Invalid LogTree value: "..v_2)
				var45 = nil
			else
				local unpacked_value_1_2, unpacked_value_2 = table.unpack(any_split_result1)
				var45 = Dash_upvr.trim(unpacked_value_1_2)
			end
			if var45 ~= nil then
				local tostring_result1 = tostring(var45)
				any_split_result1 = tbl_upvr[tostring_result1]
				local var49 = any_split_result1
				if not var49 then
					var49 = createLoggerTree_upvr(tostring_result1)
				end
				var49:addSink(SharedSink_upvr.new(arg2):newSink(Levels_upvr.fromString(unpacked_value_2)))
			end
		end
	end;
}