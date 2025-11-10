//SPDX-License-Identifier:MIT

pragma solidity ^0.8.18;

interface AggregatorV3Interface {
  function decimals() external view returns (uint8);
  function description() external view returns (string memory);
  function version() external view returns (uint256);
  function latestRoundData()
    external
    view
    returns (
      uint80 roundId,
      int256 answer,
      uint256 startedAt,
      uint256 updatedAt,
      uint80 answeredInRound
    );
  function getRoundData(uint80 _roundId)
    external
    view
    returns (
      uint80 roundId,
      int256 answer,
      uint256 startedAt,
      uint256 updatedAt,
      uint80 answeredInRound
    );
}

//contract Fundme{   
    //send funds to our contract
    //function fund() public payable {//mark payable as it would need to receive funds across people 
        //Allow users to send money and set min amount 
        //require(msg.value > 1e18,"Didn't send enough ETH");//check if user is sending less than 1 eth and display a message 
    //}

    //owner can withdraw fund to his account 
    //function withdraw() public{}
//}

contract FundMe2{

    uint256 public minimumUsd = 5 ;

    function fund() public payable {
        require(msg.value>= minimumUsd,"didnt send enough money");

    }

    function getPrice() public {
        //Address 0x694AA1769357215DE4FAC081bf1f309aDC325306
        //ABI 
    }
    function getConversionRate() public view returns (uint256){
        return AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306).version();
    }
}