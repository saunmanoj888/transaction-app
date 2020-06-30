# README

1. Devise gem setup

2. set up database

3. Scaffold Account. Also set association User has many Accounts

rails g scaffold accounts account_number:string bank_name:string ifsc_code:string balance:integer user:belongs_to

http://localhost:3000/accounts

4. Sacffold Beneficiary

rails g scaffold beneficiaries account_number:string nick_name:string ifsc_code:string user:belongs_to

http://localhost:3000/beneficiaries

5. create Transaction

rails g scaffold transactions amount:integer reason:string user:belongs_to beneficiary:belongs_to account:belongs_to

http://localhost:3000/transactions