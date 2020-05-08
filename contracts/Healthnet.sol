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
    uint firstRecord;
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
    uint patientNumber;
    string recordText;
    string dateTime;
    uint hospitalNumber;
    uint next;
    uint approved;
  }

  mapping(uint => PatientData) public patientList;
  mapping(uint => HospitalData) public hospitalList;
  mapping(uint => InsurerData) public insurerList;

  event NewRecord(
    uint patientNumber,
    string recordText,
    string dateTime
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
