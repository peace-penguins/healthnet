pragma solidity ^0.5.0;

contract Healthnet {
  uint public patientCount = 0;
  uint public hospitalCount = 0;
  uint public insurerCount = 0;
  uint public recordCount = 0;

  struct PatientData {
    string name;
    string dob;
    uint phone;
    string email;
  }

  struct HospitalData {
    string name;
    string code;
  }

  struct InsurerData {
    string name;
    string code;
  }

  struct RecordData {

  }
  struct AtData {
    uint id;
    string name;
    address studAddress;
    string date;
  }

  mapping(uint => AtData) public atlist;

  event AttendanceMarked(
    uint id,
    string name,
    address studAddress,
    string date
  );

  constructor() public {
    // Can make the constructor do something here.
  }

  function markPresent(string memory _name, string memory _date) public {
    address studAddress = msg.sender;
    studCount ++;
    atlist[studCount] = AtData(studCount, _name, studAddress, _date);
    emit AttendanceMarked(studCount, _name, studAddress, _date);
  }

}
