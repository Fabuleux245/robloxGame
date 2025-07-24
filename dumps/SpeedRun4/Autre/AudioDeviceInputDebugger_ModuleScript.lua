-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:42:51
-- Luau version 6, Types version 3
-- Time taken: 0.001783 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local Cryo_upvr = require(CorePackages.Packages.Cryo)
return function(arg1) -- Line 5, Named "AudioDeviceInputDebugger"
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	local mutedPlayers_upvr = arg1.mutedPlayers
	return Roact_upvr.createElement("ScreenGui", {
		AutoLocalize = false;
		DisplayOrder = 100;
		IgnoreGuiInset = true;
		OnTopOfCoreBlur = true;
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
	}, Roact_upvr.createFragment(Cryo_upvr.List.map(Cryo_upvr.Dictionary.keys(arg1.instances), function(arg1_2, arg2) -- Line 22
		--[[ Upvalues[2]:
			[1]: Roact_upvr (copied, readonly)
			[2]: mutedPlayers_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 19 start (CF ANALYSIS FAILED)
		local Player = arg1_2.Player
		local module = {}
		local var9
		if Player then
			var9 = Player.Name
		else
			var9 = "Unnamed"
		end
		if arg1_2.Active then
			-- KONSTANTWARNING: GOTO [20] #17
		end
		-- KONSTANTERROR: [0] 1. Error Block 19 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [19] 16. Error Block 21 start (CF ANALYSIS FAILED)
		local var10
		if Player and mutedPlayers_upvr[Player.UserId] then
			var10 = "localmuted"
		else
			var10 = "not-localmuted"
		end
		module.Text = "ADI: "..var9..' '.."Inactive "..var10
		var9 = 25
		module.Size = UDim2.fromOffset(200, var9)
		module.AutomaticSize = Enum.AutomaticSize.X
		var9 = arg2 * 28
		module.Position = UDim2.fromOffset(10, var9)
		do
			return Roact_upvr.createElement("TextLabel", module)
		end
		-- KONSTANTERROR: [19] 16. Error Block 21 end (CF ANALYSIS FAILED)
	end)))
end