-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:22:35
-- Luau version 6, Types version 3
-- Time taken: 0.001284 seconds

local Parent_2 = script.Parent.Parent
local Parent = Parent_2.Parent
local useZoomController_upvr = require(Parent_2.Hooks.useZoomController)
local React_upvr = require(Parent.React)
local View_upvr = require(Parent.Foundation).View
return function(arg1) -- Line 17
	--[[ Upvalues[3]:
		[1]: useZoomController_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: View_upvr (readonly)
	]]
	local var7
	if arg1.active ~= nil then
		var7 = arg1.active
	else
		var7 = true
	end
	local var4_result1_upvr, useZoomController_upvr_result2 = useZoomController_upvr(var7)
	React_upvr.useEffect(function() -- Line 22
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var4_result1_upvr (readonly)
		]]
		if arg1.onZoomStatusChanged then
			arg1.onZoomStatusChanged(var4_result1_upvr)
		end
	end, {var4_result1_upvr, arg1.onZoomStatusChanged})
	return React_upvr.createElement(View_upvr, {
		ref = useZoomController_upvr_result2;
		tag = "anchor-center-center position-center-center size-full bg-action-subtle";
		ZIndex = 1;
	}, {
		ZoomItem = React_upvr.createElement(React_upvr.Fragment, nil, arg1.children);
	})
end