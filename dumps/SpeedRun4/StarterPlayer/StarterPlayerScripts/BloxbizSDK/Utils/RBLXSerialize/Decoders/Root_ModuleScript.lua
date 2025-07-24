-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:39:31
-- Luau version 6, Types version 3
-- Time taken: 0.001370 seconds

local Instance_upvr = require(script.Parent.Instance)
return function(arg1, arg2) -- Line 4
	--[[ Upvalues[1]:
		[1]: Instance_upvr (readonly)
	]]
	local tbl = {}
	local Instance_upvr_result1 = Instance_upvr(arg1, arg2.Root[1][2], nil, tbl, 1)
	for i_2, v_2 in ipairs(arg2.Root) do
		if i_2 ~= 1 then
			local var9_result1 = (function(arg1_2, arg2_2) -- Line 8
				local var26
				for _, v in ipairs(string.split(arg1_2, string.char(28))) do
					if v ~= "" then
						local SOME = var26:FindFirstChild(v)
						if SOME then
							var26 = SOME
						end
					end
				end
				return var26
			end)(v_2[1], Instance_upvr_result1)
			if var9_result1 then
				Instance_upvr(arg1, v_2[2], Instance_upvr_result1, tbl).Parent = var9_result1
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				arg1.throw("no parent found for ", Instance_upvr(arg1, v_2[2], Instance_upvr_result1, tbl))
			end
		end
	end
	for _, v_3 in ipairs(tbl) do
		if v_3 then
			v_3()
		end
	end
	return Instance_upvr_result1
end