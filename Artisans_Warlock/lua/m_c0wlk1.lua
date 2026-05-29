function C0_WarlockThievingActionbarListener(config, state)
   if 
      state == 5
      and EEex_GameObject_GetSelected():getActiveStats().m_nKit == 0x4000
      then
      EEex_Actionbar_SetButton(3, EEex_Actionbar_ButtonType.FIND_TRAPS)
   end
end
EEex_Actionbar_AddListener(C0_WarlockThievingActionbarListener)

function M_C0WL01(effect, sprite)

    local array = EEex_Resource_Load2DA("C0WL102A")

    local knownSpells = EEex_Utility_MapItrValues(3, EEex_Utility_ChainItrs(
        sprite:getKnownMageSpellsItr(1, 9),
        sprite:getKnownInnateSpellsItr(1, 9)
    ))

    local savedCastType
    return EEex_Utility_MutateItr(
        EEex_Actionbar_GetOp214ButtonDataItr(sprite:getValidSpellsWithAbilityItr(EEex_Utility_FilterItr(
            EEex_Utility_ApplyItr(array:getRowColumnsItr(nil, 0, 1), function(spellResRef, castType)
                savedCastType = castType
                return spellResRef
            end),
            function(spellResRef)
                return knownSpells[spellResRef:upper()] ~= nil
            end
        ))),
        function(buttonData)
            buttonData.m_abilityId.m_itemType = tonumber(savedCastType) or 3
        end
    )
end

function M_C0WL02(effect, sprite)

    local array = EEex_Resource_Load2DA("C0WL103A")

    local knownSpells = EEex_Utility_MapItrValues(3, EEex_Utility_ChainItrs(
        sprite:getKnownMageSpellsItr(1, 9),
        sprite:getKnownInnateSpellsItr(1, 9)
    ))

    local savedCastType
    return EEex_Utility_MutateItr(
        EEex_Actionbar_GetOp214ButtonDataItr(sprite:getValidSpellsWithAbilityItr(EEex_Utility_FilterItr(
            EEex_Utility_ApplyItr(array:getRowColumnsItr(nil, 0, 1), function(spellResRef, castType)
                savedCastType = castType
                return spellResRef
            end),
            function(spellResRef)
                return knownSpells[spellResRef:upper()] ~= nil
            end
        ))),
        function(buttonData)
            buttonData.m_abilityId.m_itemType = tonumber(savedCastType) or 3
        end
    )
end

function M_C0WL03(effect, sprite)

    local array = EEex_Resource_Load2DA("C0WL200")

    local knownSpells = EEex_Utility_MapItrValues(3, EEex_Utility_ChainItrs(
        sprite:getKnownMageSpellsItr(1, 9),
        sprite:getKnownInnateSpellsItr(1, 9)
    ))

    local savedCastType
    return EEex_Utility_MutateItr(
        EEex_Actionbar_GetOp214ButtonDataItr(sprite:getValidSpellsWithAbilityItr(EEex_Utility_FilterItr(
            EEex_Utility_ApplyItr(array:getRowColumnsItr(nil, 0, 1), function(spellResRef, castType)
                savedCastType = castType
                return spellResRef
            end),
            function(spellResRef)
                return knownSpells[spellResRef:upper()] ~= nil
            end
        ))),
        function(buttonData)
            buttonData.m_abilityId.m_itemType = tonumber(savedCastType) or 3
        end
    )
end

function M_C0WL04(effect, sprite)

    local array = EEex_Resource_Load2DA("C0WL500")

    local knownSpells = EEex_Utility_MapItrValues(3, EEex_Utility_ChainItrs(
        sprite:getKnownMageSpellsItr(1, 9),
        sprite:getKnownInnateSpellsItr(1, 9)
    ))

    local savedCastType
    return EEex_Utility_MutateItr(
        EEex_Actionbar_GetOp214ButtonDataItr(sprite:getValidSpellsWithAbilityItr(EEex_Utility_FilterItr(
            EEex_Utility_ApplyItr(array:getRowColumnsItr(nil, 0, 1), function(spellResRef, castType)
                savedCastType = castType
                return spellResRef
            end),
            function(spellResRef)
                return knownSpells[spellResRef:upper()] ~= nil
            end
        ))),
        function(buttonData)
            buttonData.m_abilityId.m_itemType = tonumber(savedCastType) or 3
        end
    )
end