A bank tech test simulator
-----------------
## Specification

### Requirements

* The app should run on the command line.
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012
**And** a deposit of 2000 on 13-01-2012
**And** a withdrawal of 500 on 14-01-2012
**When** she prints her bank statement
**Then** she would see

```
date       || credit  || debit   || balance
14/01/2012 ||         || 500.00  || 2500.00
13/01/2012 || 2000.00 ||         || 3000.00
10/01/2012 || 1000.00 ||         || 1000.00
```
User Stories
-----------------
```
As a bank account holder
So that I can start using my new account
I would like to see that the opening balance is 0
```

```
As a bank account holder
So that I can keep funds on my account
I would like to be able to make deposits
```

```
As a bank account holder
So that I can use funds on my account
I would like to be able to make withdrawals
```

```
As a bank account holder
So that I can't go overdrawn
I would like to not be able to withdraw more than my current balance
```

```
As a bank account holder
So that I can monitor my cashflow
I would like my transactions to be recorded in statements
```

```
As a bank account holder
So that I now when transactions happen
I would like my transactions to have date stamps
```
