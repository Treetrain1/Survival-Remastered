// priority: 0

//settings.logAddedRecipes = true
//settings.logRemovedRecipes = true
//settings.logSkippedRecipes = false
//settings.logErroringRecipes = true

//console.info('Hello, World! (You will see this line every time server resources reload)')

ServerEvents.recipes(event => {
	// Change recipes here
	//event.remove({output: 'techreborn:block_breaker'})
})

ServerEvents.tags('item', event => {
	// Get the #forge:cobblestone tag collection and add Diamond Ore to it
	// event.get('forge:cobblestone').add('minecraft:diamond_ore')

	// Get the #forge:cobblestone tag collection and remove Mossy Cobblestone from it
	// event.get('forge:cobblestone').remove('minecraft:mossy_cobblestone')
})