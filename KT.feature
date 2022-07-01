Feature: My Feature
Background:


@outline
Scenario Outline: Readdata from CSV
CSV Examples: Datasets\file1.CSV
Given I echo <num1>

If I verify number <num1> is equal to <num2>
 Then I echo "both are same"
Else I echo "not same"
Endif

And I assign all chevron variables to dollar variables
And I assign chevron variables "num1,num2" to dollar variables adding prefix "cycle"
And I echo $cyclenum1


@outline2
Scenario Outline: readdata
Given I echo <name>
And I echo <password>
Examples:
| name |password|
|"S1"|"S2"|


@webkt
Scenario:open google
Given I open "Chrome" web browser
And I navigate to "http://www.google.com/" in web browser 
And I wait 2 seconds
When I type "hello world" in element "xPath://input[@name='q']" in web browser
And I wait 5 seconds
#And I close web browser