/** Blizzard JAPI Functions */
globals
    location tempLoc = Location(0.0, 0.0)
    // mousebuttontype
    handle MOUSE_BUTTON_TYPE_LEFT   = ConvertFogState(1)
    handle MOUSE_BUTTON_TYPE_MIDDLE = ConvertFogState(2)
    handle MOUSE_BUTTON_TYPE_RIGHT  = ConvertFogState(3)
endglobals

function BlzGetTriggerPlayerMouseX takes nothing returns real
    return DzGetMouseTerrainX()
endfunction

function BlzGetTriggerPlayerMouseY takes nothing returns real
    return DzGetMouseTerrainY()
endfunction

function BlzGetTriggerPlayerMousePosition takes nothing returns location
    return Location(DzGetMouseTerrainX(), DzGetMouseTerrainY())
endfunction

// miss variable type: mousebuttontype
function BlzGetTriggerPlayerMouseButton takes nothing returns handle
    local integer key = DzGetTriggerKey()
    if key == 1 then
        return MOUSE_BUTTON_TYPE_LEFT
    elseif key == 2 then
        return MOUSE_BUTTON_TYPE_RIGHT
    elseif key == 4 then
        return MOUSE_BUTTON_TYPE_MIDDLE
    else
        return null
    endif
endfunction

/*
function BlzSetAbilityTooltip takes integer abilCode, string tooltip, integer level returns nothing
endfunction

function BlzSetAbilityActivatedTooltip takes integer abilCode, string tooltip, integer level returns nothing
endfunction

function BlzSetAbilityExtendedTooltip takes integer abilCode, string extendedTooltip, integer level returns nothing
endfunction

function BlzSetAbilityActivatedExtendedTooltip takes integer abilCode, string extendedTooltip, integer level returns nothing
endfunction

function BlzSetAbilityResearchTooltip takes integer abilCode, string researchTooltip, integer level returns nothing
endfunction

function BlzSetAbilityResearchExtendedTooltip takes integer abilCode, string researchExtendedTooltip, integer level returns nothing
endfunction

function BlzGetAbilityTooltip takes integer abilCode, integer level returns string
endfunction

function BlzGetAbilityActivatedTooltip takes integer abilCode, integer level returns string
endfunction

function BlzGetAbilityExtendedTooltip takes integer abilCode, integer level returns string
endfunction

function BlzGetAbilityActivatedExtendedTooltip takes integer abilCode, integer level returns string
endfunction

function BlzGetAbilityResearchTooltip takes integer abilCode, integer level returns string
endfunction

function BlzGetAbilityResearchExtendedTooltip takes integer abilCode, integer level returns string
endfunction

function BlzSetAbilityIcon takes integer abilCode, string iconPath returns nothing
endfunction

function BlzGetAbilityIcon takes integer abilCode returns string
endfunction

function BlzSetAbilityActivatedIcon takes integer abilCode, string iconPath returns nothing
endfunction

function BlzGetAbilityActivatedIcon takes integer abilCode returns string
endfunction

function BlzGetAbilityPosX takes integer abilCode returns integer
endfunction

function BlzGetAbilityPosY takes integer abilCode returns integer
endfunction

function BlzSetAbilityPosX takes integer abilCode, integer x returns nothing
endfunction

function BlzSetAbilityPosY takes integer abilCode, integer y returns nothing
endfunction

function BlzGetAbilityActivatedPosX takes integer abilCode returns integer
endfunction

function BlzGetAbilityActivatedPosY takes integer abilCode returns integer
endfunction

function BlzSetAbilityActivatedPosX takes integer abilCode, integer x returns nothing
endfunction

function BlzSetAbilityActivatedPosY takes integer abilCode, integer y returns nothing
endfunction
*/

function BlzGetUnitMaxHP takes unit whichUnit returns integer
    return R2I(GetUnitState(whichUnit, UNIT_STATE_MAX_LIFE))
endfunction

function BlzSetUnitMaxHP takes unit whichUnit, integer hp returns nothing
    call SetUnitState(whichUnit, UNIT_STATE_MAX_LIFE, hp)
endfunction

function BlzGetUnitMaxMana takes unit whichUnit returns integer
    return R2I(GetUnitState(whichUnit, UNIT_STATE_MAX_MANA))
endfunction

function BlzSetUnitMaxMana takes unit whichUnit, integer mana returns nothing
    call SetUnitState(whichUnit, UNIT_STATE_MAX_MANA, mana)
endfunction

