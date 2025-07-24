-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:35
-- Luau version 6, Types version 3
-- Time taken: 0.000740 seconds

local Parent = script.Parent.Parent
return require(game:GetService("CorePackages").Workspace.Packages.PurchasePromptDeps).Rodux.createReducer({}, {
	[require(Parent.Actions.AccountInfoReceived).name] = function(arg1, arg2) -- Line 12
		local module = {}
		local balance = arg1.balance
		module.balance = balance
		if arg2.accountInfo.isPremium then
			balance = 4
		else
			balance = 0
		end
		module.membershipType = balance
		return module
	end;
	[require(Parent.Actions.BalanceInfoRecieved).name] = function(arg1, arg2) -- Line 21
		return {
			balance = arg2.balanceInfo.robux;
			membershipType = arg1.membershipType;
		}
	end;
})