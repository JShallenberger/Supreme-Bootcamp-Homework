### Protecting VSI from Future Attacks ###

**Part 1:**

Windows Server AttackNote: This is a public-facing windows server that VSI employees access.

Question 1

Several users were impacted during the attack on March 25th.

- Mar 25, 2020 11:40am to 2:40am: "a user account was locked out."  user_a was affected.

![image1](images/image1.png)

- Mar 25, 2020 9:00am to 11:00am: "An attempt was made to reset an account’s password." user_k was affected.

![image2](images/image2.png)

Based on the attack signatures, what mitigations would you recommend to protect each user account? 

- Provide global mitigations that the whole company can use and individual mitigations that are specific to each user.
Proper `Account Lockout Policy` setting is needed. To allow for user error and to thwart brute force attacks, Windows security baselines recommend a value of 10 could be an acceptable starting point for your organization.

Question 2 

VSI has insider information that JobeCorp attempted to target users by sending "Bad Logins" to lock out every user.

What sort of mitigation could you use to protect against this?

- Prevent a brute force attack
    - Account Lockouts with progressive delays after failed attempts
    - Make the root user inaccessible via SSH by editing the sshd_config file
    - Limit logins to a specified IP address or range
    - Employ 2-Factor Authentication (2FA)
    - Use unique login URLs
    - Create alerts with specific thresholds

**Part 2:**

 Apache Webserver Attack
 Question 1
 
 Based on the geographic map, recommend a firewall rule that the networking team should implement.
 
 Provide a "plain english" description of the rule. 
 
 Provide a screen shot of the geographic map that justifies why you created this rule.
 
 ```
 source="apache_attack_logs.txt" | iplocation clientip | top limit=10 Country
 ```
 
 Excluding source IPs from the United States, the large amount of  source IP addresses were from Kiev (872), Kharkiv (432) and Lvov (5), total 1309 IPs from above mentioned three cities in Ukraine.
 
 The mitigation method could be blocking all incoming HTTP traffic from Ukraine in firewall security policy settings.

 ![image3](images/image3.png)

 ![image4](images/image4.png)

Question 2
VSI has insider information that JobeCorp will launch the same webserver attack but use a different IP each time in order to avoid being stopped by the rule you just created.

What other rules can you create to protect VSI from attacks against your webserver?
 - Conceive of two more rules in "plain english".
 - Hint: Look for other fields that indicate the attacker

Based on the different HTTP methods, we can find the POST method was used 1296 times on Mar 25, 2020 7:00pm – 9:00pm. The post URI is /VSI_Account_logon.php. I suggest using following two mitigation strategy. 

1. Account lockouts with progressive delays 
    - It locks an account only for a set amount of times after a designated number of unsuccessful login attempts, such as 10 times.

2. Employ 2-Factor Authentication (2FA)
    - Two-factor authentication is considered by many to be the first line of defense against brute force attacks. Implementing such a solution greatly reduces the risk of a potential data breach.