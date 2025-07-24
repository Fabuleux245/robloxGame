-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:44:49
-- Luau version 6, Types version 3
-- Time taken: 0.002046 seconds

local TopicContentsRodux = script:FindFirstAncestor("TopicContentsRodux")
local Parent = TopicContentsRodux.Parent
local AddTopicInfos_upvr = require(Parent.TopicInfosRodux).AddTopicInfos
local TopicContentsModel_upvr = require(TopicContentsRodux.TopicContentsModel)
local Cryo_upvr = require(Parent.Cryo)
local AddTopicContents_upvr = require(TopicContentsRodux.AddTopicContents)
return {
	key = "TopicContentsKey";
	reducer = function(arg1, arg2) -- Line 12
		--[[ Upvalues[4]:
			[1]: AddTopicInfos_upvr (readonly)
			[2]: TopicContentsModel_upvr (readonly)
			[3]: Cryo_upvr (readonly)
			[4]: AddTopicContents_upvr (readonly)
		]]
		local var12
		if not var12 then
			var12 = {}
		end
		if arg2.type == AddTopicInfos_upvr.name then
			local tbl = {}
			for i, v in pairs(arg2.topicInfos) do
				local var17 = var12[v.uniqueKey]
				if not var17 then
					var17 = TopicContentsModel_upvr.new()
				end
				tbl[v.uniqueKey] = var17
			end
			var12 = Cryo_upvr.Dictionary.join(var12, tbl)
			return var12
		end
		if arg2.type == AddTopicContents_upvr.name then
			local topicContents = arg2.topicContents
			local var19 = var12[arg2.topicKey]
			if var19 ~= nil then
				if arg2.isAppend then
					i = Cryo_upvr
					i = topicContents.entries
					topicContents.entries = i.List.join(var19.entries, i)
				end
				if topicContents.updatedTimestamp == nil then
					topicContents.updatedTimestamp = var19.updatedTimestamp
				end
			end
			if topicContents.updatedTimestamp == nil then
				topicContents.updatedTimestamp = tick()
			end
			var12 = Cryo_upvr.Dictionary.join(var12, {
				[arg2.topicKey] = topicContents;
			})
		end
		return var12
	end;
}