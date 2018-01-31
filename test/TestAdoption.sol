pragma solidity ^0.4.17;

import "truffle/Assert.sol";
import "truffle/DeployedAdresses.sol";
import "../contracts/Adoption.sol";

contract TestAdoption {
  Adoption adoption = Adoption(DeployedAddresses.Adoption()); 

  function testUserCanAdoptPet() public {
    uint returnedId = adoption.adopt(8);

    uint expected = 8;

    Assert.equal(returnId, expected, "Adoption of pet ID 8 should be recorded.");
  }
}
