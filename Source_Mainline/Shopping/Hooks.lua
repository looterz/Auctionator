function Auctionator.Shopping.MainlineLateHooks()
  hooksecurefunc("AuctionHouseFavoriteDropDownCallback", function(dropDown, itemKey, isFavourite)
    local info = UIDropDownMenu_CreateInfo()
    info.notCheckable = 1
    info.text = AUCTIONATOR_L_OPEN_IN_SHOPPING_TAB
    info.func = function()
      Auctionator.AH.GetItemKeyInfo(itemKey, function(itemKeyInfo)
        AuctionatorTabs_Shopping:Click()
        AuctionatorShoppingFrame.OneItemSearchButton:DoSearch("\"" .. itemKeyInfo.itemName .. "\"")
      end)
    end
    UIDropDownMenu_AddButton(info)
  end)
end
