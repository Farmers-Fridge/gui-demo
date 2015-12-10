import QtQuick 2.4
import "../js/Rest.js" as Rest

Item {

    function of(url) {
        console.log("ASSET: " + url)
        return Rest.urlStatic("/image/" + url)
    }

    property string backgroundImage: of("background.png")
    property string buttonImage: of("button.png")
    property string goBackImage: of("goback.png")

    property string mainMenuBackgroundImage: of("/GOLDEN_UI/_BACKGROUND/no_watermark.png")
    property string mainMenuWhatImage: of("/GOLDEN_UI/_MAINMENU/what_would_you_like.png")
    property string mainMenuTouchImage: of("/GOLDEN_UI/_MAINMENU/touch_your_selection.png")
    property string mainMenuFooterImage: of("/GOLDEN_UI/_MAINMENU/logo.png")

    property string categoriesBackgroundImage: of("/GOLDEN_UI/_BACKGROUND/no_watermark.png")
    property string categoriesGoBackImage: of("/GOLDEN_UI/2CATEGORIES/goback.png")
    property string categoriesMainMenuImage: of("/GOLDEN_UI/2CATEGORIES/main_menu.png")
    property string categoriesVisitCartImage: of("/GOLDEN_UI/2CATEGORIES/visit_cart.png")
    property string categoriesTouchScreenImage: of("/GOLDEN_UI/2CATEGORIES/touch_screen.png")
    property string categoriesLeftImage: of("/GOLDEN_UI/2CATEGORIES/left.png")
    property string categoriesRightImage: of("/GOLDEN_UI/2CATEGORIES/right.png")

    property string vendItemBackgroundImage: of("/GOLDEN_UI/_BACKGROUND/no_watermark.png")
    property string vendItemVisitCartImage: of("/GOLDEN_UI/9VENDABLES/visit_cart.png")
    property string vendItemGoBackImage: of("/GOLDEN_UI/9VENDABLES/go_back.png")
    property string vendItemMainMenuImage: of("/GOLDEN_UI/9VENDABLES/main_menu.png")
    property string vendItemCheckoutImage: of("/GOLDEN_UI/9VENDABLES/checkout.png")
    property string vendItemLogoImage: of("/GOLDEN_UI/9VENDABLES/logo.png")

    property string cartBackgroundImage: of("/GOLDEN_UI/_BACKGROUND/no_watermark.png")
    property string cartCheckoutImage: of("/GOLDEN_UI/1CART/checkout.png")
    property string cartShopMoreImage: of("/GOLDEN_UI/1CART/shopmore.png")
    property string cartEnterCouponImage: of("/GOLDEN_UI/1CART/entercoupon.png")
    property string cartCancelImage: of("/GOLDEN_UI/1CART/cancel.png")
    property string cartGoBackImage: of("/GOLDEN_UI/1CART/goback.png")
    property string cartMainMenuImage: of("/GOLDEN_UI/1CART/main_menu.png")
    property string cartYourCartImage: of("/GOLDEN_UI/1CART/youcart.png")
    property string cartRemoveImage: of("/GOLDEN_UI/1CART/remove.png")

    property string receiptBackgroundImage: of("/GOLDEN_UI/_BACKGROUND/no_watermark.png")
    property string receiptLogoImage: of("/GOLDEN_UI/9VENDABLES/logo.png")
    property string receiptYesImage: of("/GOLDEN_UI/6EMAIL/yes.png")
    property string receiptNoImage: of("/GOLDEN_UI/6EMAIL/no.png")

    property string emailBackgroundImage: of("/GOLDEN_UI/_BACKGROUND/no_watermark.png")

    property string couponBackgroundImage: of("/GOLDEN_UI/_BACKGROUND/no_watermark.png")

    property string checkoutBackgroundImage: of("/GOLDEN_UI/_BACKGROUND/no_watermark.png")
    property string checkoutFooterImage: of("/GOLDEN_UI/5CHECK_OUT/logo.png")
    property string checkoutCancelImage: of("/GOLDEN_UI/5CHECK_OUT/cancel.png")

}

