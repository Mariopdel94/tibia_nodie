# Tibia NoDie

- [Tibia NoDie](#tibia-nodie)
	- [Installation](#installation)
		- [NoDie Setup](#nodie-setup)
			- [Edit config.ini files](#edit-configini-files)
	- [Launching](#launching)
	- [Main Features](#main-features)
		- [Magic Level Training in Protection Zone](#magic-level-training-in-protection-zone)
		- [Auto login](#auto-login)
		- [Works while minimized](#works-while-minimized)
		- [Tips and Tricks](#tips-and-tricks)
			- [Refill your character](#refill-your-character)
			- [Remember to deactivate](#remember-to-deactivate)
			- [Training for more than 24 hours](#training-for-more-than-24-hours)
	- [Avoiding BattleEye Detection](#avoiding-battleeye-detection)
	- [Auto rune](#auto-rune)
		- [Rings](#rings)
		- [Runes table](#runes-table)
		- [Mana regeneration tables](#mana-regeneration-tables)
			- [Mage with Ring of Healing and Soft boots](#mage-with-ring-of-healing-and-soft-boots)
			- [Mage with Life ring and Soft boots](#mage-with-life-ring-and-soft-boots)
			- [Mage with only Soft boots](#mage-with-only-soft-boots)

## Installation
Install AutoHotkey, from [https://www.autohotkey.com/](https://www.autohotkey.com/).

### NoDie Setup

#### Edit config.ini files
Edit `src/config.ini` according to your Tibia Client and Character.

## Launching
Execute *noDie.ahk*.

## Main Features

### Magic Level Training in Protection Zone
As you may know, with some daily rewards you receive the ability to regenerate mana and soul points while in protection zones.

Set up to 4 keys for each of these actions:

- Equip Soft Boots
	- this timer tries to equip your softboots every 5 minutes or so
	- this way you don't have to worry about your soft boots not always having 4 hours of use left
- Equip Ring of Healing
	- this timer can be changed accordingly if you wish to use Life Ring instead
	- Life rings do not offer as much regeneration but are way cheaper
- Eat brown mushrooms
	- other foods may be used, changing the timer accordingly
	- Brown Mushrooms are advised as your character will need to save a lot of capacity for other resources like blank runes and rings
- Use spell to create rune
	- this feature's timer needs to be changed according to each rune in file auto_rune.ahk
	- as is, it uses a proper time to craft sudden death runes (70 to 80 secs)
	- take into consideration how much mana and soul points your character regenerates per sec and how much is needed for your selected rune
- Use spell to waste excessive mana
	- if you are consuming more soul points than you regenerate, you will have superfluos mana that you still want to use to increase magic level

With these actions, in a protection zone, your character will safely train magic level while crafting runes and making profit.

### Auto login
NoDie features a auto login feature in case your internet connection drops while you are away.

The bot will **attempt to keep your character selection screen active** and log back in once internet connection is reestablished. By keeping the selection screen active it is able to relogin without inserting your account name and password.

This way you can go to work and be certain that your character will keep training all day long.

### Works while minimized

These actions will be performed even if your Tibia window is minimized, so you can freely use your computer while your character safely improves its magic level.

Wanna watch a movie or play Dota while still training magic level? With *NoDie* you can do just that!

Keys are sent directly to your Tibia Client, so *NoDie*'s actions will not interfere with anything that you are doing or typing.

### Tips and Tricks

#### Refill your character
Make sure to refill your character with the necessary resources to keep crafting runes and regenerating mana. For instance, for 24 hours of sudden death making, your character should need:

- 6 to 7 soft boots
- 192 rings of healing
- ~300 brown mushrooms
- ~1k blank runes

#### Remember to deactivate
When you wish to leave protection zone or go hunting, always remember to deactivate the script through the tray icon.

#### Training for more than 24 hours
*NoDie* can automatically log in your main character right after server save and get back to magic level training. It can even log all your makers and put them on offline training before logging into your main.

If you want this, set up your account name and password in config.ini. *NoDie* will not send your credentials anywhere but **use it at your own risk**.

If you download *NoDie* or its scripts from an unofficial page, some other developer could easily have edited it so that they have access to your password. Always download *NoDie* from its main, official repository.

This feature is available but not advised unless you know what you are doing.

## Avoiding BattleEye Detection

As BattleEye does not allow bots to be used, every feature in *NoDie* uses some sort of randomness to make it harder for external software to identify any repetitive patterns.

- for some actions, up to 4 keys can be registered. In every call, the corresponding method will randomly select one of these to use.
- the auto-healer's healing period continually changes using *exhaustion_time + small\_random\_number*
- every action has a *very small random delay* before being performed. This delay is unnoticeable for human eyes.

## Auto rune
Change line 41 on `auto_rune.ahk` file on the `RUNE` and change the numbers to the time needed to get the mana of the rune you want to create, and add around 10 seconds for randomness.

For the `MANA WASTE` option add around 30seconds to the values on `RUNE`.

**In tibia:**

On the game add the same action to your `mana waste hotkey` as in the `rune hotkey` (Have 2 hotkeys for the same action of creating a rune) for maximizing your rune creation. If there's a case where the SP doesn't regenerate completely when you create the next batch of runes you will need to add `utana vid` as a `mana waste` option.

You regenerate 1 SP each 16 seconds.

### Rings

* When using `Rings of healing` the time needed is `(452, 455)` (3 seconds of randomness);
* When using `Life rings` the time needed is `(1202, 1205)` (3 seconds of randomness);

### Runes table

| Rune         | Mana per rune | SP needed |
| ------------ | :-----------: | :-------: |
| Paralyze     |     1400      |     3     |
| Sudden Death |      985      |     5     |
| Avalanche    |      530      |     3     |

### Mana regeneration tables
Best time to calculate how mana you regenerate is at 6 seconds.

* Base promoted mage gives you 6MP for each 6 seconds;
* Soft boots gives you 12MP for each 6 seconds;
* Rings of healing gives you 24MP for each 6 seconds;
* Life rings gives you 8MP for each 6 seconds;

**Note:** With the reward system you can double up these numbers.

For 24 periods you will need aprox:

* 6 to 7 soft boots
* 192 rings of healing
* ~300 brown mushrooms
* ~1k blank runes

#### Mage with Ring of Healing and Soft boots
| Seconds | Mana  | Mana with weekly reward |
| :-----: | :---: | :---------------------: |
|    6    |  42   |           84            |
|   12    |  84   |           168           |
|   18    |  126  |           252           |
|   24    |  168  |           336           |
|   30    |  210  |           420           |
|   36    |  252  |           504           |
|   42    |  294  |           588           |
|   48    |  336  |           672           |
|   54    |  378  |           756           |
|   60    |  420  |           840           |
|   66    |  462  |           924           |
|   72    |  504  |          1008           |
|   78    |  546  |          1092           |
|   84    |  588  |          1176           |
|   90    |  630  |          1260           |
|   96    |  672  |          1344           |
|   102   |  714  |          1428           |

#### Mage with Life ring and Soft boots
| Seconds | Mana  | Mana with weekly reward |
| :-----: | :---: | :---------------------: |
|    6    |  26   |           52            |
|   12    |  52   |           104           |
|   18    |  78   |           156           |
|   24    |  104  |           208           |
|   30    |  130  |           260           |
|   36    |  156  |           312           |
|   42    |  182  |           364           |
|   48    |  208  |           416           |
|   54    |  234  |           468           |
|   60    |  260  |           520           |
|   66    |  286  |           572           |
|   72    |  312  |           624           |
|   78    |  338  |           676           |
|   84    |  364  |           728           |
|   90    |  390  |           780           |
|   96    |  416  |           832           |
|   102   |  442  |           884           |

#### Mage with only Soft boots
| Seconds | Mana  | Mana with weekly reward |
| :-----: | :---: | :---------------------: |
|    6    |  18   |           36            |
|   12    |  36   |           72            |
|   18    |  54   |           108           |
|   24    |  72   |           144           |
|   30    |  90   |           180           |
|   36    |  108  |           216           |
|   42    |  126  |           252           |
|   48    |  144  |           288           |
|   54    |  162  |           324           |
|   60    |  180  |           360           |
|   66    |  198  |           396           |
|   72    |  216  |           432           |
|   78    |  234  |           468           |
|   84    |  252  |           504           |
|   90    |  270  |           540           |
|   96    |  288  |           576           |
|   102   |  306  |           612           |