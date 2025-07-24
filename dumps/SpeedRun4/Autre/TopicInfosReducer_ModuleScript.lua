-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:44:54
-- Luau version 6, Types version 3
-- Time taken: 0.000744 seconds

local TopicInfosRodux = script:FindFirstAncestor("TopicInfosRodux")
local AddTopicInfos_upvr = require(TopicInfosRodux.AddTopicInfos)
local Cryo_upvr = require(TopicInfosRodux.Parent.Cryo)
return {
	key = "TopicInfosKey";
	reducer = function(arg1, arg2) -- Line 14
		--[[ Upvalues[2]:
			[1]: AddTopicInfos_upvr (readonly)
			[2]: Cryo_upvr (readonly)
		]]
		local var10 = arg1
		if not var10 then
			var10 = {}
		end
		arg1 = var10
		local var11 = arg1
		assert(var11, "")
		if arg2.type == AddTopicInfos_upvr.name then
			for _, v in arg2.topicInfos do
				({})[v.uniqueKey] = v
				local var13
			end
			var11 = Cryo_upvr.Dictionary.join(var11, var13)
		end
		return var11
	end;
}