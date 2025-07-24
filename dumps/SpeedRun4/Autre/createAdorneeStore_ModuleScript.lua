-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:04:38
-- Luau version 6, Types version 3
-- Time taken: 0.003104 seconds

local Signals = require(script:FindFirstAncestor("ExpChat").Parent.Signals)
local function findFirstChildByNameAndClass_upvr(arg1, arg2, arg3) -- Line 23, Named "findFirstChildByNameAndClass"
	if not arg1 then
		return nil
	end
	for _, v in ipairs(arg1:GetChildren()) do
		if v.Name == arg2 and v:IsA(arg3) then
			return v
		end
	end
	return nil
end
local createSignal_upvr = Signals.createSignal
local createComputed_upvr = Signals.createComputed
return function() -- Line 35, Named "createAdorneeStore"
	--[[ Upvalues[3]:
		[1]: createSignal_upvr (readonly)
		[2]: createComputed_upvr (readonly)
		[3]: findFirstChildByNameAndClass_upvr (readonly)
	]]
	local createSignal_upvr_result1_upvr, var7_result2_upvr = createSignal_upvr({})
	local tbl_upvr = {}
	local function _(arg1) -- Line 41, Named "getKey"
		return tostring(arg1)
	end
	return {
		getAdornee = function(arg1) -- Line 45, Named "getAdornee"
			--[[ Upvalues[3]:
				[1]: tbl_upvr (readonly)
				[2]: createComputed_upvr (copied, readonly)
				[3]: createSignal_upvr_result1_upvr (readonly)
			]]
			local tostring_result1_upvr_2 = tostring(arg1)
			if not tbl_upvr[tostring_result1_upvr_2] then
				tbl_upvr[tostring_result1_upvr_2] = createComputed_upvr(function(arg1_2) -- Line 48
					--[[ Upvalues[2]:
						[1]: createSignal_upvr_result1_upvr (copied, readonly)
						[2]: tostring_result1_upvr_2 (readonly)
					]]
					return createSignal_upvr_result1_upvr(arg1_2)[tostring_result1_upvr_2]
				end)
			end
			return tbl_upvr[tostring_result1_upvr_2]
		end;
		getAdornees = createSignal_upvr_result1_upvr;
		handleAdorneeAdded = function(arg1, arg2, arg3) -- Line 56, Named "handleAdorneeAdded"
			--[[ Upvalues[2]:
				[1]: findFirstChildByNameAndClass_upvr (copied, readonly)
				[2]: var7_result2_upvr (readonly)
			]]
			local var14_upvr = arg2
			if arg3.Health == 0 then
				var14_upvr = findFirstChildByNameAndClass_upvr(var14_upvr, "Head", "BasePart")
			else
				var14_upvr = arg2
			end
			local tostring_result1_upvr = tostring(arg1)
			var7_result2_upvr(function(arg1_3) -- Line 61
				--[[ Upvalues[2]:
					[1]: tostring_result1_upvr (readonly)
					[2]: var14_upvr (readonly)
				]]
				local clone = table.clone(arg1_3)
				clone[tostring_result1_upvr] = var14_upvr
				return clone
			end)
		end;
		handleHumanoidDied = function(arg1) -- Line 68, Named "handleHumanoidDied"
			--[[ Upvalues[2]:
				[1]: var7_result2_upvr (readonly)
				[2]: findFirstChildByNameAndClass_upvr (copied, readonly)
			]]
			local tostring_result1_upvr_3 = tostring(arg1)
			local var20_upvw
			var7_result2_upvr(function(arg1_4) -- Line 72
				--[[ Upvalues[3]:
					[1]: tostring_result1_upvr_3 (readonly)
					[2]: var20_upvw (read and write)
					[3]: findFirstChildByNameAndClass_upvr (copied, readonly)
				]]
				local clone_2 = table.clone(arg1_4)
				local var22 = clone_2[tostring_result1_upvr_3]
				if var22 and var22:IsA("Model") then
					var20_upvw = findFirstChildByNameAndClass_upvr(var22, "Head", "BasePart") or var22
				elseif var22 then
					var20_upvw = findFirstChildByNameAndClass_upvr(var22, "Head", "BasePart")
				else
					var20_upvw = nil
				end
				clone_2[tostring_result1_upvr_3] = var20_upvw
				return clone_2
			end)
		end;
		handlePlayerRemoved = function(arg1) -- Line 89, Named "handlePlayerRemoved"
			--[[ Upvalues[2]:
				[1]: var7_result2_upvr (readonly)
				[2]: tbl_upvr (readonly)
			]]
			local tostring_result1_upvr_4 = tostring(arg1)
			var7_result2_upvr(function(arg1_5) -- Line 92
				--[[ Upvalues[2]:
					[1]: tbl_upvr (copied, readonly)
					[2]: tostring_result1_upvr_4 (readonly)
				]]
				if tbl_upvr[tostring_result1_upvr_4] then
					tbl_upvr[tostring_result1_upvr_4] = nil
				end
				local clone_3 = table.clone(arg1_5)
				clone_3[tostring_result1_upvr_4] = nil
				return clone_3
			end)
		end;
	}
end