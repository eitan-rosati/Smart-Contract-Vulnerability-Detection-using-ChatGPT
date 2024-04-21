pragma solidity ^0.4.24;

contract Proxy {

  address owner;

  constructor() public {
    owner = msg.sender;
  }

  function forward(address callee, bytes _data) public {
    require(callee.delegatecall(_data)); //Use delegatecall with caution and make sure to never call into untrusted contracts
  }

}
