# ExchangeSnooper
I threw this short script together to ease the phishing incident response process. If an attacker is able to successfully deliver phishing emails to several employees this script allows me to search for and delete them. I plan to add additional features in the future but this will do for now.

I am very inexperienced with Powershell so please contribute if you have any ideas. I love learning from those who have better ideas than myself.

# Requirements
Active Directory account with the following roles:
- Mail Recipients - https://technet.microsoft.com/en-us/library/dd876911(v=exchg.150).aspx
- Mailbox Search - https://technet.microsoft.com/en-us/library/dd876958(v=exchg.150).aspx
- Mailbox Import Export (If running Exchange 2010) - https://technet.microsoft.com/en-us/library/ee633452(v=exchg.141).aspx

PC or Server with Exchange Management Shell installed.
