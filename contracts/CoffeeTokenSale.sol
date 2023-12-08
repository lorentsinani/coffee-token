// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

interface IERC20 {
    function transfer(address to, uint256 amount) external;

    function decimals() external view returns (uint256);
}

contract TokenSale {
    uint256 public tokenPriceInWei = 1 ether;

    IERC20 public token;
    address public tokenOwner;

    constructor(address _token) {
        tokenOwner = msg.sender;
        token = IERC20(_token);
    }

    function purchaseACoffee() public payable {
        require(msg.value >= tokenPriceInWei, "Not enough money sent");

        uint256 tokensToTransfer = msg.value / tokenPriceInWei;
        uint256 remainder = msg.value - tokensToTransfer * tokenPriceInWei;

        token.transfer(msg.sender, tokensToTransfer * 10**token.decimals());

        payable(msg.sender).transfer(remainder); //send the rest back
    }
}
