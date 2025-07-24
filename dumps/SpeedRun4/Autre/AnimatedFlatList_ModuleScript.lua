-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:57
-- Luau version 6, Types version 3
-- Time taken: 0.000926 seconds

local Parent = script.Parent.Parent.Parent
local React_upvr = require(Parent.React)
local useFocusNavigationScrolling_upvr = require(script.Parent.Hooks).useFocusNavigationScrolling
local Object_upvr = require(Parent.LuauPolyfill).Object
local FlatList_upvr = require(script.Parent.FlatList)
return function(arg1) -- Line 38, Named "AnimatedFlatList"
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: useFocusNavigationScrolling_upvr (readonly)
		[3]: Object_upvr (readonly)
		[4]: FlatList_upvr (readonly)
	]]
	local any_useRef_result1 = React_upvr.useRef(nil)
	local var3_result1, useFocusNavigationScrolling_upvr_result2 = useFocusNavigationScrolling_upvr({
		listRef = arg1.listRef or any_useRef_result1;
		onSelectedIndexChanged = arg1.onSelectedIndexChanged;
		initialIndex = arg1.initialScrollIndex;
		cellRendererKey = arg1.cellRendererKey;
		viewOffset = arg1.viewOffset;
		animated = arg1.animated;
		data = arg1.data;
	})
	local module = {
		viewOffset = Object_upvr.None;
		animated = Object_upvr.None;
		onSelectedIndexChanged = Object_upvr.None;
	}
	local var11 = arg1.listRef or any_useRef_result1
	module.ref = var11
	if arg1.getItemLayout then
		var11 = nil
	else
		var11 = useFocusNavigationScrolling_upvr_result2
	end
	module.onScrollToIndexFailed = var11
	module.onSelectionChanged = var3_result1
	return React_upvr.createElement(FlatList_upvr, Object_upvr.assign(table.clone(arg1), module))
end