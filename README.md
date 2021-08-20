## Goal
Parse through the 3 input `.txt` files to produce the desired output.

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

## Logic
In order to demonstrate OOP, my logic was to have one class that would take
information from each line in the input files and create a `Person` object with
desired attributes. Then create another class that would handle loading the files,
parsing though each line, and generating those `Person` objects, and then sort
those objects based on the given criteria.

## Testing
Unit tested with Rspec.  
To run tests, type `rspec` into terminal.

## Run Program
1. Open directory file on local machine or clone [repository](https://github.com/gaelyn/smart_logic_code_challenge) from Github.
2. `cd` into `smart_logic` directory
3. In terminal run the command `ruby sort.rb`
4. When prompted you may type on of the following options:
- `gender` to see files sorted by gender, then last name.
- `date of birth` to see files sorted by date of birth, then last name.
- `last name` to see files sorted by last name in descending order.
- `all` to see all 3 options above at once.
