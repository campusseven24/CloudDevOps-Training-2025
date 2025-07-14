classDiagram
direction BT
class ConstructorMain {
  + ConstructorMain() 
  + main(String[]) void
}
class CustomAccount {
  ~ CustomAccount(String, String, long) 
  ~ long balance
  ~ String ownerName
  ~ String accountNumber
  ~ printInfo() void
}
class FlexibleAccount {
  ~ FlexibleAccount(String, String, long) 
  ~ FlexibleAccount() 
  ~ String ownerName
  ~ long balance
  ~ String accountNumber
  ~ setAccountInfo(String, String, long) void
  ~ printInfo() void
}
class SimpleAccount {
  + SimpleAccount() 
  ~ String ownerName
  ~ long balance
  ~ String accountNumber
  ~ printInfo() void
}

ConstructorMain  ..>  CustomAccount : «create»
ConstructorMain  ..>  FlexibleAccount : «create»
ConstructorMain  ..>  SimpleAccount : «create»
