-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:11
-- Luau version 6, Types version 3
-- Time taken: 0.002411 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local RetrievalStatus_upvr = require(Parent_2.App.Loading.Enum.RetrievalStatus)
local any_extend_result1 = Roact_upvr.PureComponent:extend("LoadingStateContainer")
any_extend_result1.validateProps = t.strictInterface({
	dataStatus = RetrievalStatus_upvr.isEnumValue;
	renderOnLoaded = t.callback;
	renderOnFailed = t.optional(t.callback);
	onRetry = t.optional(t.callback);
	renderOnLoading = t.optional(t.callback);
	renderOnEmpty = t.optional(t.callback);
})
local LoadingStatePage_upvr = require(Parent_2.App.Container.LoadingStatePage)
local FailedStatePage_upvr = require(Parent_2.App.Container.FailedStatePage)
function any_extend_result1.init(arg1) -- Line 30
	--[[ Upvalues[4]:
		[1]: RetrievalStatus_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: LoadingStatePage_upvr (readonly)
		[4]: FailedStatePage_upvr (readonly)
	]]
	arg1.statePages = {
		[RetrievalStatus_upvr.NotStarted] = function() -- Line 32
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: Roact_upvr (copied, readonly)
				[3]: LoadingStatePage_upvr (copied, readonly)
			]]
			if arg1.props.renderOnEmpty then
				return arg1.props.renderOnEmpty()
			end
			if arg1.props.renderOnLoading then
				return arg1.props.renderOnLoading()
			end
			return Roact_upvr.createElement(LoadingStatePage_upvr)
		end;
		[RetrievalStatus_upvr.Fetching] = function() -- Line 43
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: Roact_upvr (copied, readonly)
				[3]: LoadingStatePage_upvr (copied, readonly)
			]]
			if arg1.props.renderOnLoading then
				return arg1.props.renderOnLoading()
			end
			return Roact_upvr.createElement(LoadingStatePage_upvr)
		end;
		[RetrievalStatus_upvr.Failed] = function() -- Line 50
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: Roact_upvr (copied, readonly)
				[3]: FailedStatePage_upvr (copied, readonly)
			]]
			if arg1.props.renderOnFailed then
				return arg1.props.renderOnFailed()
			end
			return Roact_upvr.createElement(FailedStatePage_upvr, {
				onRetry = arg1.props.onRetry;
			})
		end;
		[RetrievalStatus_upvr.Done] = function() -- Line 59
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.props.renderOnLoaded()
		end;
	}
end
function any_extend_result1.render(arg1) -- Line 65
	return arg1.statePages[arg1.props.dataStatus]()
end
return any_extend_result1