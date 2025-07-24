-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:24:19
-- Luau version 6, Types version 3
-- Time taken: 0.001153 seconds

local Parent = script.Parent.Parent.Parent.Parent
local dependencies = require(Parent.dependencies)
local Roact_upvr = dependencies.Roact
local any_extend_result1 = Roact_upvr.PureComponent:extend("ContactsEmptyList")
any_extend_result1.defaultProps = {
	errorTextKey = require(Parent.Common.TextKeys).EMPTY_STATE;
}
local withLocalization_upvr = dependencies.withLocalization
local ContactsInformationModal_upvr = require(Parent.ContactsList.Components.ContactsInformationModal)
local Images_upvr = dependencies.UIBlox.App.ImageSet.Images
function any_extend_result1.render(arg1) -- Line 23
	--[[ Upvalues[4]:
		[1]: withLocalization_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ContactsInformationModal_upvr (readonly)
		[4]: Images_upvr (readonly)
	]]
	local props_upvr = arg1.props
	return withLocalization_upvr({
		emptyState = props_upvr.errorTextKey;
	})(function(arg1_2) -- Line 28
		--[[ Upvalues[4]:
			[1]: Roact_upvr (copied, readonly)
			[2]: ContactsInformationModal_upvr (copied, readonly)
			[3]: Images_upvr (copied, readonly)
			[4]: props_upvr (readonly)
		]]
		return Roact_upvr.createElement(ContactsInformationModal_upvr, {
			image = Images_upvr["icons/status/oof_xlarge"];
			layoutOrder = props_upvr.layoutOrder;
			text = arg1_2.emptyState;
		})
	end)
end
return any_extend_result1