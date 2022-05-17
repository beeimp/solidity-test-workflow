// SPDX-License-Identifier: GPL-3.0

// 열거형.

pragma solidity >=0.7.0 <0.9.0;

contract EnumLanguage {
    enum Languages {No, Korean, English}
    Languages private myLanguage;
  
    function pickKorean() public {
        myLanguage = Languages.Korean;
    }

    function pickEnglish() public {
        myLanguage = Languages.English;
    }

    function getLanguage() public view returns (string memory) {
        if (myLanguage == Languages.Korean ) {return "Korean";}
        else if (myLanguage == Languages.English ) {return "English";}
        else {return "No Language";}
    } 
}