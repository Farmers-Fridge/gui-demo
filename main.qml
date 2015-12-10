import QtQuick 2.4
import QtQuick.Controls 1.3
import "common"
import "splash"

ApplicationWindow {
    id:root

    Assets {
        id: assets
    }

    Gets {
        id: gets
    }

    Colors {
        id: colors
    }

    Fonts {
        id: fonts
    }

    StackView {
        id: stackView
        anchors.fill: parent

        property Component splashPageComponent: SplashPage {}
        initialItem: {item: splashPageComponent}

        delegate: StackViewDelegate {
            function transitionFinished(properties)
            {
                properties.exitItem.opacity = 1
            }

            pushTransition: StackViewTransition {
            }
        }
    }

    // push a new page on the stack from given component
    function push(page) {
        stackView.push(page)
    }

    // clear the cart on the way back
    function popSplash(splashPage) {
        if (stackView.depth > 1) {
          posts.clearCart()
          stackView.pop(splashPage)
        }
    }

    // go back to main menu
    function popMainMenu(mainMenu) {
        stackView.pop(mainMenu)
    }

    // go back to previous page
    function popBackOnePage() {
        stackView.pop()
    }

    // go back two pages
    function popBackTwoPages() {
        stackView.pop()
        stackView.pop()
    }

}
