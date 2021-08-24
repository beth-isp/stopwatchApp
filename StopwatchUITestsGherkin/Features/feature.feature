Feature: Add outcomes to bet slip

    Scenario: Test that should pass
        Given the Start button is displayed
        And the Lap button is displayed
        And the Stop button is not displayed
        And the Reset button is not displayed
        When I select the Start button
        Then the Stop button is displayed
        And the Lap button is displayed
        And the Start button is not displayed
        And the Reset button is not displayed
        When I select the Stop button
        Then the Start button is displayed
        And the Reset button is displayed
        And the Stop button is not displayed
        And the Lap button is not displayed

    Scenario: Test that should fail
        Given the Start button is displayed
        And the Stop button is not displayed
        When I select the Start button
        Then the Stop button is not displayed
        And the Start button is displayed
