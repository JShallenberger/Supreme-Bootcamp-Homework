### Unit 15 Homework
 
**Web Application 1: Your Wish is My Command Injection**

Deliverable:

![injection1](injection1) 
 
Best way to prevent a command injection is to avoid system calls and user input. A strong input validation will need to be performed, validating against a whitelist of pre-approved inputs and use only secure APIs.


**Web Application 2: A Brute Force to Be Reckoned With**

Deliverable: 

![brute_force1](brute_force1)
 
One method to mitigate against a brute force attack is to set a number of incorrect logins attempts and have to account locked out. You can also prevent login attempts from known and unknown browsers and devices by using device cookies as an authenticator.


**Web Application 3: Where's the BeEF?** 

Deliverable:

![beef1](beef1)
 
Web Application firewalls can used to detect a XSS attack in real time. Another way is to implement a content security policy into the web browser. 

``` 
Content-Security-Policy: <policy-directive>; <policy-directive>
```