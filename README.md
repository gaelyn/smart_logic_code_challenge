# Goal
Parse through the 3 input `.txt` files to produce the desired output files.

## Input  
Note: The order of properties is different for each format.  
The pipe-delimited file lists each record as follows:  
`LastName | FirstName | MiddleInitial | Gender | FavoriteColor | DateOfBirth`  
The comma-delimited file looks like this:  
`LastName, FirstName, Gender, FavoriteColor, DateOfBirth`  
The space-delimited file looks like this:  
`LastName FirstName MiddleInitial Gender DateOfBirth FavoriteColor`

#### Assumptions
- You may assume that there are no delimiters in any of the properties themselves.
- Some properties (e.g. gender) are represented differently, depending on the delimiter.
- Dates are represented in American format (month, day, year).

## Output  
Create and display 3 different views of the recordset.

1. Sorted by gender (females before males) then by last name ascending.
1. Sorted by birth date, ascending then by last name ascending.
1. Sorted by last name, descending.  

Ensure that fields are displayed in the following order:
- Last name
- First name
- Gender
- Date of birth (M/D/YYYY format)
- Favorite color

Example output
```
Output 1:
Hingis Martina Female 4/2/1979 Green
Kelly Sue Female 7/12/1959 Pink
Kournikova Anna Female 6/3/1975 Red
Seles Monica Female 12/2/1973 Black
Abercrombie Neil Male 2/13/1943 Tan
Bishop Timothy Male 4/23/1967 Yellow
Bonk Radek Male 6/3/1975 Green
Bouillon Francis Male 6/3/1975 Blue
Smith Steve Male 3/3/1985 Red
```
```
Output 2:
Abercrombie Neil Male 2/13/1943 Tan
Kelly Sue Female 7/12/1959 Pink
Bishop Timothy Male 4/23/1967 Yellow
Seles Monica Female 12/2/1973 Black
Bonk Radek Male 6/3/1975 Green
Bouillon Francis Male 6/3/1975 Blue
Kournikova Anna Female 6/3/1975 Red
Hingis Martina Female 4/2/1979 Green
Smith Steve Male 3/3/1985 Red
```
```
Output 3:
Smith Steve Male 3/3/1985 Red
Seles Monica Female 12/2/1973 Black
Kournikova Anna Female 6/3/1975 Red
Kelly Sue Female 7/12/1959 Pink
Hingis Martina Female 4/2/1979 Green
Bouillon Francis Male 6/3/1975 Blue
Bonk Radek Male 6/3/1975 Green
Bishop Timothy Male 4/23/1967 Yellow
Abercrombie Neil Male 2/13/1943 Tan
```