/*
function BlzSetItemName takes item whichItem, string name returns nothing
endfunction

function BlzSetItemDescription takes item whichItem, string description returns nothing
endfunction

function BlzGetItemDescription takes item whichItem returns string
endfunction

function BlzSetItemTooltip takes item whichItem, string tooltip returns nothing
endfunction

function BlzGetItemTooltip takes item whichItem returns string
endfunction

function BlzSetItemExtendedTooltip takes item whichItem, string extendedTooltip returns nothing
endfunction

function BlzGetItemExtendedTooltip takes item whichItem returns string
endfunction

function BlzSetItemIconPath takes item whichItem, string iconPath returns nothing
endfunction

function BlzGetItemIconPath takes item whichItem returns string
endfunction

function BlzSetUnitName takes unit whichUnit, string name returns nothing
endfunction

function BlzSetHeroProperName takes unit whichUnit, string heroProperName returns nothing
endfunction
*/

function BlzGetUnitBaseDamage takes unit whichUnit, integer weaponIndex returns integer
    if weaponIndex == 1 then
        return R2I(GetUnitState(whichUnit, UNIT_STATE_DAMAGE_BASE_1))
    elseif weaponIndex == 2 then
        return R2I(GetUnitState(whichUnit, UNIT_STATE_DAMAGE_BASE_2))
    else
        return 0
    endif
endfunction

function BlzSetUnitBaseDamage takes unit whichUnit, integer baseDamage, integer weaponIndex returns nothing
    if weaponIndex == 1 then
        call SetUnitState(whichUnit, UNIT_STATE_DAMAGE_BASE_1, baseDamage)
    elseif weaponIndex == 2 then
        call SetUnitState(whichUnit, UNIT_STATE_DAMAGE_BASE_2, baseDamage)
    endif
endfunction

function BlzGetUnitDiceNumber takes unit whichUnit, integer weaponIndex returns integer
    if weaponIndex == 1 then
        return R2I(GetUnitState(whichUnit, UNIT_STATE_DAMAGE_DICE_1))
    elseif weaponIndex == 2 then
        return R2I(GetUnitState(whichUnit, UNIT_STATE_DAMAGE_DICE_2))
    else
        return 0
    endif
endfunction

function BlzSetUnitDiceNumber takes unit whichUnit, integer diceNumber, integer weaponIndex returns nothing
    if weaponIndex == 1 then
        call SetUnitState(whichUnit, UNIT_STATE_DAMAGE_DICE_1, diceNumber)
    elseif weaponIndex == 2 then
        call SetUnitState(whichUnit, UNIT_STATE_DAMAGE_DICE_2, diceNumber)
    endif
endfunction

function BlzGetUnitDiceSides takes unit whichUnit, integer weaponIndex returns integer
    if weaponIndex == 1 then
        return R2I(GetUnitState(whichUnit, UNIT_STATE_DAMAGE_SIDE_1))
    elseif weaponIndex == 2 then
        return R2I(GetUnitState(whichUnit, UNIT_STATE_DAMAGE_SIDE_2))
    else
        return 0
    endif
endfunction

function BlzSetUnitDiceSides takes unit whichUnit, integer diceSides, integer weaponIndex returns nothing
    if weaponIndex == 1 then
        call SetUnitState(whichUnit, UNIT_STATE_DAMAGE_SIDE_1, diceSides)
    elseif weaponIndex == 2 then
        call SetUnitState(whichUnit, UNIT_STATE_DAMAGE_SIDE_2, diceSides)
    endif
endfunction

function BlzGetUnitAttackCooldown takes unit whichUnit, integer weaponIndex returns real
    if weaponIndex == 1 then
        return GetUnitState(whichUnit, UNIT_STATE_DAMAGE_COOL_1)
    elseif weaponIndex == 2 then
        return GetUnitState(whichUnit, UNIT_STATE_DAMAGE_COOL_2)
    else
        return 0.0
    endif
endfunction

function BlzSetUnitAttackCooldown takes unit whichUnit, real cooldown, integer weaponIndex returns nothing
    if weaponIndex == 1 then
        call SetUnitState(whichUnit, UNIT_STATE_DAMAGE_COOL_1, cooldown)
    elseif weaponIndex == 2 then
        call SetUnitState(whichUnit, UNIT_STATE_DAMAGE_COOL_2, cooldown)
    endif
endfunction

/*
function BlzSetSpecialEffectColorByPlayer takes effect whichEffect, player whichPlayer returns nothing
endfunction

function BlzSetSpecialEffectColor takes effect whichEffect, integer r, integer g, integer b returns nothing
endfunction

function BlzSetSpecialEffectAlpha takes effect whichEffect, integer alpha returns nothing
endfunction
*/

