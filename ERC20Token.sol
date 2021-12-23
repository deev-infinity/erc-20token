pragma solidity ^0.8.0;

import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol';
import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol';

contract KgCoin is ERC20, Ownable {

    constructor() ERC20('KgCoin', 'KGC') {
        _mint(msg.sender, 1000000 * 10 ** 18);
    }

    function mint(address _to, uint _amount) external onlyOwner {
        _mint(_to, _amount);
    }

    function burn(uint _amount) external onlyOwner {
        _burn(owner(), _amount);
    }
}
