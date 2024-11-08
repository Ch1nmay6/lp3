// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentRegistration {

    struct Student {
        string Name;
        uint Age;
        string Course;
    }

    Student [] public students;

    fallback() external { 
        revert("Function is Not Defined");
    }

    function addStudent(string memory _Name, uint _Age, string memory _Coures) public {
        Student memory newStudent = Student({
            Name: _Name,
            Age: _Age,
            Course: _Coures
        });
        students.push(newStudent);
    }

    function getStudent(uint index) public view returns (string memory, uint, string memory) {
        Student memory student = students[index];
        return (student.Name, student.Age, student.Course);
    }

    function getTotal() public view returns (uint){
        return students.length;
    }
}