-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:07
-- Luau version 6, Types version 3
-- Time taken: 0.000750 seconds

local module = {}
local tbl = {
	pathParams = {{
		name = "path";
		pattern = "games";
	}, {
		name = "id";
		pattern = "[0-9]+";
	}, {
		name = "name";
		pattern = "[a-zA-Z0-9_-]+";
		optional = true;
	}};
}
function tbl.paramCallback(arg1) -- Line 7, Named "createGameLinkMessage"
	return {
		placeId = arg1.id;
	}
end
module["/games"] = tbl
local tbl_2 = {
	queryParams = {{
		name = "code";
		pattern = "[a-fA-F0-9]+";
	}, {
		name = "type";
		pattern = "[a-zA-Z]+";
	}};
}
function tbl_2.paramCallback(arg1) -- Line 13, Named "createShareLinkMessage"
	return {
		shareLink = {
			linkId = arg1.code;
			linkType = arg1.type;
		};
	}
end
module["/share"] = tbl_2
return module