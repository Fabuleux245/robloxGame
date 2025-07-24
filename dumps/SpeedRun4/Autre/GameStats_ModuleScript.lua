-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:35
-- Luau version 6, Types version 3
-- Time taken: 0.001935 seconds

local Parent = script.Parent.Parent
local Actions = Parent.Actions
local FFlagLeaderstatsWithASideOfClient_upvr = require(Parent.Flags.FFlagLeaderstatsWithASideOfClient)
local function gameStatsComp_upvr(arg1, arg2) -- Line 17, Named "gameStatsComp"
	--[[ Upvalues[1]:
		[1]: FFlagLeaderstatsWithASideOfClient_upvr (readonly)
	]]
	local var6
	if var6 ~= arg2.isPrimary then
		var6 = arg1.isPrimary
		return var6
	end
	var6 = arg1.priority
	if var6 == arg2.priority then
		var6 = FFlagLeaderstatsWithASideOfClient_upvr
		if var6 then
			var6 = arg1.serverAddId
			local serverAddId = arg2.serverAddId
			local var8
			if var6 and serverAddId then
				if var6 >= serverAddId then
					var8 = false
				else
					var8 = true
				end
				return var8
			end
		end
		if arg1.addId >= arg2.addId then
			var6 = false
		else
			var6 = true
		end
		return var6
	end
	if arg2.priority >= arg1.priority then
		var6 = false
	else
		var6 = true
	end
	return var6
end
local AddGameStat_upvr = require(Actions.AddGameStat)
local FormatStatString_upvr = require(Parent.FormatStatString)
local const_number_upvw = 0
local Cryo_upvr = require(game:GetService("CorePackages").Packages.Cryo)
local RemoveGameStat_upvr = require(Actions.RemoveGameStat)
local SetGameStatText_upvr = require(Actions.SetGameStatText)
local SetGameStatAddId_upvr = require(Actions.SetGameStatAddId)
return function(arg1, arg2) -- Line 35, Named "GameStats"
	--[[ Upvalues[9]:
		[1]: AddGameStat_upvr (readonly)
		[2]: FormatStatString_upvr (readonly)
		[3]: FFlagLeaderstatsWithASideOfClient_upvr (readonly)
		[4]: const_number_upvw (read and write)
		[5]: Cryo_upvr (readonly)
		[6]: gameStatsComp_upvr (readonly)
		[7]: RemoveGameStat_upvr (readonly)
		[8]: SetGameStatText_upvr (readonly)
		[9]: SetGameStatAddId_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 3. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 3. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 4. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 4. Error Block 3 end (CF ANALYSIS FAILED)
end