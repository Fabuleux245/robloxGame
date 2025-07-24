-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:36:28
-- Luau version 6, Types version 3
-- Time taken: 0.001119 seconds

local CollectionService_upvr = game:GetService("CollectionService")
local Constants_upvr = require(script.Parent.Constants)
return {
	AddTag = function(arg1, arg2, arg3) -- Line 4
		--[[ Upvalues[2]:
			[1]: Constants_upvr (readonly)
			[2]: CollectionService_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [1] 2. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [1] 2. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [4] 4. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [4] 4. Error Block 3 end (CF ANALYSIS FAILED)
	end;
	RemoveTag = function(arg1, arg2, arg3) -- Line 18
		--[[ Upvalues[2]:
			[1]: Constants_upvr (readonly)
			[2]: CollectionService_upvr (readonly)
		]]
		if not arg1 or not arg1.current then
			local var5
		end
		if arg2 and var5 then
			if arg3 then
				var5:SetAttribute(Constants_upvr.ItemIndex, nil)
			end
			CollectionService_upvr:RemoveTag(var5, arg2)
		end
	end;
}