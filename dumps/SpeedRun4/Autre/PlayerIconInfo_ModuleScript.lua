-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:36
-- Luau version 6, Types version 3
-- Time taken: 0.002498 seconds

local CorePackages = game:GetService("CorePackages")
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local Actions = script.Parent.Parent.Actions
return require(CorePackages.Packages.Rodux).createReducer({}, {
	[require(Actions.AddPlayer).name] = function(arg1, arg2) -- Line 15
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		local module = {}
		local tbl = {}
		local var8 = false
		if game.CreatorType == Enum.CreatorType.User then
			if arg2.userId ~= game.CreatorId then
				var8 = false
			else
				var8 = true
			end
		end
		tbl.isPlaceOwner = var8
		tbl.avatarIcon = nil
		tbl.specialGroupIcon = nil
		module[arg2.userId] = tbl
		return Cryo_upvr.Dictionary.join(arg1, module)
	end;
	[require(Actions.RemovePlayer).name] = function(arg1, arg2) -- Line 25
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			[arg2.userId] = Cryo_upvr.None;
		})
	end;
	[require(Actions.SetPlayerAvatarIcon).name] = function(arg1, arg2) -- Line 31
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			[arg2.userId] = {
				isPlaceOwner = arg1[arg2.userId].isPlaceOwner;
				avatarIcon = arg2.avatarIcon;
				specialGroupIcon = arg1[arg2.userId].specialGroupIcon;
			};
		})
	end;
	[require(Actions.SetPlayerIsCreator).name] = function(arg1, arg2) -- Line 41
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			[arg2.userId] = {
				isPlaceOwner = arg2.isCreator;
				avatarIcon = arg1[arg2.userId].avatarIcon;
				specialGroupIcon = arg1[arg2.userId].specialGroupIcon;
			};
		})
	end;
	[require(Actions.SetPlayerSpecialGroupIcon).name] = function(arg1, arg2) -- Line 51
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			[arg2.userId] = {
				isPlaceOwner = arg1[arg2.userId].isPlaceOwner;
				avatarIcon = arg1[arg2.userId].avatarIcon;
				specialGroupIcon = arg2.specialGroupIcon;
			};
		})
	end;
})