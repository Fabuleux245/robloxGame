-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:52:53
-- Luau version 6, Types version 3
-- Time taken: 0.000647 seconds

local function noOpt_upvr() -- Line 1, Named "noOpt"
end
return function() -- Line 3
	--[[ Upvalues[1]:
		[1]: noOpt_upvr (readonly)
	]]
	return function(arg1) -- Line 4
		--[[ Upvalues[1]:
			[1]: noOpt_upvr (copied, readonly)
		]]
		assert(arg1, "expected externalPolicy")
		return {
			read = function() -- Line 8, Named "read"
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				return arg1
			end;
			onPolicyChanged = function(arg1_2) -- Line 12, Named "onPolicyChanged"
				--[[ Upvalues[1]:
					[1]: noOpt_upvr (copied, readonly)
				]]
				local var4 = arg1_2
				if not var4 then
					var4 = noOpt_upvr
				end
				return Instance.new("BindableEvent").Event:Connect(var4)
			end;
		}
	end
end