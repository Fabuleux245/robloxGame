-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:35
-- Luau version 6, Types version 3
-- Time taken: 0.001849 seconds

local CorePackages = game:GetService("CorePackages")
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local Actions = script.Parent.Parent.Actions
local function createCurrentEmotes_upvr(arg1, arg2) -- Line 24, Named "createCurrentEmotes"
	for _, v in ipairs(arg2) do
		local Slot = v.Slot
		local Name = v.Name
		if Slot and Name and arg1[Name] then
			({})[Slot] = Name
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
return require(CorePackages.Packages.Rodux).createReducer({
	emotesInfo = {};
	equippedEmotes = {};
	numberEmotesLoaded = -1;
	currentEmotes = {};
}, {
	[require(Actions.EmotesChanged).name] = function(arg1, arg2) -- Line 42
		--[[ Upvalues[2]:
			[1]: Cryo_upvr (readonly)
			[2]: createCurrentEmotes_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			emotesInfo = arg2.emotes;
			currentEmotes = createCurrentEmotes_upvr(arg2.emotes, arg1.equippedEmotes);
		})
	end;
	[require(Actions.EquippedEmotesChanged).name] = function(arg1, arg2) -- Line 49
		--[[ Upvalues[2]:
			[1]: Cryo_upvr (readonly)
			[2]: createCurrentEmotes_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			equippedEmotes = arg2.equippedEmotes;
			currentEmotes = createCurrentEmotes_upvr(arg1.emotesInfo, arg2.equippedEmotes);
		})
	end;
	[require(Actions.NumberEmotesLoadedChanged).name] = function(arg1, arg2) -- Line 56
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			numberEmotesLoaded = arg2.numberEmotesLoaded;
		})
	end;
})