function BlzSetSpecialEffectScale takes effect whichEffect, real scale returns nothing
    call EXSetEffectSize(whichEffect, scale)
endfunction

function BlzSetSpecialEffectPosition takes effect whichEffect, real x, real y, real z returns nothing
    call EXSetEffectXY(whichEffect, x, y)
    call EXSetEffectZ(whichEffect, z)
endfunction

function BlzSetSpecialEffectHeight takes effect whichEffect, real height returns nothing
    call EXSetEffectZ(whichEffect, height)
endfunction

function BlzSetSpecialEffectTimeScale takes effect whichEffect, real timeScale returns nothing
    call EXSetEffectSpeed(whichEffect, timeScale)
endfunction

// function BlzSetSpecialEffectTime takes effect whichEffect, real time returns nothing
// endfunction

function BlzSetSpecialEffectOrientation takes effect whichEffect, real yaw, real pitch, real roll returns nothing
    call EXEffectMatRotateX(whichEffect, pitch)
    call EXEffectMatRotateY(whichEffect, roll)
    call EXEffectMatRotateZ(whichEffect, yaw)
endfunction

function BlzSetSpecialEffectYaw takes effect whichEffect, real yaw returns nothing
    call EXEffectMatRotateZ(whichEffect, yaw)
endfunction

function BlzSetSpecialEffectPitch takes effect whichEffect, real pitch returns nothing
    call EXEffectMatRotateX(whichEffect, pitch)
endfunction

function BlzSetSpecialEffectRoll takes effect whichEffect, real roll returns nothing
    call EXEffectMatRotateY(whichEffect, roll)
endfunction

function BlzSetSpecialEffectX takes effect whichEffect, real x returns nothing
    call EXSetEffectXY(whichEffect, x, EXGetEffectY(whichEffect))
endfunction

function BlzSetSpecialEffectY takes effect whichEffect, real y returns nothing
    call EXSetEffectXY(whichEffect, EXGetEffectX(whichEffect), y)
endfunction

function BlzSetSpecialEffectZ takes effect whichEffect, real z returns nothing
    call EXSetEffectZ(whichEffect, z)
endfunction

function BlzSetSpecialEffectPositionLoc takes effect whichEffect, location loc returns nothing
    call EXSetEffectXY(whichEffect, GetLocationX(loc), GetLocationY(loc))
endfunction

function BlzGetLocalSpecialEffectX takes effect whichEffect returns real
    return EXGetEffectX(whichEffect)
endfunction

function BlzGetLocalSpecialEffectY takes effect whichEffect returns real
    return EXGetEffectY(whichEffect)
endfunction

function BlzGetLocalSpecialEffectZ takes effect whichEffect returns real
    return EXGetEffectZ(whichEffect)
endfunction

/*
function BlzSpecialEffectClearSubAnimations takes effect whichEffect returns nothing
endfunction

function BlzSpecialEffectRemoveSubAnimation takes effect whichEffect, subanimtype whichSubAnim returns nothing
endfunction

function BlzSpecialEffectAddSubAnimation takes effect whichEffect, subanimtype whichSubAnim returns nothing
endfunction

function BlzPlaySpecialEffect takes effect whichEffect, animtype whichAnim returns nothing
endfunction

function BlzPlaySpecialEffectWithTimeScale takes effect whichEffect, animtype whichAnim, real timeScale returns nothing
endfunction

function BlzGetAnimName takes animtype whichAnim returns string
endfunction
*/

function BlzGetUnitArmor takes unit whichUnit returns real
    return GetUnitState(whichUnit, UNIT_STATE_ARMOR)
endfunction

function BlzSetUnitArmor takes unit whichUnit, real armorAmount returns nothing
    call SetUnitState(whichUnit, UNIT_STATE_ARMOR, armorAmount)
endfunction

/*
function BlzUnitHideAbility takes unit whichUnit, integer abilId, boolean flag returns nothing
endfunction

function BlzUnitDisableAbility takes unit whichUnit, integer abilId, boolean flag, boolean hideUI returns nothing
endfunction

function BlzUnitCancelTimedLife takes unit whichUnit returns nothing
endfunction

function BlzIsUnitSelectable takes unit whichUnit returns boolean
endfunction

function BlzIsUnitInvulnerable takes unit whichUnit returns boolean
endfunction

function BlzUnitInterruptAttack takes unit whichUnit returns nothing
endfunction
*/

function BlzGetUnitCollisionSize takes unit whichUnit returns real
    return S2R(EXExecuteScript("(require'jass.slk').unit[" + I2S(GetUnitTypeId(whichUnit)) + "].collision"))
endfunction

