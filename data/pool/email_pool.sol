// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract EmailRegistry {
    mapping(string => string[]) private emailsByDomain;
    mapping(string => string[]) private emailsForSending;


    function saveEmailsBasedOnDomain(string memory domain, string memory email) public {
        emailsByDomain[domain].push(email);
    }

    function getEmailsByDomain(string memory domain) public view returns (string[] memory) {
        return emailsByDomain[domain];
    }

    function deleteEmailsBasedOnDomain(string memory domain) public {
        delete emailsByDomain[domain];
    }

    function sendEmailsBasedOnDomain(string memory domain, string memory email) public {    
        emailsForSending[domain].push(email);
    }
}
