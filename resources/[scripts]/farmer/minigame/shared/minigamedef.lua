--[[

* = Required
? = Optional

    * Provide current farming location
    * Is near farming location?
    * Is farming?
    ? Has farming requirement items?
    * Has enough inventory space for farming reward items?
    ? Succeded UI task minigame?
    * Disable player controls `Player(source)["state"]["Buttons"]`
    * Clear hoverfy
    * Play farming animation
    ? Change loot table based on number of players on the same party
    * Wait X seconds until farming ends ( maybe do some validations; check anima/tions, coords, etc... )
    * Reward items
    * Enable player controls `Player(source)["state"]["Buttons"]`
    ? Restart farming if we are looping

--]]

--

---@class fsMinigameBaseRequirementDef

---@class fsMinigameItemRequirementDef : fsMinigameBaseRequirementDef
---@field id      string
---@field amount? number [ defaults to 1 ]

---@alias fsMinigameRequirementDef
---| fsMinigameItemRequirementDef

---@class fsMinigameRequirementsDef
---@field items? fsMinigameItemRequirementDef[]

---@class MinigameBaseRewardDef
---@field amount  number
---@field chanceWeight? number

---@class MinigameItemRewardDef : MinigameBaseRewardDef
---@field id      string

---@class MinigameCurrencyRewardDef : MinigameBaseRewardDef

---@class MinigameRewardLootTableDef
---@field when?     MinigameLootTableCondition
---@field item?     MinigameItemRewardDef[]
---@field currency? MinigameCurrencyRewardDef[]
---@field computedChanceWeightSum number | nil

---@alias MinigamePointDef   vector3

---@class MinigameReward
---@field amount       number

---@class MinigameRewardItem : MinigameReward
---@field itemId string

---@class MinigameRewardCurrency : MinigameReward

---@class MinigameRewards
---@field items      MinigameRewardItem[]
---@field currencies MinigameRewardCurrency[]

---@class MinigameComputeRewardsConfig
---@field rewardAmountMultiplier number

---@class MinigameComputeRewardsEvent
---@field minigame Minigame
---@field config   MinigameComputeRewardsConfig

--#
---@alias MinigameHookBeforeComputeRewards fun( event: MinigameComputeRewardsEvent )

---@class MinigameHooksDef
---@field beforeComputeRewards? MinigameHookBeforeComputeRewards
--# end

--#
---@class MinigameIsAllowedDef
---@field groups? string[]
--# end

---@enum eMinigameDefFlags
eMinigameDefFlags =
{
    -- Nenhuma flag
    MDF_NONE = 0,
    MDF_ONLY_CREATED_BY_SCRIPT = 1 << 1,
    MDF_REWARDS_WEIGHTED_CHANCES = 1 << 2,

    MDF__ON_CREATE__SWITCH_TO_PRIVATE_ROUTING_BUCKET = 1 << 5,

    -- #
    --
    -- MDF__BEFORE_START__REQUIRE_TASK: 
    MDF__BEFORE_START__REQUIRE_TASK = 1 << 10,
    --
    -- #end

    -- #Flags relacionadas à quando minigame é completado pelos participantes
    --
    -- MDF__ON_COMPLETE__GOTO_NEXT_MINIGAME_POINT: Ir para o próximo ponto disponivel
    MDF__ON_COMPLETE__GOTO_NEXT_MINIGAME_POINT = 1 << 20,
    --
    -- #end

    -- Outras flags
}

---@class BaseMinigameVolumeDef
---@field type eMinigameVolumeType
---@field volume CZone

---@class SphereMinigameVolumeDef : BaseMinigameVolumeDef
---@field type   eMinigameVolumeType.Sphere
---@field coords vector3
---@field radius number

---@class PolygonMinigameVolumeDef : BaseMinigameVolumeDef
---@field type eMinigameVolumeType.Polygon
---@field vertices vector3[]

---@alias MinigameVolumeDef SphereMinigameVolumeDef | PolygonMinigameVolumeDef

---@class MinigameDef
---@field index         number
---@field name?         string
---@field displayName   string
---@field flags?        eMinigameDefFlags
---@field duration      number
---@field volumes       MinigameVolumeDef[]
---@field distance?     number
---@field isAllowed?    MinigameIsAllowedDef
---@field requirements  fsMinigameRequirementsDef
---@field scriptedInteractionName? string
---@field rewards       MinigameRewardLootTableDef[]
---@field hooks?        MinigameHooksDef

---@class fsMinigameDef
---@field name?         string
---@field displayName   string
---@field flags?        eMinigameDefFlags
---@field duration      number
---@field points?       MinigamePointDef[]      -- Usar volumes ao invés de points
---@field volumes?      fsMinigameVolumesDef
---@field distance?     number
---@field isAllowed?    MinigameIsAllowedDef
---@field requirements? fsMinigameRequirementsDef
---@field scriptedInteractionName? string
---@field rewards?      MinigameRewardLootTableDef | MinigameRewardLootTableDef[]
---@field hooks?        MinigameHooksDef
---@field volumes?      fsMinigameVolumesDef

---@alias fsMinigameVolumesDef (fsPolygonMinigameVolumeDef | fsSphereMinigameVolumeDef)[]

---@class fsPolygonMinigameVolumeDef
---@field [1] 'polygon'
---@field [2] vector2[]

---@class fsSphereMinigameVolumeDef
---@field [1] 'sphere'
---@field [2] vector3
---@field [3] number

---@alias MinigameLootTableCondition fun( ctx: MinigameContext ): boolean