function BlzGetAbilityManaCost takes integer abilId, integer level returns integer
    return S2I(EXExecuteScript("(require'jass.slk').ability[" + I2S(abilId) + "].Cost" + I2S(level)))
endfunction

function BlzGetAbilityCooldown takes integer abilId, integer level returns real
    return S2R(EXExecuteScript("(require'jass.slk').ability[" + I2S(abilId) + "].Cool" + I2S(level)))
endfunction

function BlzSetUnitAbilityCooldown takes unit whichUnit, integer abilId, integer level, real cooldown returns nothing
    call EXSetAbilityDataReal(EXGetUnitAbility(whichUnit, abilId), level, ABILITY_DATA_COOL, cooldown)
endfunction

function BlzGetUnitAbilityCooldown takes unit whichUnit, integer abilId, integer level returns real
    return EXGetAbilityDataReal(EXGetUnitAbility(whichUnit, abilId), level, ABILITY_DATA_COOL)
endfunction

function BlzGetUnitAbilityCooldownRemaining takes unit whichUnit, integer abilId returns real
    return EXGetAbilityState(EXGetUnitAbility(whichUnit, abilId), ABILITY_STATE_COOLDOWN)
endfunction

function BlzEndUnitAbilityCooldown takes unit whichUnit, integer abilId returns nothing
    call EXSetAbilityState(EXGetUnitAbility(whichUnit, abilId), ABILITY_STATE_COOLDOWN, 0.0)
endfunction

function BlzGetUnitAbilityManaCost takes unit whichUnit, integer abilId, integer level returns integer
    return EXGetAbilityDataInteger(EXGetUnitAbility(whichUnit, abilId), level, ABILITY_DATA_COST)
endfunction

function BlzSetUnitAbilityManaCost takes unit whichUnit, integer abilId, integer level, integer manaCost returns nothing
    call EXSetAbilityDataInteger(EXGetUnitAbility(whichUnit, abilId), level, ABILITY_DATA_COST, manaCost)
endfunction

function BlzGetLocalUnitZ takes unit whichUnit returns real    
    call MoveLocation(tempLoc, GetUnitX(whichUnit), GetUnitY(whichUnit))
    return GetLocationZ(tempLoc) + GetUnitFlyHeight(whichUnit)
endfunction

// function BlzDecPlayerTechResearched takes player whichPlayer, integer techid, integer levels returns nothing
// endfunction

function BlzSetEventDamage takes real damage returns nothing
    call EXSetEventDamage(damage)
endfunction

/*
function RequestExtraIntegerData takes integer dataType, player whichPlayer, string param1, string param2, boolean param3, integer param4, integer param5, integer param6 returns integer
endfunction

function RequestExtraBooleanData takes integer dataType, player whichPlayer, string param1, string param2, boolean param3, integer param4, integer param5, integer param6 returns boolean
endfunction

function RequestExtraStringData takes integer dataType, player whichPlayer, string param1, string param2, boolean param3, integer param4, integer param5, integer param6 returns string
endfunction

function RequestExtraRealData takes integer dataType, player whichPlayer, string param1, string param2, boolean param3, integer param4, integer param5, integer param6 returns real
endfunction
*/

// Add this function to follow the style of GetUnitX and GetUnitY, it has the same result as BlzGetLocalUnitZ
function BlzGetUnitZ takes unit whichUnit returns real
    return BlzGetLocalUnitZ(whichUnit)
endfunction


