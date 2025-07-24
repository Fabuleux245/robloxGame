-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:50
-- Luau version 6, Types version 3
-- Time taken: 0.002561 seconds

return function(arg1) -- Line 1
	local function _(arg1_2) -- Line 2, Named "makeKeyString"
		if type(arg1_2) == "string" then
			return string.format("%s", arg1_2)
		end
		return string.format("[%s]", tostring(arg1_2))
	end
	local function makeValueString_upvr(arg1_3) -- Line 10, Named "makeValueString"
		local type_result1 = type(arg1_3)
		if type_result1 == "string" then
			return string.format("%q", arg1_3)
		end
		if type_result1 == "function" or type_result1 == "table" then
			return string.format("<%s>", tostring(arg1_3))
		end
		return string.format("%s", tostring(arg1_3))
	end
	local function printKeypair_upvr(arg1_4, arg2, arg3, arg4) -- Line 21, Named "printKeypair"
		--[[ Upvalues[2]:
			[1]: makeValueString_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var3
		if type(arg1_4) == "string" then
			var3 = string.format("%s", arg1_4)
		else
			var3 = string.format("[%s]", tostring(arg1_4))
		end
		if not arg4 or not string.format(" -- %s", arg4) then
		end
		arg1(string.format("%s%s = %s,%s", arg3, var3, makeValueString_upvr(arg2), ""))
	end
	return function(arg1_5, arg2) -- Line 33
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: makeValueString_upvr (readonly)
			[3]: printKeypair_upvr (readonly)
		]]
		if type(arg1_5) ~= "table" then
			error("tutils.Print must be passed a table", 2)
		end
		local tbl_upvr = {}
		local var6_upvw = arg2 or "  "
		local function recurse_upvr(arg1_6, arg2_2, arg3) -- Line 43, Named "recurse"
			--[[ Upvalues[6]:
				[1]: tbl_upvr (readonly)
				[2]: var6_upvw (read and write)
				[3]: arg1 (copied, readonly)
				[4]: makeValueString_upvr (copied, readonly)
				[5]: printKeypair_upvr (copied, readonly)
				[6]: recurse_upvr (readonly)
			]]
			tbl_upvr[arg1_6] = true
			local var11
			if arg2_2 then
				if type(arg2_2) == "string" then
					var11 = string.format("%s", arg2_2)
				else
					var11 = string.format("[%s]", tostring(arg2_2))
				end
				arg1(string.format("%s%s = %s {", string.rep(var6_upvw, arg3), var11, makeValueString_upvr(arg1_6)))
			else
				var11 = makeValueString_upvr(arg1_6)
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				arg1(string.format("%s%s {", string.rep(var6_upvw, arg3), var11))
			end
			for i, v in pairs(arg1_6) do
				if type(v) == "table" then
					if tbl_upvr[v] then
						printKeypair_upvr(i, v, string.rep(var6_upvw, arg3 + 1), "Possible cycle")
					else
						recurse_upvr(v, i, arg3 + 1)
					end
				else
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					printKeypair_upvr(i, v, string.rep(var6_upvw, arg3 + 1))
				end
			end
			if 0 < arg3 then
			else
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			arg1(string.format("%s}%s", string.rep(var6_upvw, arg3), ""))
		end
		recurse_upvr(arg1_5, nil, 0)
	end
end