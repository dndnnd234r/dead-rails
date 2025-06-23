#!/bin/bash

# Introduction
echo "Welcome player. You have to travel 80km to Mexico because of a zombie plague."
sleep 1

# Class select

echo "Please select your starting class:
1 - Vampire
2 - Survivalist
3 - Ironclad"

read class

case $class in
	1)
		type="Vampire"
		hp=10
		gun_dmg=10
		melee_dmg=20
		spd=20
		;;
	2)
		type="Survivalist"
		hp=20
		gun_dmg=20
		melee_dmg=15
		spd=10
		;;
	3)
		type="Ironclad"
		hp=40
		gun_dmg=10
		melee_dmg=10
		spd=5
		;;
esac

echo "You have chosen the $type class. Your HP is $hp, your gun damage is $gun_dmg, your melee damage is $melee_dmg and your movement speed is $spd."

sleep 2


# Train Select

echo "Please select your train:
1 - Cattle Car
2 - Armored Train"

read train

case $train in
	1)
		train_type="Cattle car"
		train_hp=10
		train_spd=20
		;;
	2)
		train_type="Armored Train"
		train_hp=20
		train_spd=10
		;;
esac

echo "You have chosen the $train_type. Your train's HP is $train_hp and your train speed is $train_spd."

sleep 2


# First Town

town=$(( $RANDOM % 2 ))

echo "You arrived at the first town. There are zombies everywhere. Do you want to loot this town? (yes/no)"
read selection

if [[ $selection == "yes" ]]; then
	echo "Choose a number between 0 and 1 (0/1)"
	read player
	if [[ $player == $town ]]; then
		echo "Few bars of gold and silver. Decent at least."
	else
		echo "You became another zombie."
		exit 1
	fi
else
	echo "You skipped the town. The outpost awaits."
fi

sleep 2


# Sterling

sterling=$(( $RANDOM % 5 ))

echo "You look to your left and see a small town named Sterling. There are no zombies. Do you want to loot this town? (yes/no)"
read selection

if [[ $selection == "yes" ]]; then
	echo "There are nothing inside the houses. You spot an abandoned mineshaft behind the town. Do you want to wander into the mines? (yes/no)"
	read mines_selection
	if [[ $mines_selection == "yes" ]]; then
		echo "Choose a number between 0 and 4. (0-4)"
		read player
		if [[ $player == $sterling || $player == "rifle" || $player == "shotgun" ]]; then
			echo "You defeated the mines. You obtained a green sword. It has the ability to reanimate 50% of the enemies you kill. Your melee damage increased."
		else
			echo "You became another skeleton. The journey ends."
			exit 2
		fi
	else
		echo "You skipped the mines, not knowing you could've been so powerful looting it."
	fi
else
	echo "You skipped Sterling."
fi

sleep 2


# Second Town

town=$(( $RANDOM % 4 ))

echo "You see another town. This time, it was much bigger. There are a lot of zombies. Do you want to loot this town? (yes/no)"
read selection

if [[ $selection == "yes" ]]; then
	echo "You went inside the town, zombies immediately swarm you. Choose a number between 0 and 3. (0-3)"
	read player
	if [[ $player == $town || $player == "crucifix" ]]; then
		echo "You defeated the town and obtained valuables worth a thousand bucks."
	else
		echo "You died. The journey ends here."
		exit 3
	fi
else
	echo "You skipped the town and didn't obtain any valuables."
fi

sleep 2


# Fort Constitution

fort=$(( $RANDOM % 6 ))

echo "You see what looks like a fortress made out of wood. Recently, you saw a wanted poster about a guy named Captain Prescott. Whoever catches him will get 150 bucks. Maybe this is where Captain Prescott is. Do you want to battle this fort? (yes/no)"
read selection

if [[ $selection == "yes" ]]; then
	echo "You wandered into the fortress. Suddenly, zombies with swords and guns begin charging towards you. You also spot now zombi-fied Captain Prescott. Do you want to proceed? (yes/no)"
	read fort_selection
	if [[ $fort_selection == "yes" ]]; then
		echo "Choose a number between 0 and 5. (0-5)"
		read player
		if [[ $player == $fort || $player == "cannon" ]]; then
			echo "You won. You collected Captain Prescott's body and opened the supply depot. Inside, there were bonds and a cannon. You brought them onto the train."
		else
			echo "You lost."
			exit 5
		fi
	else
		echo "You tried to run away. Eventually, the zombies caught up and ate you alive. The journey ends."
		exit 6
	fi