/** DZ Server Functions */
native DzAPI_Map_SaveServerValue                takes player whichPlayer, string key, string value returns boolean
native DzAPI_Map_GetServerValue                 takes player whichPlayer, string key returns string
native DzAPI_Map_Ladder_SetStat                 takes player whichPlayer, string key, string value returns nothing
native DzAPI_Map_IsRPGLadder                    takes nothing returns boolean
native DzAPI_Map_GetGameStartTime               takes nothing returns integer
native DzAPI_Map_Stat_SetStat                   takes player whichPlayer, string key, string value returns nothing
native DzAPI_Map_GetMatchType      		        takes nothing returns integer
native DzAPI_Map_Ladder_SetPlayerStat           takes player whichPlayer, string key, string value returns nothing
native DzAPI_Map_GetServerValueErrorCode        takes player whichPlayer returns integer
native DzAPI_Map_GetLadderLevel                 takes player whichPlayer returns integer
native DzAPI_Map_IsRedVIP                       takes player whichPlayer returns boolean
native DzAPI_Map_IsBlueVIP                      takes player whichPlayer returns boolean
native DzAPI_Map_GetLadderRank                  takes player whichPlayer returns integer
native DzAPI_Map_GetMapLevelRank                takes player whichPlayer returns integer
native DzAPI_Map_GetGuildName                   takes player whichPlayer returns string
native DzAPI_Map_GetGuildRole                   takes player whichPlayer returns integer
native DzAPI_Map_IsRPGLobby                     takes nothing returns boolean
native DzAPI_Map_GetMapLevel                    takes player whichPlayer returns integer
native DzAPI_Map_MissionComplete                takes player whichPlayer, string key, string value returns nothing
native DzAPI_Map_GetActivityData                takes nothing returns string
native DzAPI_Map_GetMapConfig                   takes string key returns string
native DzAPI_Map_HasMallItem                    takes player whichPlayer, string key returns boolean
native DzAPI_Map_SavePublicArchive              takes player whichPlayer, string key, string value returns boolean
native DzAPI_Map_GetPublicArchive               takes player whichPlayer, string key returns string
native DzAPI_Map_UseConsumablesItem             takes player whichPlayer, string key returns nothing
native DzAPI_Map_OrpgTrigger                    takes player whichPlayer, string key returns nothing
native DzAPI_Map_GetServerArchiveDrop           takes player whichPlayer, string key returns string
native DzAPI_Map_GetServerArchiveEquip          takes player whichPlayer, string key returns integer

