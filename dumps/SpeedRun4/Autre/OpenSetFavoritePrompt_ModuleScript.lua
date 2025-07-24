-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:11
-- Luau version 6, Types version 3
-- Time taken: 0.001705 seconds

local Parent = script.Parent.Parent
local Promise_upvr = require(game:GetService("CorePackages").Packages.Promise)
local MarketplaceService_upvr = game:GetService("MarketplaceService")
local OpenPrompt_upvr = require(Parent.Actions.OpenPrompt)
local PromptType_upvr = require(Parent.PromptType)
local AvatarEditorService_upvr = game:GetService("AvatarEditorService")
return function(arg1, arg2, arg3) -- Line 12
	--[[ Upvalues[5]:
		[1]: Promise_upvr (readonly)
		[2]: MarketplaceService_upvr (readonly)
		[3]: OpenPrompt_upvr (readonly)
		[4]: PromptType_upvr (readonly)
		[5]: AvatarEditorService_upvr (readonly)
	]]
	return function(arg1_2) -- Line 13
		--[[ Upvalues[8]:
			[1]: Promise_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: MarketplaceService_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: OpenPrompt_upvr (copied, readonly)
			[6]: PromptType_upvr (copied, readonly)
			[7]: arg3 (readonly)
			[8]: AvatarEditorService_upvr (copied, readonly)
		]]
		return Promise_upvr.new(function(arg1_3, arg2_2) -- Line 14
			--[[ Upvalues[8]:
				[1]: arg2 (copied, readonly)
				[2]: MarketplaceService_upvr (copied, readonly)
				[3]: arg1 (copied, readonly)
				[4]: arg1_2 (readonly)
				[5]: OpenPrompt_upvr (copied, readonly)
				[6]: PromptType_upvr (copied, readonly)
				[7]: arg3 (copied, readonly)
				[8]: AvatarEditorService_upvr (copied, readonly)
			]]
			local var10_upvw
			if arg2 == Enum.AvatarItemType.Asset then
				var10_upvw = Enum.InfoType.Asset
			else
				var10_upvw = Enum.InfoType.Bundle
			end
			local pcall_result1, pcall_result2 = pcall(function() -- Line 22
				--[[ Upvalues[3]:
					[1]: MarketplaceService_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
					[3]: var10_upvw (read and write)
				]]
				return MarketplaceService_upvr:GetProductInfo(arg1, var10_upvw)
			end)
			if pcall_result1 then
				local tbl = {}
				tbl.itemId = arg1
				tbl.itemName = pcall_result2.Name
				tbl.itemType = arg2
				tbl.shouldFavorite = arg3
				arg1_2:dispatch(OpenPrompt_upvr(PromptType_upvr.SetFavorite, tbl))
				arg1_3()
			else
				AvatarEditorService_upvr:SignalSetFavoriteFailed()
				arg2_2()
			end
		end)
	end
end