else
	echo "You skipped Fort Constitution and potentially a cannon. What a waste."
fi

sleep 2


# Tesla Lab

tesla_lab=$(( $RANDOM % 5 ))

echo "You saw a huge laboratory made out of bricks. Do you want to check it out? (yes/no)"
read selection

if [[ $selection == "yes" ]]; then
	echo "You saw some letters in the lab. You read them and found out that there was a scientist named Nikola Tesla who lived in this building. To prevent him from getting zombi-fied, he put his brain in a jar. Around the building, there were parts of Nikola Tesla's body. Do you want to revive him? (yes/no)"
	read tesla_revive
	if [[ $tesla_revive == "yes" ]]; then
		echo "You revived Tesla and turned on the power. Suddenly, the sky darkened and there was lightning everywhere. Scientist Zombies started pouring in. Choose a number between 0 and 4. (0-4)"
		read player
		if [[ $player == $tesla_lab || $player == "holy water" ]]; then
			echo "You won against the zombies but Tesla ran away. You found some bonds and a weird electric gun called the Electrocutioner under his revival station."
		else
			echo "The zombies banged you."
			exit 7
		fi
	else
		echo "You took the valuables inside and left."
	fi
else
	echo "You skipped the Tesla laboratory."
fi

sleep 2


# Third Town

town=$(( $RANDOM % 5 ))

echo "You spotted the biggest town you've ever seen. Terrifyingly, there are more than 100 zombies. Do you want to loot this town? (yes/no)"
read selection

if [[ $selection == "yes" ]]; then
	echo "Zombies attacked you. Choose a number between 0 and 4. (0-4)"
	read player
	if [[ $player == $town || $player == "devil's tears" ]]; then
		echo "You defeated the town. There were 4 banks in total. You got rich."
	else
		echo "You died."
		exit 8
	fi
else
	echo "You skipped the town. Maybe it's a waste of time."
fi

sleep 2


# Castle

castle=$(( $RANDOM % 10 ))

echo "At 40km, you saw an enormous castle. It seems dangerous. Do you want to go into the castle? (yes/no)"
read selection

if [[ $selection == "yes" ]]; then
	echo "Before you even stepped foot into the castle ground, vampires began to circle you. Do you want to proceed? (yes/no)"
	read castle_selection
	if [[ $castle_selection == "yes" ]]; then
		echo "You shot the vampires and moved on. You just stepped into the castle when a horde of werewolves came charging towards you. Choose a number between 0 and 9. (0-9)"
		read player
		if [[ $player == $castle || $player == "holy water" ]]; then
			echo "You acquired the castle. There were like 20 werewolves. You collected a lot of bonds and guns. W."
		else
			echo "You got diddled by the wolves."
			exit 9
		fi
	else
		echo "You ran away from the vampires. They still charged towards you but you manage to get into the outpost before they could infect you. Close one."
	fi
else
	echo "You ignored it. Why?"
fi

sleep 2


# Outlaw Town

outlaws=$(( $RANDOM % 3 ))
tesla_fight=$(( $RANDOM % 8 ))

echo "You arrived at the final outpost. From far away, you noticed that it was full of outlaws. Maybe this wasn't a normal outpost, it was an outlaw town. You decided to snipe some of the outlaws."

sleep 1

echo "You went deeper into the outpost. There was even more outlaws. Choose a number between 0 and 2. (0-2)"
read player

if [[ $player == $outlaws || $player == "rifle" ]]; then
	echo "You defeated the outlaws."
	sleep 1
	if [[ $tesla_revive == "yes" ]]; then
		echo "Remember when Tesla ran away? Well, there he is. He looks like a werewolf, but is 5 times bigger. This will be tough. Choose a number between 0 and 7. (0-7)"
		read player
		if [[ $player == $tesla_fight || $player == "electrocutioner" ]]; then
			echo "You defeated Nikola Tesla. It was a tough battle."
			sleep 1
			echo "You escaped."
		else
			echo "You died. At the final step. Really?"
			exit 10
		fi
	else
		echo "You escaped. What a journey."
	fi
else
	echo "You died. At the end. Seriously?"
	exit 11
fi