/** DZ JAPI Functions */
// hardware
native DzGetMouseTerrainX                       takes nothing returns real
native DzGetMouseTerrainY                       takes nothing returns real
native DzGetMouseTerrainZ                       takes nothing returns real
native DzIsMouseOverUI                          takes nothing returns boolean
native DzGetMouseX                              takes nothing returns integer
native DzGetMouseY                              takes nothing returns integer
native DzGetMouseXRelative                      takes nothing returns integer
native DzGetMouseYRelative                      takes nothing returns integer
native DzSetMousePos                            takes integer x, integer y returns nothing
native DzTriggerRegisterMouseEvent              takes trigger trig, integer btn, integer status, boolean sync, string func returns nothing
native DzTriggerRegisterMouseEventByCode        takes trigger trig, integer btn, integer status, boolean sync, code funcHandle returns nothing
native DzTriggerRegisterKeyEvent                takes trigger trig, integer key, integer status, boolean sync, string func returns nothing
native DzTriggerRegisterKeyEventByCode          takes trigger trig, integer key, integer status, boolean sync, code funcHandle returns nothing
native DzTriggerRegisterMouseWheelEvent         takes trigger trig, boolean sync, string func returns nothing
native DzTriggerRegisterMouseWheelEventByCode   takes trigger trig, boolean sync, code funcHandle returns nothing
native DzTriggerRegisterMouseMoveEvent          takes trigger trig, boolean sync, string func returns nothing
native DzTriggerRegisterMouseMoveEventByCode    takes trigger trig, boolean sync, code funcHandle returns nothing
native DzGetTriggerKey                          takes nothing returns integer
native DzGetWheelDelta                          takes nothing returns integer
native DzIsKeyDown                              takes integer iKey returns boolean
native DzGetTriggerKeyPlayer                    takes nothing returns player
native DzGetWindowWidth                         takes nothing returns integer
native DzGetWindowHeight                        takes nothing returns integer
native DzGetWindowX                             takes nothing returns integer
native DzGetWindowY                             takes nothing returns integer
native DzTriggerRegisterWindowResizeEvent       takes trigger trig, boolean sync, string func returns nothing
native DzTriggerRegisterWindowResizeEventByCode takes trigger trig, boolean sync, code funcHandle returns nothing
native DzIsWindowActive                         takes nothing returns boolean
// plus
native DzDestructablePosition                   takes destructable d, real x, real y returns nothing
native DzSetUnitPosition                        takes unit whichUnit, real x, real y returns nothing
native DzExecuteFunc                            takes string funcName returns nothing
native DzGetUnitUnderMouse                      takes nothing returns unit
native DzSetUnitTexture                         takes unit whichUnit, string path, integer texId returns nothing
native DzSetMemory                              takes integer address, real value returns nothing
native DzSetUnitID                              takes unit whichUnit, integer id returns nothing
native DzSetUnitModel                           takes unit whichUnit, string path returns nothing
native DzSetWar3MapMap                          takes string map returns nothing
// sync
native DzTriggerRegisterSyncData                takes trigger trig, string prefix, boolean server returns nothing
native DzSyncData                               takes string prefix, string data returns nothing
native DzGetTriggerSyncData                     takes nothing returns string
native DzGetTriggerSyncPlayer                   takes nothing returns player
// gui
native DzFrameHideInterface                     takes nothing returns nothing
native DzFrameEditBlackBorders                  takes real upperHeight, real bottomHeight returns nothing
native DzFrameGetPortrait                       takes nothing returns integer
native DzFrameGetMinimap                        takes nothing returns integer
native DzFrameGetCommandBarButton               takes integer row, integer column returns integer
native DzFrameGetHeroBarButton                  takes integer buttonId returns integer
native DzFrameGetHeroHPBar                      takes integer buttonId returns integer
native DzFrameGetHeroManaBar                    takes integer buttonId returns integer
native DzFrameGetItemBarButton                  takes integer buttonId returns integer
native DzFrameGetMinimapButton                  takes integer buttonId returns integer
native DzFrameGetUpperButtonBarButton           takes integer buttonId returns integer
native DzFrameGetTooltip                        takes nothing returns integer
native DzFrameGetChatMessage                    takes nothing returns integer
native DzFrameGetUnitMessage                    takes nothing returns integer
native DzFrameGetTopMessage                     takes nothing returns integer
native DzGetColor                               takes integer r, integer g, integer b, integer a returns integer
native DzFrameSetUpdateCallback                 takes string func returns nothing
native DzFrameSetUpdateCallbackByCode           takes code funcHandle returns nothing
native DzFrameShow                              takes integer frame, boolean enable returns nothing
native DzCreateFrame                            takes string frame, integer parent, integer id returns integer
native DzCreateSimpleFrame                      takes string frame, integer parent, integer id returns integer
native DzDestroyFrame                           takes integer frame returns nothing
native DzLoadToc                                takes string fileName returns nothing
native DzFrameSetPoint                          takes integer frame, integer point, integer relativeFrame, integer relativePoint, real x, real y returns nothing
native DzFrameSetAbsolutePoint                  takes integer frame, integer point, real x, real y returns nothing
native DzFrameClearAllPoints                    takes integer frame returns nothing
native DzFrameSetEnable                         takes integer name, boolean enable returns nothing
native DzFrameSetScript                         takes integer frame, integer eventId, string func, boolean sync returns nothing
native DzFrameSetScriptByCode                   takes integer frame, integer eventId, code funcHandle, boolean sync returns nothing
native DzGetTriggerUIEventPlayer                takes nothing returns player
native DzGetTriggerUIEventFrame                 takes nothing returns integer
native DzFrameFindByName                        takes string name, integer id returns integer
native DzSimpleFrameFindByName                  takes string name, integer id returns integer
native DzSimpleFontStringFindByName             takes string name, integer id returns integer
native DzSimpleTextureFindByName                takes string name, integer id returns integer
native DzGetGameUI                              takes nothing returns integer
native DzClickFrame                             takes integer frame returns nothing
native DzSetCustomFovFix                        takes real value returns nothing
native DzEnableWideScreen                       takes boolean enable returns nothing
native DzFrameSetText                           takes integer frame, string text returns nothing
native DzFrameGetText                           takes integer frame returns string
native DzFrameSetTextSizeLimit                  takes integer frame, integer size returns nothing
native DzFrameGetTextSizeLimit                  takes integer frame returns integer
native DzFrameSetTextColor                      takes integer frame, integer color returns nothing
native DzGetMouseFocus                          takes nothing returns integer
native DzFrameSetAllPoints                      takes integer frame, integer relativeFrame returns boolean
native DzFrameSetFocus                          takes integer frame, boolean enable returns boolean
native DzFrameSetModel                          takes integer frame, string modelFile, integer modelType, integer flag returns nothing
native DzFrameGetEnable                         takes integer frame returns boolean
native DzFrameSetAlpha                          takes integer frame, integer alpha returns nothing
native DzFrameGetAlpha                          takes integer frame returns integer
native DzFrameSetAnimateOffset                  takes integer frame, integer animId, boolean autocast returns nothing
native DzFrameSetAnimateOffset                  takes integer frame, real offset returns nothing
native DzFrameSetTexture                        takes integer frame, string texture, integer flag returns nothing
native DzFrameSetScale                          takes integer frame, real scale returns nothing
native DzFrameSetTooltip                        takes integer frame, integer tooltip returns nothing
native DzFrameCageMouse                         takes integer frame, boolean enable returns nothing
native DzFrameGetValue                          takes integer frame returns real
native DzFrameSetMinMaxValue                    takes integer frame, real minValue, real maxValue returns nothing
native DzFrameSetStepValue                      takes integer frame, real step returns nothing
native DzFrameSetValue                          takes integer frame, real value returns nothing
native DzFrameSetSize                           takes integer frame, real w, real h returns nothing
native DzCreateFrameByTagName                   takes string frameType, string name, integer parent, string template, integer id returns integer
native DzFrameSetVertexColor                    takes integer frame, integer color returns nothing

