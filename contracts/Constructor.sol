// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract X {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }
}

contract Y {
    string public text;

    constructor(string memory _text) {
        text = _text;
    }
}

// 2 ways to intialize parent contract with parameters

contract B is X("NAME"), Y("TEXT") {

}

contract C is X,Y {
    constructor(string memory _name, string memory _text) X(_name) Y(_text) {}
}
