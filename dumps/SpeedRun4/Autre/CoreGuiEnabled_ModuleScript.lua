-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:50
-- Luau version 6, Types version 3
-- Time taken: 0.001131 seconds

local CorePackages = game:GetService("CorePackages")
local var2
if require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.Flags.FFlagMountCoreGuiBackpack) then
	var2 = {
		[Enum.CoreGuiType.PlayerList] = true;
		[Enum.CoreGuiType.Health] = true;
		[Enum.CoreGuiType.Chat] = true;
		[Enum.CoreGuiType.EmotesMenu] = true;
	}
else
	var2 = {
		[Enum.CoreGuiType.PlayerList] = true;
		[Enum.CoreGuiType.Health] = true;
		[Enum.CoreGuiType.Backpack] = true;
		[Enum.CoreGuiType.Chat] = true;
		[Enum.CoreGuiType.EmotesMenu] = true;
	}
end
local module = {}
local Cryo_upvr = require(CorePackages.Packages.Cryo)
module[require(script.Parent.Parent.Actions.UpdateCoreGuiEnabled).name] = function(arg1, arg2) -- Line 34
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	if arg2.coreGuiType == Enum.CoreGuiType.All then
		for i, _ in pairs(arg1) do
			({})[i] = arg2.enabled
			local var16
		end
		return var16
	end
	return Cryo_upvr.Dictionary.join(arg1, {
		[arg2.coreGuiType] = arg2.enabled;
	})
end
return require(CorePackages.Packages.Rodux).createReducer(var2, module)