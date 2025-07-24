-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:57
-- Luau version 6, Types version 3
-- Time taken: 0.002068 seconds

local Constants_upvr = require(script.Parent.Constants)
return {
	isBodyPart = function(arg1) -- Line 7, Named "isBodyPart"
		--[[ Upvalues[1]:
			[1]: Constants_upvr (readonly)
		]]
		local var3 = Constants_upvr.ASSET_TYPE_INFO[arg1]
		if var3 then
			var3 = Constants_upvr.ASSET_TYPE_INFO[arg1].isBodyPart
		end
		return var3
	end;
	getBodyPartAssets = function() -- Line 11, Named "getBodyPartAssets"
		--[[ Upvalues[1]:
			[1]: Constants_upvr (readonly)
		]]
		for i, v in Constants_upvr.ASSET_TYPE_INFO do
			if v.isBodyPart then
				table.insert({}, i)
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return {}
	end;
	getRigAttachmentToParent = function(arg1, arg2) -- Line 22, Named "getRigAttachmentToParent"
		--[[ Upvalues[1]:
			[1]: Constants_upvr (readonly)
		]]
		if not arg1 then
			local var6 = Constants_upvr.UGC_BODY_PART_NAMES_TO_ASSET_TYPE[arg2]
		end
		if var6 then
			local var7 = Constants_upvr.ASSET_TYPE_INFO[var6]
			if not var7.isBodyPart then
				return ""
			end
			return var7.subParts[arg2].rigAttachmentToParent.name
		end
		return ""
	end;
	getAttachments = function(arg1, arg2) -- Line 37, Named "getAttachments"
		--[[ Upvalues[1]:
			[1]: Constants_upvr (readonly)
		]]
		if not arg1 then
			local var10 = Constants_upvr.UGC_BODY_PART_NAMES_TO_ASSET_TYPE[arg2]
		end
		local var11
		if var10 then
			local var12 = Constants_upvr.ASSET_TYPE_INFO[var10]
			if not var12.isBodyPart then
				return {}
			end
			var11 = var12.subParts[arg2]
		end
		local tbl = {}
		if var11 then
			table.insert(tbl, var11.rigAttachmentToParent.name)
			for i_2 in var11.otherAttachments do
				table.insert(tbl, i_2)
				local var14
			end
		end
		return var14
	end;
}