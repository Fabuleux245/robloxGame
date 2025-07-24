-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:38
-- Luau version 6, Types version 3
-- Time taken: 0.000776 seconds

local CorePackages = game:GetService("CorePackages")
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local Actions = script.Parent.Parent.Actions
return require(CorePackages.Packages.Rodux).createReducer({}, {
	[require(Actions.AddPlayer).name] = function(arg1, arg2) -- Line 11
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.List.join(arg1, {arg2.player})
	end;
	[require(Actions.RemovePlayer).name] = function(arg1, arg2) -- Line 15
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.List.filter(arg1, function(arg1_2) -- Line 16
			--[[ Upvalues[1]:
				[1]: arg2 (readonly)
			]]
			local var9
			if arg1_2 == arg2.player then
				var9 = false
			else
				var9 = true
			end
			return var9
		end)
	end;
})