/** YD JAPI Functions */
globals
    // Unit State
    constant unitstate UNIT_STATE_DAMAGE_DICE_1     = ConvertUnitState(0x10)
    constant unitstate UNIT_STATE_DAMAGE_SIDE_1     = ConvertUnitState(0x11)
    constant unitstate UNIT_STATE_DAMAGE_BASE_1     = ConvertUnitState(0x12)
    constant unitstate UNIT_STATE_DAMAGE_BONUS_1    = ConvertUnitState(0x13)
    constant unitstate UNIT_STATE_DAMAGE_MIN_1      = ConvertUnitState(0x14)
    constant unitstate UNIT_STATE_DAMAGE_MAX_1      = ConvertUnitState(0x15)
    constant unitstate UNIT_STATE_DAMAGE_RANGE_1    = ConvertUnitState(0x16)
    constant unitstate UNIT_STATE_ARMOR             = ConvertUnitState(0x20)
    constant unitstate UNIT_STATE_ATTACK_TYPE_1     = ConvertUnitState(0x23)
    constant unitstate UNIT_STATE_DAMAGE_COOL_1     = ConvertUnitState(0x25)
    constant unitstate UNIT_STATE_DAMAGE_DICE_2     = ConvertUnitState(0x30)
    constant unitstate UNIT_STATE_DAMAGE_SIDE_2     = ConvertUnitState(0x31)
    constant unitstate UNIT_STATE_DAMAGE_BASE_2     = ConvertUnitState(0x32)
    constant unitstate UNIT_STATE_DAMAGE_BONUS_2    = ConvertUnitState(0x33)
    constant unitstate UNIT_STATE_ATTACK_TYPE_2     = ConvertUnitState(0x36)
    constant unitstate UNIT_STATE_DAMAGE_COOL_2     = ConvertUnitState(0x38)
    constant unitstate UNIT_STATE_DAMAGE_RANGE_2    = ConvertUnitState(0x40)
    constant unitstate UNIT_STATE_DAMAGE_MIN_2      = ConvertUnitState(0x42)
    constant unitstate UNIT_STATE_DAMAGE_MAX_2      = ConvertUnitState(0x43)
    constant unitstate UNIT_STATE_ARMOR_TYPE        = ConvertUnitState(0x50)
    constant unitstate UNIT_STATE_DAMAGE_SPEED      = ConvertUnitState(0x51)
    // Ability State
    constant integer ABILITY_STATE_COOLDOWN         = 1
    // Ability Data
    constant integer ABILITY_DATA_TARGS             = 100 // integer
    constant integer ABILITY_DATA_CAST              = 101 // real
    constant integer ABILITY_DATA_DUR               = 102 // real
    constant integer ABILITY_DATA_HERODUR           = 103 // real
    constant integer ABILITY_DATA_COST              = 104 // integer
    constant integer ABILITY_DATA_COOL              = 105 // real
    constant integer ABILITY_DATA_AREA              = 106 // real
    constant integer ABILITY_DATA_RNG               = 107 // real
    constant integer ABILITY_DATA_DATA_A            = 108 // real
    constant integer ABILITY_DATA_DATA_B            = 109 // real
    constant integer ABILITY_DATA_DATA_C            = 110 // real
    constant integer ABILITY_DATA_DATA_D            = 111 // real
    constant integer ABILITY_DATA_DATA_E            = 112 // real
    constant integer ABILITY_DATA_DATA_F            = 113 // real
    constant integer ABILITY_DATA_DATA_G            = 114 // real
    constant integer ABILITY_DATA_DATA_H            = 115 // real
    constant integer ABILITY_DATA_DATA_I            = 116 // real
    constant integer ABILITY_DATA_UNITID            = 117 // integer
    constant integer ABILITY_DATA_HOTKET            = 200 // integer
    constant integer ABILITY_DATA_UNHOTKET          = 201 // integer
    constant integer ABILITY_DATA_RESEARCH_HOTKEY   = 202 // integer
    constant integer ABILITY_DATA_NAME              = 203 // string
    constant integer ABILITY_DATA_ART               = 204 // string
    constant integer ABILITY_DATA_TARGET_ART        = 205 // string
    constant integer ABILITY_DATA_CASTER_ART        = 206 // string
    constant integer ABILITY_DATA_EFFECT_ART        = 207 // string
    constant integer ABILITY_DATA_AREAEFFECT_ART    = 208 // string
    constant integer ABILITY_DATA_MISSILE_ART       = 209 // string
    constant integer ABILITY_DATA_SPECIAL_ART       = 210 // string
    constant integer ABILITY_DATA_LIGHTNING_EFFECT  = 211 // string
    constant integer ABILITY_DATA_BUFF_TIP          = 212 // string
    constant integer ABILITY_DATA_BUFF_UBERTIP      = 213 // string
    constant integer ABILITY_DATA_RESEARCH_TIP      = 214 // string
    constant integer ABILITY_DATA_TIP               = 215 // string
    constant integer ABILITY_DATA_UNTIP             = 216 // string
    constant integer ABILITY_DATA_RESEARCH_UBERTIP  = 217 // string
    constant integer ABILITY_DATA_UBERTIP           = 218 // string
    constant integer ABILITY_DATA_UNUBERTIP         = 219 // string
    constant integer ABILITY_DATA_UNART             = 220 // string
    // Chat Recipient
    constant integer CHAT_RECIPIENT_ALL             = 0        // [所有人]
    constant integer CHAT_RECIPIENT_ALLIES          = 1        // [盟友]
    constant integer CHAT_RECIPIENT_OBSERVERS       = 2        // [观看者]
    constant integer CHAT_RECIPIENT_REFEREES        = 2        // [裁判]
    constant integer CHAT_RECIPIENT_PRIVATE         = 3        // [私人的]
    // Damage Data
    constant integer EVENT_DAMAGE_DATA_VAILD        = 0
    constant integer EVENT_DAMAGE_DATA_IS_PHYSICAL  = 1
    constant integer EVENT_DAMAGE_DATA_IS_ATTACK    = 2
    constant integer EVENT_DAMAGE_DATA_IS_RANGED    = 3
    constant integer EVENT_DAMAGE_DATA_DAMAGE_TYPE  = 4
    constant integer EVENT_DAMAGE_DATA_WEAPON_TYPE  = 5
    constant integer EVENT_DAMAGE_DATA_ATTACK_TYPE  = 6
