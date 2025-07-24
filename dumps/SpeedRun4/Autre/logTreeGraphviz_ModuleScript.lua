-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:18:43
-- Luau version 6, Types version 3
-- Time taken: 0.003415 seconds

local AppDebug = script:FindFirstAncestor("AppDebug")
local Levels = require(AppDebug.Parent.Lumberyak).Logger.Levels
local tbl_upvr_2 = {
	[Levels.Error] = "pink";
	[Levels.Warning] = "orange";
	[Levels.Info] = "yellow";
	[Levels.Debug] = "cyan";
	[Levels.Trace] = "green";
}
local tbl_upvr = {
	[Levels.Error] = 1;
	[Levels.Warning] = 2;
	[Levels.Info] = 3;
	[Levels.Debug] = 4;
	[Levels.Trace] = 5;
}
local function _(arg1) -- Line 28, Named "maxLevelToGraphvizAttr"
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	local var5 = tbl_upvr_2[arg1]
	local var6
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var6 = string.format(" fillcolor=%s style=filled", var5)
		return var6
	end
	if not var5 or not INLINED() then
		var6 = ""
	end
	return var6
end
local function _(arg1) -- Line 33, Named "getLevelRank"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	return tbl_upvr[arg1] or 0
end
local function _(arg1, arg2) -- Line 37, Named "maxLogLevel"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local var7
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var7 = arg1
		return var7
	end
	if (tbl_upvr[arg2] or 0) >= (tbl_upvr[arg1] or 0) or not INLINED_2() then
		var7 = arg2
	end
	return var7
end
local function dfsGraphviz_upvr(arg1, arg2) -- Line 41, Named "dfsGraphviz"
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: dfsGraphviz_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var24
	for _, v in arg1.sinks do
		local var25 = arg2
		local maxLevel = v.maxLevel
		if (tbl_upvr[maxLevel] or 0) >= (tbl_upvr[var25] or 0) or not var25 then
		end
	end
	local var28 = tbl_upvr_2[maxLevel]
	if not var28 or not string.format(" fillcolor=%s style=filled", var28) then
	end
	for _, _ in arg1.children do
		local var29
	end
	return var29
end
local LogTree_upvr = require(AppDebug.LogTree)
return function() -- Line 56
	--[[ Upvalues[2]:
		[1]: LogTree_upvr (readonly)
		[2]: dfsGraphviz_upvr (readonly)
	]]
	return "digraph {\n"..dfsGraphviz_upvr(LogTree_upvr.logger('*')).."}\n"
end