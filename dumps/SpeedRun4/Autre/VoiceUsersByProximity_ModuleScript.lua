-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:43:06
-- Luau version 6, Types version 3
-- Time taken: 0.008994 seconds

local function _(arg1) -- Line 4, Named "getPlayerPrimaryPart"
	local var2 = arg1
	if var2 then
		var2 = arg1.Character
		if var2 then
			var2 = arg1.Character.PrimaryPart
		end
	end
	return var2
end
local function _(arg1, arg2) -- Line 8, Named "getPlayerDistanceFrom"
	local var3 = arg1
	if var3 then
		var3 = arg1.Character
		if var3 then
			var3 = arg1.Character.PrimaryPart
		end
	end
	local var4
	if var3 then
		var4 = (var3.Position - arg2).Magnitude
	end
	return var4
end
return {
	getComparator = function(arg1) -- Line 19, Named "getComparator"
		return function(arg1_2, arg2) -- Line 20
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var17
			if var17 then
				var17 = arg1_2.Character
				if var17 then
					var17 = arg1_2.Character.PrimaryPart
				end
			end
			if arg2 then
				if arg2.Character then
					local PrimaryPart_3 = arg2.Character.PrimaryPart
					local var19
				end
			end
			local var20
			if not var17 and not PrimaryPart_3 then
				var19 = arg2.Name:lower()
				if arg1_2.Name:lower() >= var19 then
					var20 = false
				else
					var20 = true
				end
				return var20
			end
			if var17 then
				if not PrimaryPart_3 then
					var20 = true
					return var20
				end
			end
			if not var17 then
				if PrimaryPart_3 then
					var20 = false
					return var20
				end
			end
			var19 = arg1_2
			if var19 then
				var19 = arg1_2.Character
				if var19 then
					var19 = arg1_2.Character.PrimaryPart
				end
			end
			if var19 then
			end
			var20 = (var19.Position - arg1).Magnitude
			if arg2 and arg2.Character then
				local PrimaryPart_6 = arg2.Character.PrimaryPart
			end
			local var22
			if PrimaryPart_6 then
				var22 = (PrimaryPart_6.Position - arg1).Magnitude
			end
			if var20 >= var22 then
			else
			end
			return true
		end
	end;
	getSortedPlayers = function(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 41, Named "getSortedPlayers"
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local function _(arg1_3, arg2_2) -- Line 20
			--[[ Upvalues[1]:
				[1]: arg3 (readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var24
			if var24 then
				var24 = arg1_3.Character
				if var24 then
					var24 = arg1_3.Character.PrimaryPart
				end
			end
			if arg2_2 then
				if arg2_2.Character then
					local PrimaryPart_4 = arg2_2.Character.PrimaryPart
					local var26
				end
			end
			local var27
			if not var24 and not PrimaryPart_4 then
				var26 = arg2_2.Name:lower()
				if arg1_3.Name:lower() >= var26 then
					var27 = false
				else
					var27 = true
				end
				return var27
			end
			if var24 then
				if not PrimaryPart_4 then
					var27 = true
					return var27
				end
			end
			if not var24 then
				if PrimaryPart_4 then
					var27 = false
					return var27
				end
			end
			var26 = arg1_3
			if var26 then
				var26 = arg1_3.Character
				if var26 then
					var26 = arg1_3.Character.PrimaryPart
				end
			end
			if var26 then
			end
			var27 = (var26.Position - arg3).Magnitude
			if arg2_2 and arg2_2.Character then
				local PrimaryPart_5 = arg2_2.Character.PrimaryPart
			end
			local var29
			if PrimaryPart_5 then
				var29 = (PrimaryPart_5.Position - arg3).Magnitude
			end
			if var27 >= var29 then
			else
			end
			return true
		end
		local pairs_result1, pairs_result2, pairs_result3 = pairs(arg2.participants)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [68] 50. Error Block 21 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [68] 50. Error Block 21 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [10] 8. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [68.14]
		-- KONSTANTERROR: [10] 8. Error Block 2 end (CF ANALYSIS FAILED)
	end;
}