-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:24
-- Luau version 6, Types version 3
-- Time taken: 0.000907 seconds

local generatedTypes_upvr = require(script.Parent.Parent.generatedTypes)
local module_2 = {
	ExperienceDetailsLink = {
		linkType = function() -- Line 14, Named "linkType"
			--[[ Upvalues[1]:
				[1]: generatedTypes_upvr (readonly)
			]]
			return generatedTypes_upvr.ShareLinkType.ExperienceDetails
		end;
		linkId = function(arg1) -- Line 17, Named "linkId"
			return arg1.linkId
		end;
		shortUrl = function(arg1) -- Line 20, Named "shortUrl"
			return arg1.shortUrl
		end;
		universeId = function(arg1, arg2, arg3, arg4) -- Line 23, Named "universeId"
			return arg4.variableValues.universeId
		end;
	};
}
local tbl = {}
local ShareLinkConnector_upvr = require(script.Parent.Parent.connectors.ShareLinkConnector)
local Cryo_upvr = require(script:FindFirstAncestor("GraphQLServer").Parent.Cryo)
function tbl.experienceDetailsLinkByUniverseId(arg1, arg2, arg3, arg4) -- Line 28
	--[[ Upvalues[3]:
		[1]: ShareLinkConnector_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: generatedTypes_upvr (readonly)
	]]
	local module = {
		linkType = generatedTypes_upvr.ShareLinkType.ExperienceDetails;
	}
	module.data = arg2
	return ShareLinkConnector_upvr.fetchShareLink(Cryo_upvr.Dictionary.join(module), arg3.fetchImpl)
end
module_2.Query = tbl
return module_2