# Desk Utils

A collection of scripts I made to help with common tasks like file organization or backup.

## Features
- Crafted to work with bash and use its power.
- Composable script utilities.
- Follows the UNIX philosophy, as each utility is self contained and responsible for a specific task.

## TODO

<ul>
    <li>
        <p>
            <s>Implement file organization.</s>
        </p>
    </li>
    <li>
        <p>
            <s>Implement file backups.</s>
        </p>
    </li>
    <li>
        <p>Improve .{ext} removal from filename.</p>
    </li>
    <li>
        <p>Check for folder existence before trying to generate backup of it.</p>
    </li>
    <li>
        <p>
            <s>Implement tests for fsort</s>
        </p>
    </li>
    <li>
        <p>Implement tests for fbkp</p>
    </li>
    <li>
        <p>Implement versioning strategy and lauch first version.</p>
    </li>
</ul>

## Tests

This project has tests to ensure correct behavior of the algorithm. Below is explained the stategy adopted for the tests and how to run them, along with how the files are structed.

### File Structures

The tests are organized in a separate file for each script in the src directory. For example, the fsort tests are implemented in the tests/fsort_tests.sh file. In the same directory there is a utils.sh file which contains utils strictly related to the tests, like setups and some reusable functions.

### Strategy

The strategy defines that a tests subject is categorized under a common category like Libreoffice or Images files. This means that each test case is grouped with another test cases which are both under the same category. For example, in the fsort_tests.sh file, there is a function which is responsible to describe tests related to the Libreoffice category, which include files used in Writer, Calc and Impress softwares. It is applied a loggin strategy to help identify which category and subcategory are being tested. An example of category is the already mentioned Libreoffice and the subcategories are the files of Writer, Calc and Impress respectively.

### How to run the tests

To run the tests, first is necessary to put the src directory in your path, because the tests expects that it can run from anywhere. Secondly, you need to enter the tests directory and run directly in your terminal the desired script with the tests. Below is an example.

> For this example, it is considered that the src is in the path, furthermore, the tests are run using the bash environment

In the root directory of this project:
```bash
cd tests # Go inside the tests folder
```

Inside the tests directory:
```bash
./fsort_tests.sh # Runs the tests related to the fsort algorithm
```

> As a reminder, check if the script have the necessary file execution permissions if you are running them under a *unix system.

### Test Coverage
- Fsort
    - File sorting based on extension
    - Filename duplicates handling