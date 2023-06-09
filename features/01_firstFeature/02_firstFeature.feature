@development
Feature: Google translate

    Description: Google translate functionality

    Background: Open Google translate
        Given I visit the url 'https://google.com/'
        And I click on the option 'English'
        When I enter 'translate' into the field 'searchBar'
        And I click on the page
        And I click on the button 'googleSearch'
        Then The page should contain 'Translation'

    Scenario Outline: Check translate functionality in different languages
        Given I click on the field 'firstLanguageDropdown'
        And I search for <firstLanguage> in the field 'originalLanguage'
        Then I click on the field 'secondLanguageDropdown'
        And I search for <secondLanguage> in the field 'translatedLanguage'
        When I enter <request> into the field 'requestedWord'
        Then I should see <translation> in the widget 'translationBox'

        Examples:
            | firstLanguage | secondLanguage | request | translation |
            | 'Dutch'       | 'English'      | 'kat'   | 'cat'       |
#     | 'English'     | 'Italian'      | 'cat'   | 'gatto'     |
#    | 'Italian'     | 'Dutch'        | 'gatto' | 'kat'       |