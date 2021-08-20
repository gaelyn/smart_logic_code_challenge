## Table of contents
[**Goal**](#goal) |
[**Input**](#input) |
[**Output**](#output) |
[**Logic**](#logic) |
[**File Setup**](#file-setup) |
[**Run Program**](#running-the-program) |
[**Tests**](#running-the-tests) |
[**Built With**](#built-with) |
[**Developer**](#developer) |

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
desired attributes. Then I created another class, `FileSorter`, that would handle loading the files,
parsing though each line to create `Person` objects, and sorting
those objects based on the given criteria.

## File Setup
- Input `.txt` files for given inputs are located in the `data` folder
- `FileSorter` and `Person` classes are located in the `lib` folder
- Tests are located in the `spec` folder
- Runner file, `sort.rb`, is located in the main directory

## Running the Program
1. Download `cooper-gaelyn` directory to local machine or clone [repository](https://github.com/gaelyn/smart_logic_code_challenge) from Github.
2. From your terminal, `cd` into main directory `cooper-gaelyn`
3. Make sure you have Ruby 2.5.3 installed
4. In terminal, run the command `ruby sort.rb`
5. When prompted you may type one of the following options:
- `gender` to see files sorted by gender, then last name.
- `date of birth` to see files sorted by date of birth, then last name.
- `last name` to see files sorted by last name in descending order.
- `all` to see all 3 options above at once.

## Running The Tests
To run tests, make sure you are in root directory and type `rspec` into terminal.

## Built With
- Ruby version 2.5.3
- Rspec

## Developer
* Gaelyn Cooper | [GitHub](https://github.com/gaelyn) | [LinkedIn](https://www.linkedin.com/in/gaelyn-cooper/)
