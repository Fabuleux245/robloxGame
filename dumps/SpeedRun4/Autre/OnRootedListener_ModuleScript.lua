-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:12:51
-- Luau version 6, Types version 3
-- Time taken: 0.001098 seconds

local Parent = script.Parent.Parent.Parent.Parent
local t = require(Parent.t)
local Roact_upvr = require(Parent.Roact)
local any_extend_result1 = Roact_upvr.Component:extend("OnRootedListener")
any_extend_result1.validateProps = t.strictInterface({
	onRooted = t.callback;
})
function any_extend_result1.init(arg1) -- Line 16
	function arg1.onAncestryChanged(arg1_2) -- Line 17
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1_2:IsDescendantOf(game) then
			arg1.props.onRooted(arg1_2)
		end
	end
end
function any_extend_result1.render(arg1) -- Line 24
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	return Roact_upvr.createElement("Folder", {
		[Roact_upvr.Event.AncestryChanged] = arg1.onAncestryChanged;
	})
end
return any_extend_result1