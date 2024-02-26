# dD5M Meta Masks
A FiveM mask management resource with integrated shops functionality.  Resource provides masks as inventory items through functionality provided by [ox_inventory](https://github.com/overextended/ox_inventory). Resource can be used independent of any framework by giving items with metadata, or by integrating inbuilt shop system with your framework methods.  Out of the box the resource is compatible with QBOX.
---
## ✨ Features
- Physical Mask Items
- Mask removed on inventory removal
- Most if not all default mask items configured in default config. (Some items are commented out in config as they either do not appear or I personally do not use the mask variants because they are not a mask or of poor quality.  Adjust as you like.)
- Optional support for beards or other cosmetics commonly used in the `berd` mask clothing slot.  If enabled whitelisted drawables will be stored to player state bag and restored on mask removal
- In built shop system including item images provided by Sploom of [envRP](https://envrp.games)

## 🎞️ Showcase
[Preview Clip](https://youtu.be/qXa2doVQ--4)

![Menu](https://i.imgur.com/OdkvIOb.png)
![Inventory](https://i.imgur.com/Vp9QtuN.png)

## 💾 Download
[https://github.com/dD5M/dd5m_metamasks](https://github.com/dD5M/dd5m_metamasks)

## ⭐ Dependencies
- [https://github.com/overextended/ox_inventory](https://github.com/overextended/ox_inventory)
- [https://github.com/overextended/ox_lib](https://github.com/overextended/ox_lib)

## 🦆 Optional Dependencies
- [https://github.com/Qbox-project](https://github.com/Qbox-project)  

## 🛠️ Installation
- The resource is configured out of the box with very little setup required, especially if you are using QBOX framework.

### Ox Inventory Item
```
	['meta_mask'] = {
		weight = 200,
		stack = false,
		consume = 0,
		client = {remove = function() exports.dd5m_metamasks:RemoveMaskItem() end},
		server = {export = 'dd5m_metamasks.meta_mask'},
		allowArmed = true,
	},
```

### Shops Framework Functions
Edit the following function to suit your needs.  If you would like to disable shops you can comment out the lines indicated in the fxmanifest.lua.
```
lib.callback.register('dd5m_metamasks:server:handleTransaction', function(source, amount, maskData)
```

### Config
- Select your desired interaction option within `interactionOptions`.  If radial is disabled, the resource will default to keypress defined by `interactionOptions.key`.
- Store locations are built dynamicly via the `storeLocations` config variable.
- Add beard or other non mask components you want restored on mask removal in `whitelistDrawables`, or disable `drawableStateBags`.
- Category menu options are bult dynamicly via the `categoryLabel` config variable.
- Add any addon masks you would like to utilize with this resource at the bottom of the config where the end of GTA variants is indicated.

## 🆘 Support
- **Discord** [https://discord.gg/t6WcBnpe9H](https://discord.gg/t6WcBnpe9H)

## Credits
### Sploom - [envRP](https://envrp.games)
 - All image work.
