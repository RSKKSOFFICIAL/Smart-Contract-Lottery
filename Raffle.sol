// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


/**
 * @title Raffle
 * @author Ravi Shankar Kumar
 * @notice This contract implements a simple raffle system.
 * @dev Implements ChainLink VRFv2.5
 */

contract Raffle {
    /** Errors */
    error Raffle__SendMoreToEnterRaffle();

    uint256 private immutable i_entranceFee;
    // @dev interval is the time between two raffle draws in seconds
    uint256 private immutable i_interval;
    // @dev players are the addresses of the players who have entered the raffle
    address payable[] private s_players;
    // @dev lastTimeStamp is the time of the last raffle draw
    uint256 private s_lastTimeStamp;

    

    /** Events */
    event RaffleEnterd(address indexed player);

    constructor(uint256 entranceFee, uint256 interval) {
        i_entranceFee = entranceFee;
        i_interval = interval;
        s_lastTimeStamp = block.timestamp;
        
    }

    function enterRaffle() external payable {
        // require(msg.value >= i_entranceFee, "Not enough ETH to enter the raffle!");
        if(msg.value >= i_entranceFee){
            revert Raffle__SendMoreToEnterRaffle();
        }
        s_players.push(payable(msg.sender));
        emit RaffleEnterd(msg.sender);
    }

    function pickWinner() external {
        //check to see if enough time has passed
        if(block.timestamp - s_lastTimeStamp) > i_interval{
            revert();
        }
        // Get our random number 
    }


    /** Getter function */
    function getEntranceFee() external view returns (uint256) {
        return i_entranceFee;
    }
}
