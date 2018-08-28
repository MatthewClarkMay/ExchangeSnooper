# ExchangeSnooper
I threw this short script together to ease the phishing incident response process. If an attacker is able to successfully deliver phishing emails to several employees this script allows me to search for and delete them.

I never finished it... I discovered other means by which to achieve this goal in my environment with products we already owned, but it was fun playing with it and learning about some of these PS cmdlets.

# Requirements
Active Directory account with the following roles:
- Mail Recipients - https://technet.microsoft.com/en-us/library/dd876911(v=exchg.150).aspx
- Mailbox Search - https://technet.microsoft.com/en-us/library/dd876958(v=exchg.150).aspx
- Mailbox Import Export - https://technet.microsoft.com/en-us/library/ee633452(v=exchg.141).aspx

PC or Server with Exchange Management Shell installed.
