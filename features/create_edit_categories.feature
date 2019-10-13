Feature: Create categories
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to add categories to my blog

Background:
  Given the blog is set up
  And I am logged into the admin panel
  
Scenario: Successfully create and edit categories
  Given I am on the new categories page
  When I fill in "category_name" with "a"
  And I fill in "category_keywords" with "b"
  And I fill in "category_permalink" with "c"
  And I fill in "category_description" with "d"
  And I press "Save"
  Then I should see "a"
  Then I should see "b"
  Then I should see "c"
  Then I should see "d"
  
  # Then I follow "Foobar"
  When I fill in "category_name" with "a1"
  And I fill in "category_keywords" with "b1"
  And I fill in "category_permalink" with "c1"
  And I fill in "category_description" with "d1"
  And I press "Save"
  Then I should see "a1"
  Then I should see "b1"
  Then I should see "c1"
  Then I should see "d1" 