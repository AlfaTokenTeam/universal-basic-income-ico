pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract UniversalBasicIncome is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function UniversalBasicIncome(address _owner)  UpgradeableToken(_owner) {
    name = "UniversalBasicIncome";
    symbol = "UBI";
    totalSupply = 750000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}