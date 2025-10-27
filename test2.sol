// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;
contract Test2 {
    constructor() payable {}
    uint256 public number = 5;
    // 可修改和读取
    function addNumber() external {
        number = number + 1;
    }
    // 不可修改和读取合约中的状态
    function addPure(uint256 _number) external pure returns(uint256 new_number){
        new_number = _number + 1;
    }
    // 只可查看
    function addView() external view returns(uint256 new_number){
        new_number = number + 1;
    }

    // external vs internal
    function minus() internal {
        number = number - 1;
    }
    function minusCall() external {
        minus();
    }
    function minusPayable() external payable returns(uint256 balance){
        minus();
        balance = address(this).balance;
    }
}