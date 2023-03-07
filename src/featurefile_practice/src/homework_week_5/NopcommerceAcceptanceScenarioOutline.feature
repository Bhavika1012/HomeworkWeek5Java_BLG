Feature: Bookcategory

    Background: I should be able to see homepage
    Given       I enter URL "https://demo.nopcommerce.com/" in browser
    And         I am on  homepage


  Scenario Outline: I should be able to see top menu tabs on homepage with categories

    When I am on home page
    Then I should be able to see top menu tabs with "<categories>"

    Examples:

            | Categories        |
            | Computer          |
            | Electronic        |
            | Apparel           |
            | Digital downloads |
            | Books             |
            | jewellery         |
            | Gift card         |

  Scenario Outline: I should be able to see books page with filters
    When            I select books category from top menu tabs on homepage
    Then            I should be navigated to books category
    And             I should be able to see "<Filters>"

    Examples:
            | Filters     |
            | Sort by     |
            | Display     |
            | The  Grid   |
            | List Tab    |

  Scenario Outline: I should be able to see a list of terms of each filter
    Given           I am on books page
    When            I click on "<Filter>"
    Then            I should be able to see "<List>" in dropdown menu
    Examples:
            | Filter        |  List                                                                            |
            | Sort by       |  Name: Ato z,name : Z to A, Price :Low to High, Price : High to Low,Created on   |
            | Display       |  3, 6, 9                                                                         |


  Scenario Outline: I should be able to choose any filter option with specific result
    Given           I am on books page
    When            I click on "<Filter>"
    And             I click on any "<Option>"
    Then            I should be able to choose any filter option from the list
    And             I should be able to see  "<Result>"

    Examples:

      |Filter          | Option                  | Result                                                            |
      |Sort by         | Name:A to Z             | sorted product with the product name in alphabetical order A to Z |
      |Sort by         | Name:Z to A             | sorted product with the product name in alphabetical order Z to A |
      |Sort by         | price:Low to High       | sorted product with the price in descending order                 |
      |Sort by         | price:High to Low       | sorted product  with the price in ascending order                 |
      |Sort by         | Created on              | Recently added  productd should be shown first                    |                 |
      |Display         | 3                       | 3 prodcuts in a page                                              |
      |Display         | 6                       | 6 products in a page                                              |
      |Display         | 9                       | 9 products in a page                                              |

  Scenario Outline:  I should be able to see Product Display format according to display format type as per given picture in SRS document
    Given            I am on book page
    When             I click on "<Display Format Icon>"
    Then             I should be able to see  product display format according display format type as per given picture in SRS document

    Examples:
            |Display Format Icon|
            |Grid               |
            |List               |


