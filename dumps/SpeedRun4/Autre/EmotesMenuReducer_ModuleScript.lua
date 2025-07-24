-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:34
-- Luau version 6, Types version 3
-- Time taken: 0.000339 seconds

local Parent = script.Parent
return require(game:GetService("CorePackages").Packages.Rodux).combineReducers({
	displayOptions = require(Parent.DisplayOptions);
	emotesPage = require(Parent.EmotesPage);
	emotesWheel = require(Parent.EmotesWheel);
	layout = require(Parent.Layout);
	locale = require(Parent.Locale);
})