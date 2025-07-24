-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:43
-- Luau version 6, Types version 3
-- Time taken: 0.000516 seconds

return {
	ModalOpened = {
		Type = "pageLoad";
		Args = {};
	};
	SendInvite = {
		Type = "formInteraction";
		Args = {
			btn = "inviteFriend";
			aType = "click";
		};
	};
	CancelInvite = {
		Type = "formInteraction";
		Args = {
			btn = "cancelInvite";
			aType = "click";
		};
	};
	ErrorShown = {
		Type = "formInteraction";
		Args = {
			field = "inviteFailed";
			aType = "shown";
		};
	};
	CustomTextShown = {
		Type = "formInteraction";
		Args = {
			field = "customText";
			aType = "shown";
		};
	};
}