endglobals

// YDWEAbilityState
native EXGetUnitAbility        takes unit u, integer abilcode returns ability
native EXGetUnitAbilityByIndex takes unit u, integer index returns ability
native EXGetAbilityId          takes ability abil returns integer
native EXGetAbilityState       takes ability abil, integer state_type returns real
native EXSetAbilityState       takes ability abil, integer state_type, real value returns boolean
native EXGetAbilityDataReal    takes ability abil, integer level, integer data_type returns real
native EXSetAbilityDataReal    takes ability abil, integer level, integer data_type, real value returns boolean
native EXGetAbilityDataInteger takes ability abil, integer level, integer data_type returns integer
native EXSetAbilityDataInteger takes ability abil, integer level, integer data_type, integer value returns boolean
native EXGetAbilityDataString  takes ability abil, integer level, integer data_type returns string
native EXSetAbilityDataString  takes ability abil, integer level, integer data_type, string value returns boolean
native EXGetItemDataString     takes integer itemcode, integer data_type returns string
native EXSetItemDataString     takes integer itemcode, integer data_type, string value returns boolean
// YDWEEventDamageData
native EXGetEventDamageData    takes integer edd_type returns integer
native EXSetEventDamage        takes real amount returns boolean
// YDWEJapiEffect
native EXGetEffectX            takes effect e returns real
native EXGetEffectY            takes effect e returns real
native EXGetEffectZ            takes effect e returns real
native EXSetEffectXY           takes effect e, real x, real y returns nothing
native EXSetEffectZ            takes effect e, real z returns nothing
native EXGetEffectSize         takes effect e returns real
native EXSetEffectSize         takes effect e, real size returns nothing
native EXEffectMatRotateX      takes effect e, real angle returns nothing
native EXEffectMatRotateY      takes effect e, real angle returns nothing
native EXEffectMatRotateZ      takes effect e, real angle returns nothing
native EXEffectMatScale        takes effect e, real x, real y, real z returns nothing
native EXEffectMatReset        takes effect e returns nothing
native EXSetEffectSpeed        takes effect e, real speed returns nothing
// YDWEYDWEJapiOther
native EXDisplayChat           takes player p, integer chat_recipient, string message returns nothing
// YDWEYDWEJapiScript
native EXExecuteScript         takes string script returns string
// YDWEJapiUnit
native EXSetUnitFacing         takes unit u, real angle returns nothing
native EXPauseUnit             takes unit u, boolean flag returns nothing
native EXSetUnitCollisionType  takes boolean enable, unit u, integer t returns nothing
native EXSetUnitMoveType       takes unit u, integer t returns nothing
