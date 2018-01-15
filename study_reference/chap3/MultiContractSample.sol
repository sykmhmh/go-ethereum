pragma solidity ^0.4.8;

contract A {
    uint public num = 10;
    function getNum() constant returns (uint) {
        return num;
    }
}

contract B {
    A public a;
    address public addr;
    function setA(A _a) {
        a = A(_a);
        addr = _a;
    }

    function aNum() constant returns (uint) {
        return a.num();
    }

    function aGetNum() constant returns (uint) {
        return a.getNum();
    }

    function aNum2() constant returns (uint) {
        return A(addr).num();
    }
}