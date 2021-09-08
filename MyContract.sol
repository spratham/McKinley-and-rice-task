pragma solidity ^0.7.4;

contract MyToken {
   address public minter; // creating a variable address type
   mapping ( address =>uint) public balances;  // To keep track of every addresses balance
   constructor()  {   //this will trigger when the contract will initially deploy
   minter=msg.sender;
   }
   function mint(address receiver, uint amount) public {
       require(msg.sender == minter); // if there is someone who is not the minter and try to mint then none of the code will executed
       balances[receiver] += amount;  // Initially everones balance would be 0 sohere we increase the balance by of amount we are minting
   }