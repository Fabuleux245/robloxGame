-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:39:54
-- Luau version 6, Types version 3
-- Time taken: 0.002475 seconds

local function var1_upvr(arg1, arg2) -- Line 1
	local module = {arg2.Parent}
	if arg2.Parent == arg1 then
		return module
	end
	repeat
		local Parent = module[#module].Parent
		table.insert(module, Parent)
		if Parent == arg1 then
			return module
		end
	until module[#module].Parent == nil
	return module
end
local function var4_upvr(arg1) -- Line 16
	local var7
	for i = #arg1, 1, -1 do
		if i ~= #arg1 then
			var7 = var7..arg1[i].Name
			var7 = var7..string.char(28)
		end
	end
	return var7
end
local DefaultCheck_upvr = require(script.Parent.Parent.DefaultCheck)
local Allowed_upvr = require(script.Parent.Parent.Allowed)
local Binary_upvr = require(script.Parent.Parent.Binary)
local Convertors_upvr = require(script.Parent.Parent.Convertors)
return function(arg1, arg2, arg3) -- Line 31
	--[[ Upvalues[6]:
		[1]: DefaultCheck_upvr (readonly)
		[2]: Allowed_upvr (readonly)
		[3]: Binary_upvr (readonly)
		[4]: Convertors_upvr (readonly)
		[5]: var1_upvr (readonly)
		[6]: var4_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 48 start (CF ANALYSIS FAILED)
	if not DefaultCheck_upvr.isCreatable(arg2.ClassName) then
		arg1.throw("Uncreatable isntance detetected  : ", arg2.ClassName)
		return nil
	end
	local var13 = arg1.ClassesByName[arg2.ClassName]
	if not var13 then
		arg1.throw("Class defintion of ", arg2.ClassName, " not found!")
		return
	end
	local pairs_result1, pairs_result2, pairs_result3 = pairs(var13:GetAllProperties(true))
	-- KONSTANTERROR: [0] 1. Error Block 48 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [245] 183. Error Block 43 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [245] 183. Error Block 43 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [56] 43. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [245.12]
	-- KONSTANTERROR: [56] 43. Error Block 6 end (CF ANALYSIS FAILED)
end