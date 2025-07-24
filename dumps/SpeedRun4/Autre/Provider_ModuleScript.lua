-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:31
-- Luau version 6, Types version 3
-- Time taken: 0.000803 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local React_upvr = require(Parent.React)
local Context_upvr = require(script.Parent.Context)
local Cryo_upvr = require(Parent.Cryo)
return function(arg1) -- Line 19, Named "ChatPagePaddingProvider"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: Context_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	return React_upvr.createElement(Context_upvr.Provider, {
		value = Cryo_upvr.Dictionary.join({
			top = 0;
			right = 12;
			bottom = 0;
			left = 12;
		}, arg1.value);
	}, arg1.children)
end