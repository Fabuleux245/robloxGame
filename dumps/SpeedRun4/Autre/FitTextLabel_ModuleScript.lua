-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:18
-- Luau version 6, Types version 3
-- Time taken: 0.003286 seconds

local AuthCommon = script:FindFirstAncestor("AuthCommon")
local Parent = AuthCommon.Parent
local Roact_upvr = require(Parent.Roact)
local FitChildren_upvr = require(AuthCommon.Components.FitChildren)
local any_extend_result1 = Roact_upvr.PureComponent:extend("FitTextLabel")
any_extend_result1.defaultProps = {
	fitAxis = FitChildren_upvr.FitAxis.Height;
	maxWidth = nil;
}
local Text_upvr = require(Parent.AppCommonLib).Text
function any_extend_result1.init(arg1) -- Line 17
	--[[ Upvalues[2]:
		[1]: FitChildren_upvr (readonly)
		[2]: Text_upvr (readonly)
	]]
	function arg1.onRef(arg1_2) -- Line 18
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.ref = arg1_2
	end
	function arg1.resize(arg1_3) -- Line 22
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: FitChildren_upvr (copied, readonly)
			[3]: Text_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local fitAxis_2 = arg1.props.fitAxis
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [17] 11. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [17] 11. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [24] 15. Error Block 17 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [24] 15. Error Block 17 end (CF ANALYSIS FAILED)
	end
	arg1:setState({
		width = nil;
		height = nil;
	})
end
local Immutable_upvr = require(Parent.AppCommonLib).Immutable
function any_extend_result1.render(arg1) -- Line 62
	--[[ Upvalues[3]:
		[1]: FitChildren_upvr (readonly)
		[2]: Immutable_upvr (readonly)
		[3]: Roact_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var19
	if not var19 then
		var19 = FitChildren_upvr.FitAxis.Height
	end
	local width = arg1.state.width
	local height = arg1.state.height
	local var22
	if width and height then
		var22 = Immutable_upvr.JoinDictionaries(var22, {
			Size = UDim2.new(width, height);
		})
	end
	local module = {
		[Roact_upvr.Ref] = arg1.onRef;
		[Roact_upvr.Change.Text] = arg1.resize;
		[Roact_upvr.Change.TextSize] = arg1.resize;
	}
	if var19 ~= FitChildren_upvr.FitAxis.Height or not arg1.resize then
	end
	module[Roact_upvr.Change.AbsoluteSize] = nil
	return Roact_upvr.createElement("TextLabel", Immutable_upvr.JoinDictionaries(var22, module))
end
function any_extend_result1.didMount(arg1) -- Line 85
	arg1.resize(arg1.ref)
end
return any_extend_result1