exports('meta_mask', function(event, item, inventory, slot, data)
    if event == 'usingItem' then
        if item.name == 'meta_mask' then
            local itemSlot = exports.ox_inventory:GetSlot(inventory.id, slot)
            TriggerClientEvent('dd5m_metamasks:client:maskAction', inventory.id, item, slot, itemSlot.metadata)
        end
    end
end)
