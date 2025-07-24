-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:04
-- Luau version 6, Types version 3
-- Time taken: 0.000903 seconds

local dependencies = require(script.Parent.Parent.Parent.dependencies)
local tbl_upvr = {
	state = {
		params = {};
		routeName = "";
		key = "";
	};
	dispatch = function() -- Line 11, Named "dispatch"
	end;
	goBack = function() -- Line 12, Named "goBack"
	end;
	addListener = function() -- Line 13, Named "addListener"
	end;
	isFocused = function() -- Line 14, Named "isFocused"
	end;
	setParams = function() -- Line 15, Named "setParams"
	end;
	getParam = function() -- Line 16, Named "getParam"
	end;
}
local Roact_upvr = dependencies.Roact
local RoactNavigation_upvr = dependencies.RoactNavigation
return function(arg1) -- Line 19
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: RoactNavigation_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	local module = {}
	module.Element = arg1
	return Roact_upvr.createElement(RoactNavigation_upvr.Provider, {
		value = tbl_upvr;
	}, module)
end