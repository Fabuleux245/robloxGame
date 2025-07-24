-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:51
-- Luau version 6, Types version 3
-- Time taken: 0.001672 seconds

return function(arg1) -- Line 3, Named "getEventManager"
	local tbl_upvr = {}
	local function _(arg1_2, arg2) -- Line 6, Named "removeListener"
		--[[ Upvalues[2]:
			[1]: tbl_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		local var2 = tbl_upvr
		local var3 = var2[arg1_2]
		if var3 then
			var2 = var3[arg1]
		else
			var2 = nil
		end
		if not var2 then
		else
			table.remove(var2, table.find(var2, arg2))
		end
	end
	return {
		addListener = function(arg1_3, arg2) -- Line 18, Named "addListener"
			--[[ Upvalues[2]:
				[1]: tbl_upvr (readonly)
				[2]: arg1 (readonly)
			]]
			local var4 = tbl_upvr[arg1_3]
			if not var4 then
				var4 = {}
			end
			tbl_upvr[arg1_3] = var4
			local var5 = tbl_upvr[arg1_3][arg1]
			if not var5 then
				var5 = {}
			end
			tbl_upvr[arg1_3][arg1] = var5
			table.insert(tbl_upvr[arg1_3][arg1], arg2)
			return {
				remove = function() -- Line 25, Named "remove"
					--[[ Upvalues[4]:
						[1]: arg1_3 (readonly)
						[2]: arg2 (readonly)
						[3]: tbl_upvr (copied, readonly)
						[4]: arg1 (copied, readonly)
					]]
					local var7 = tbl_upvr
					local var8 = var7[arg1_3]
					if var8 then
						var7 = var8[arg1]
					else
						var7 = nil
					end
					if not var7 then
					else
						table.remove(var7, table.find(var7, arg2))
					end
				end;
			}
		end;
		emit = function(arg1_4, arg2) -- Line 33, Named "emit"
			--[[ Upvalues[2]:
				[1]: tbl_upvr (readonly)
				[2]: arg1 (readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var18 = tbl_upvr[arg1_4]
			if not var18 then
				var18 = {}
			end
			if var18[arg1] then
				local _ = table.clone(var18[arg1])
			else
			end
			if nil then
				for _, v in nil do
					v(arg2)
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				end
			end
		end;
	}
end