-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:18:40
-- Luau version 6, Types version 3
-- Time taken: 0.001795 seconds

local function _(arg1, arg2) -- Line 7, Named "dumpProperty"
	local pcall_result1, pcall_result2_2 = pcall(function() -- Line 8
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		return arg1[arg2]
	end)
	if pcall_result1 then
		return tostring(pcall_result2_2)
	end
	return nil
end
local function dumpInstance_upvr(arg1, arg2) -- Line 14, Named "dumpInstance"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var12 = arg2
	if not var12 then
		var12 = {}
	end
	for _, v_upvr in var12 do
		local pcall_result1_2, pcall_result2 = pcall(function() -- Line 8
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: v_upvr (readonly)
			]]
			return arg1[v_upvr]
		end)
		local var16
		if pcall_result1_2 then
			var16 = tostring(pcall_result2)
		else
			var16 = nil
		end
		if var16 then
			if not false then
			else
			end
		end
	end
	if true then
	end
	return arg1.Name.."   ("..", "..v_upvr..'='..var16..')'..'\n'
end
local function dumpInstanceTree_upvr(arg1, arg2, arg3) -- Line 38, Named "dumpInstanceTree"
	--[[ Upvalues[2]:
		[1]: dumpInstance_upvr (readonly)
		[2]: dumpInstanceTree_upvr (readonly)
	]]
	if arg1 == nil then
		return arg3.."[nil Instance]\n"
	end
	if arg1.Name == nil then
		return arg3.."[Invalid Instance]\n"
	end
	for _, _ in arg1:GetChildren() do
		local var25
	end
	return var25
end
return function(arg1, arg2) -- Line 61
	--[[ Upvalues[1]:
		[1]: dumpInstanceTree_upvr (readonly)
	]]
	return dumpInstanceTree_upvr(arg1, arg2, "")
end