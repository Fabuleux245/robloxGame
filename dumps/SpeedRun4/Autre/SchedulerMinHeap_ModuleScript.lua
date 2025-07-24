-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:05:12
-- Luau version 6, Types version 3
-- Time taken: 0.001701 seconds

local module = {}
local var20_upvw
local var11_upvw
function module.push(arg1, arg2) -- Line 22
	--[[ Upvalues[1]:
		[1]: var11_upvw (read and write)
	]]
	local var5 = #arg1 + 1
	arg1[var5] = arg2
	var11_upvw(arg1, arg2, var5)
end
function module.peek(arg1) -- Line 29
	return arg1[1]
end
local var14_upvw
function module.pop(arg1) -- Line 33
	--[[ Upvalues[1]:
		[1]: var14_upvw (read and write)
	]]
	local _1 = arg1[1]
	if _1 ~= nil then
		local var10 = arg1[#arg1]
		arg1[#arg1] = nil
		if var10 ~= _1 then
			arg1[1] = var10
			var14_upvw(arg1, var10, 1)
		end
		return _1
	end
	return nil
end
function var11_upvw(arg1, arg2, arg3) -- Line 49
	--[[ Upvalues[1]:
		[1]: var20_upvw (read and write)
	]]
	while true do
		local floored = math.floor(arg3 / 2)
		local var13 = arg1[floored]
		if var13 ~= nil and 0 < var20_upvw(var13, arg2) then
			arg1[floored] = arg2
			arg1[arg3] = var13
		else
			return
		end
	end
end
function var14_upvw(arg1, arg2, arg3) -- Line 65
	--[[ Upvalues[1]:
		[1]: var20_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [47] 41. Error Block 14 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [47] 41. Error Block 14 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1] 2. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [47.65666]
	-- KONSTANTERROR: [1] 2. Error Block 2 end (CF ANALYSIS FAILED)
end
function var20_upvw(arg1, arg2) -- Line 95
	local var21 = arg1.sortIndex - arg2.sortIndex
	if var21 == 0 then
		return arg1.id - arg2.id
	end
	return var21
end
return module