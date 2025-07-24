-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:04:22
-- Luau version 6, Types version 3
-- Time taken: 0.000668 seconds

return {
	ViewportQueryOptions = require(script.options.ViewportQueryOptions);
	RangeQueryOptions = require(script.options.RangeQueryOptions);
	DataModelTraversalOptions = require(script.options.DataModelTraversalOptions);
	getSourceAssetsInView = require(script.getSourceAssetsInView);
	getSourceAssetsInRange = require(script.getSourceAssetsInRange);
	createLazyInstanceCollector = require(script.traversal.createLazyInstanceCollector);
	isSourceAsset = require(script.isSourceAsset);
	calculatePotentialAudibility = require(script.audio.calculatePotentialAudibility);
	getAudibleVolume = require(script.audio.getAudibleVolume);
	isAudible = require(script.audio.isAudible);
}