-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:03:23
-- Luau version 6, Types version 3
-- Time taken: 0.000927 seconds

local CorePackages = game:GetService("CorePackages")
local module = {}
local Cryo_upvr = require(CorePackages.Packages.Cryo)
module[require(script.Parent.Parent.Actions.OpenOrUpdateCFM).name] = function(arg1, arg2) -- Line 16
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	if arg2.friend and arg2.friend.combinedName then
		return Cryo_upvr.Dictionary.join(arg1, {
			isOpen = true;
			friend = arg2.friend;
		})
	end
	return {
		isOpen = false;
		friend = {
			userId = nil;
			combinedName = "";
			userName = "";
		};
	}
end
module[require(script.Parent.Parent.Actions.CloseCFM).name] = function(arg1, arg2) -- Line 34
	return {
		isOpen = false;
		friend = {
			userId = nil;
			combinedName = "";
			userName = "";
		};
	}
end
return require(CorePackages.Packages.Rodux).createReducer({
	isOpen = false;
	friend = {
		userId = nil;
		combinedName = "";
		userName = "";
	};
}, module)