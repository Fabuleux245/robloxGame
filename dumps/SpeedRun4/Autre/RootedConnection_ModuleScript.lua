-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:10
-- Luau version 6, Types version 3
-- Time taken: 0.001134 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local any_extend_result1 = Roact_upvr.PureComponent:extend("RootedConnection")
any_extend_result1.validateProps = t.strictInterface({
	render = t.callback;
})
function any_extend_result1.init(arg1) -- Line 17
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.state = {
		isRooted = false;
	}
	arg1.rootRef = Roact_upvr.createRef()
	function arg1.onAncestryChanged(arg1_2) -- Line 24
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1_2:IsDescendantOf(game) then
			arg1:setState({
				isRooted = true;
			})
		end
	end
end
function any_extend_result1.render(arg1) -- Line 33
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	return Roact_upvr.createFragment({
		Content = arg1.props.render(arg1.state.isRooted);
		Folder = Roact_upvr.createElement("Folder", {
			[Roact_upvr.Event.AncestryChanged] = arg1.onAncestryChanged;
			[Roact_upvr.Ref] = arg1.rootRef;
		});
	})
end
function any_extend_result1.didMount(arg1) -- Line 43
	if arg1.rootRef:getValue():IsDescendantOf(game) then
		arg1:setState({
			isRooted = true;
		})
	end
end
return any_extend_result1