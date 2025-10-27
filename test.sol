// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;
contract HelloWeb3{
    string public _string = "Hello Web3!";
    bool public _bool = true;
    bool public _bool1 = !_bool;
    bool public _bool2 = _bool && !_bool;
    bool public _bool3 = _bool || !_bool;
    bool public _bool4 = _bool == !_bool;
    bool public _bool5 = _bool != !_bool;
    int public _int = -1;
    uint public _uint = 1;
    uint256 public _number = 20251013;
    uint256 public _number1 = _number + 1;
    uint256 public _number2 = 2**2;
    uint256 public _number3 = 7 % 2;
    bool public _numberbool = _number2 > _number3;
    address public _address = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    address payable public _address1 = payable(_address);
    uint256 public balance = _address1.balance;

    bytes32 public _bytes32 = "MiniSolidity";
    bytes1 public _bytes1 = _bytes32[0];

    enum ActionSet {Buy, Hold, Sell}
    ActionSet action = ActionSet.Buy;

    function enumToUint() external view returns(uint){
        return uint(action);
    }
    
}