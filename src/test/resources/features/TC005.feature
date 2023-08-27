@wip
Feature: Functionality of "search" box on the homepage

  Scenario:
    Given The user navigate to novoDaily website
    And accept the cookie

  Scenario Outline: Verify that if a user writes any product name in the search section, then can see a production and it's price .
    When click on search box and type any "<productname>"
    Then wait for the homepage to load for 5 seconds
    And verify that the "<price>", "<number>", logo of product are displayed
    And verify that "<product name>" contains any of the words written in the search box


    Examples:
      | productname               |  | price     |  | number      |  | product name              |
      | NovoDailies               |  | 99,00 €*  |  | 1 Produkt   |  | NovoDailies               |
      | NovoDaily Lipids          |  | 89,00 €*  |  | 14 Produkte |  | NovoDaily Lipids          |


  Scenario:
    Then close the browser

    # Sayfa kodlarındaki problemden dolayı, aranılan ürün, search box'da stabil olarak görünmüyor, yeri sürekli değişiyor ve bazen hiç görünmüyor