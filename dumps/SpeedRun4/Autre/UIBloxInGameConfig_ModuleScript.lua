-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:00:29
-- Luau version 6, Types version 3
-- Time taken: 0.000743 seconds

local SharedFlags = require(script.Parent.Parent.SharedFlags)
local UIBlox = SharedFlags.UIBlox
return {
	useNewHeaderBar = UIBlox.GetFFlagUIBloxUseNewHeaderBar();
	enableInteractionFeedback = SharedFlags.GetFFlagEnableUISoundAndHaptics();
	refactorInteractable = true;
	enableTooltipV2HoverControllerReRenderFix = UIBlox.GetFFlagUIBloxEnableTooltipV2HoverControllerReRenderFix();
	enableTooltipV2BodyFontFix = UIBlox.GetFFlagUIBloxEnableTooltipV2BodyFontFix();
	enableTextFieldInputType = UIBlox.GetFFlagUIBloxEnableTextFieldInputType();
	fixHeaderBarTitleFlickering = UIBlox.GetFFlagUIBloxFixHeaderBarTitleFlickering();
	fixHeaderBarDependenciesArray = UIBlox.GetFFlagUIBloxFixHeaderBarDependenciesArray();
	enableCreateLazyComponent = true;
	enableOpenTypeSupport = SharedFlags.GetFFlagLuaAppEnableOpenTypeSupport();
	enableNavigationBarSelectionChangeFix = UIBlox.GetFFlagUIBloxEnableNavigationBarSelectionCallbackFix();
	didMountUpdateFullPageModal = UIBlox.GetFFlagUIBloxDidMountUpdateFullPageModal();
	enablePanelManagedAnchoring = UIBlox.GetFFlagUIBloxEnablePanelManagedAnchoring();
	useFoundationButton = UIBlox.GetFFlagUIBloxUseFoundationButton();
	useEngineRichTextBounds = UIBlox.FFlagUIBloxUseEngineRichTextBounds;
	useFoundationInteractable = UIBlox.FFlagUIBloxUseFoundationInteractable;
	useTokenizedShortcutBar = SharedFlags.FFlagShortcutBarUseTokens;
	migrateBuilderIcon = UIBlox.FFlagUIBloxMigrateBuilderIcon;
}