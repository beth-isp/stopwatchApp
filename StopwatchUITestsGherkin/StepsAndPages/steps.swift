import Foundation
import XCTest
import XCTest_Gherkin
import Nimble

class NavigationSteps: StepDefiner {
    override func defineSteps() {

        step("the start button is displayed") {
            expect(Buttons.start.exists).to(beTrue(), description: "The start button does not exist")
        }

        step("I select the start button") {
            Buttons.start.tap()
        }

        step("the stop button is displayed") {
            expect(Buttons.stop.exists).to(beTrue(), description: "The stop button does not exist")
        }
        
        step("I select the stop button") {
            Buttons.stop.tap()
        }
        
        step("the reset button is displayed") {
            expect(Buttons.reset.exists).to(beTrue(), description: "The reset button does not exist")
        }
        
        step("the lap button is displayed") {
            expect(Buttons.lap.exists).to(beTrue(), description: "The lap button does not exist")
        }

        step("the start button is not displayed") {
            expect(Buttons.start.exists).to(beFalse(), description: "The start button does exist")
        }

        step("the stop button is not displayed") {
            expect(Buttons.stop.exists).to(beFalse(), description: "The stop button does exist")
        }
        
        step("the reset button is not displayed") {
            expect(Buttons.reset.exists).to(beFalse(), description: "The reset button does exist")
        }

        step("the lap button is not displayed") {
            expect(Buttons.lap.exists).to(beFalse(), description: "The lap button does exist")
        }
        
        
    }
}
