-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:24:35
-- Luau version 6, Types version 3
-- Time taken: 0.001023 seconds

local Parent = script.Parent.Parent.Parent.Parent
local dependencies = require(Parent.dependencies)
local Roact_upvr = dependencies.Roact
local any_extend_result1 = Roact_upvr.PureComponent:extend("ContactsUploadErrorModal")
local withLocalization_upvr = dependencies.withLocalization
local TextKeys_upvr = require(Parent.Common.TextKeys)
local ContactsInformationModal_upvr = require(Parent.ContactsList.Components.ContactsInformationModal)
local Images_upvr = dependencies.UIBlox.App.ImageSet.Images
function any_extend_result1.render(arg1) -- Line 14
	--[[ Upvalues[5]:
		[1]: withLocalization_upvr (readonly)
		[2]: TextKeys_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: ContactsInformationModal_upvr (readonly)
		[5]: Images_upvr (readonly)
	]]
	return withLocalization_upvr({
		hasUploadError = TextKeys_upvr.UPLOAD_CONTACTS_FAILURE;
	})(function(arg1_2) -- Line 17
		--[[ Upvalues[3]:
			[1]: Roact_upvr (copied, readonly)
			[2]: ContactsInformationModal_upvr (copied, readonly)
			[3]: Images_upvr (copied, readonly)
		]]
		return Roact_upvr.createElement(ContactsInformationModal_upvr, {
			image = Images_upvr["icons/status/error_large"];
			text = arg1_2.hasUploadError;
		})
	end)
end
return any_extend_result1