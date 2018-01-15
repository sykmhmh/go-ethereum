pragma solidity ^0.4.8;

contract A {
    uint public a;
    function setA(uint _a) {
        a = _a;
    }

    function getData() constant returns (uint) {
        return a;
    }
}

contract B is A {
    function getData() constant returns (uint) {
        return a * 10;
    }
}

contract C {
    A[] public c;

    function makeContract() {
        c.length = 2;
        A a = new A();
        a.setA(1);
        c[0] = a;
        B b = new B();
        c[1] = b;
    }

    function getData() constant returns (uint, uint) {
        if (c.length == 2) {
            return (c[0].getData(), c[1].getData());
        }
    }
}