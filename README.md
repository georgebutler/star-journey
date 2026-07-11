# Star Journey

An incremental space survival and exploration game built with Godot 4.

## Core Game Loop & Actions
Anything the player chooses to do in the game constitutes an **Action**. This includes moving the ship, landing on a planet, upgrading capabilities, or crafting items.

*   **Resource Consumption:** Each action consumes resources such as **Time**, **Fuel**, **Food**, and/or other materials.
*   **Action Availability:** If a required resource is depleted, the action cannot be performed.
*   **Planet Landing:** Landing on a planet is always free and does not consume resources.

## Incremental Aspects
While landed on a planet, your ship's crew can be assigned to various tasks.
*   **Harvest & Explore:** Crew members can explore the planetary terrain and harvest raw materials.
*   **Suit Limit:** Each crew member has a limited survival time on the surface based on the quality of their environmental suits.
*   **Crew Allocation:** You can only assign as many crew members to planetary operations as you have environmental suits available.

## Resources
*   **Food:** Sustains your crew. If food runs out, crew survival is threatened.
*   **Fuel:** Required to move the ship between star systems.
*   **Iron:** The primary material used for ship repairs and upgrades.

## Ship Management
*   **Upgrades:** Spend gathered resources to upgrade ship modules and unlock new capabilities.
*   **Rest Stops:** Deep space features neutral outposts and rest stops that contain:
    *   **Diners:** Recruit new crew members to increase operational capacity.
    *   **Gas Stations:** Purchase fuel to refuel the ship.
    *   **Shops:** Buy gear, suits, and rare components.
*   **Crew Assignment:** Manage your crew's roles (e.g., Farming, Engineering, Exploration) to optimize resource generation.

## Planets
*   **Planet Types:** Discover varied planets, including habitable Class-M planets, rich rocky asteroid bodies, and resource-heavy but hostile extreme worlds.
*   **Hazards:** Watch out for planetary hazards such as extreme cold, radiation, or toxic atmospheres that drain suit durability faster.

## Available Upgrades
*   **Life Support:** Upgrade farm and water filtration systems to support a larger crew.
*   **Crew Quarters:** Add extra rooms to your ship to increase maximum crew capacity.
*   **Suit Bay:** Upgrade environmental suits to increase crew survival time on hostile planets.
