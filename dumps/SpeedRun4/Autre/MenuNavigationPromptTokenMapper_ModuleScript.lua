-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:57
-- Luau version 6, Types version 3
-- Time taken: 0.000828 seconds

return function(arg1, arg2) -- Line 48
	return {
		Color = {
			backgroundUiColor = arg2.Semantic.Color.BackgroundUi.Default;
			separatorColor = arg2.Semantic.Color.Common.Divider;
			textColor = arg2.Semantic.Color.Text.Emphasis;
			buttonColor = arg2.Semantic.Color.Text.Emphasis;
			buttonTextColor = arg2.Semantic.Color.BackgroundUi.Default;
		};
		Size = {
			displayWidth = 1920;
			promptWidth = 1080;
			imageWidth = 566;
			imageHeight = 324;
			buttonHeight = arg2.Global.Size_600;
			iconSize = arg2.Global.Size_200;
		};
		Space = {
			titlePadding = arg2.Global.Space_150;
			bodyPadding = arg2.Global.Space_300;
			iconPadding = arg2.Global.Space_50;
		};
		Radius = {
			cornerRadius = arg2.Semantic.Radius.Medium;
			buttonRadius = arg2.Semantic.Radius.Small;
		};
		Typography = {
			label = arg2.Semantic.Typography.Subheader;
			header = arg2.Semantic.Typography.Header;
			caption = arg2.Semantic.Typography.Body;
		};
	}
end