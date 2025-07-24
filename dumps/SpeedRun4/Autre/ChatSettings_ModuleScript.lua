-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:59
-- Luau version 6, Types version 3
-- Time taken: 0.001420 seconds

local ChatSettings_upvr = require(script.Parent.Parent.ChatSettings)
local function deepCopy_upvr(arg1) -- Line 9, Named "deepCopy"
	--[[ Upvalues[1]:
		[1]: deepCopy_upvr (readonly)
	]]
	if type(arg1) ~= "table" then
		return arg1
	end
	for i, v in pairs(arg1) do
		({})[i] = deepCopy_upvr(v)
		local var11
	end
	return var11
end
local function mergeInto_upvr(arg1, arg2) -- Line 22, Named "mergeInto"
	--[[ Upvalues[1]:
		[1]: mergeInto_upvr (readonly)
	]]
	for i_2, v_2 in pairs(arg2) do
		if type(v_2) ~= "table" then
			arg1[i_2] = v_2
		elseif arg1[i_2] then
			mergeInto_upvr(arg1[i_2], v_2)
		end
	end
end
return require(game:GetService("CorePackages").Packages.Rodux).createReducer(ChatSettings_upvr, {
	[require(script.Parent.Parent.Actions.UpdateChatSettings).name] = function(arg1, arg2) -- Line 33
		--[[ Upvalues[3]:
			[1]: deepCopy_upvr (readonly)
			[2]: ChatSettings_upvr (readonly)
			[3]: mergeInto_upvr (readonly)
		]]
		local deepCopy_upvr_result1_2 = deepCopy_upvr(ChatSettings_upvr)
		mergeInto_upvr(deepCopy_upvr_result1_2, arg2.settings)
		local UserSpecificSettings = arg2.settings.UserSpecificSettings
		if UserSpecificSettings then
			for i_3, v_3 in pairs(UserSpecificSettings) do
				local deepCopy_upvr_result1 = deepCopy_upvr(ChatSettings_upvr)
				deepCopy_upvr_result1.UserSpecificSettings = nil
				mergeInto_upvr(deepCopy_upvr_result1, v_3)
				deepCopy_upvr_result1_2.UserSpecificSettings[i_3] = deepCopy_upvr_result1
			end
		end
		return deepCopy_upvr_result1_2
	end;
})