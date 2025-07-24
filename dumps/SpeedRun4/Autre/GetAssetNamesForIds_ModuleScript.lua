-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:01
-- Luau version 6, Types version 3
-- Time taken: 0.001174 seconds

local Promise_upvr = require(game:GetService("CorePackages").Packages.Promise)
local AvatarEditorService_upvr = game:GetService("AvatarEditorService")
return function(arg1) -- Line 6
	--[[ Upvalues[2]:
		[1]: Promise_upvr (readonly)
		[2]: AvatarEditorService_upvr (readonly)
	]]
	return Promise_upvr.new(function(arg1_2, arg2) -- Line 7
		--[[ Upvalues[2]:
			[1]: AvatarEditorService_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local pcall_result1, pcall_result2 = pcall(function() -- Line 8
			--[[ Upvalues[2]:
				[1]: AvatarEditorService_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
			]]
			return AvatarEditorService_upvr:GetBatchItemDetails(arg1, Enum.AvatarItemType.Asset)
		end)
		if pcall_result1 then
			for _, v in ipairs(pcall_result2) do
				({})[v.Id] = v.Name
				local var16
			end
			arg1_2(var16)
		else
			arg2()
		end
	end)
end