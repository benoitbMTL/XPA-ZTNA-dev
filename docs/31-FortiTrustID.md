# FortiTrustID

FortiTrustID is a service that encompasses FortiAuthenticator Cloud and FortiToken Cloud

It provides functionality similar to FortiAuthenticator VM or hardware. Refer to the [latest Release Notes document](https://docs.fortinet.com/document/fortitrust-id/latest/fortitrust-identity-23-3-a-release-notes/577670/limitations-of-fortiauthenticator-cloud) (v23.3.a, currently) for limitations

> Please note FortiAuthenticator Cloud **does not** exist as a standalone product!

## Impossible Travel Detection

During this lab we will go through the experience of a user that logs into a FortiGate from Canada and, shortly after, attempts to login from Japan

> Any further logins would be detected if speed of transit is above 500 miles per hour

- Open an InPrivate/Incognito and type **"What's my IP"** in the address bar



- Now on a new InPrivate/Incognito tab, select bookmark **"FGT US-East"**
- You'll be redirected to FortiTrustID
- If you see screen below, accept the certificate error by selecting **"Advanced"** and then **"Continue to 18.222.156.182 (unsafe)"**

![FortiTrustID Logon](./images/ftid_fg_cert_error.png)

- Enter your pod credentials (e.g.: student08) and click **Login**

![FortiTrustID Logon](./images/ftid_logon_screen.png)

- You'll be asked for an OTP code, however, we're <u>bypassing it for this lab</u>. Please input any random numbers and click **"Login"**

![FortiTrustID OTP](./images/ftid_otp.png)

- Once you're logged in, if you see the screen below, click **"Continue"** 

![FortiGate SSO User Account](./images/ftid_fgt_user_profile.png)

- If you see screen below, click **"Begin"**

![FortiGate SSO User Account](./images/ftid_fgt_setup.png)

- In the next screen select **"Comprehensive"** and then **OK**

![FortiGate SSO User Account](./images/ftid_fgt_dashboard.png)

- If a the "What's New" video shows next, select **"Don't show again"**

![FortiGate SSO User Account](./images/ftid_fgt_video.png)

- Observe on the **top right-hand side** of the screen that you're logged in via SSO with your student ID

![FortiGate SSO User Account](./images/ftid_fgt_logged_in.png)

<br>

> Authentication is using SAML against FortiTrustID and your source IP shows "Canada" in FortiToken Cloud (FTC)
>
> ![FortiTrustID Source IP](./images/ftid_ip_CA.png)

> All adaptive authentication, which includes "Impossible Travel", is handled by FortiToken Cloud

- Logout from the FortiGate by selecting logout in the **top right-hand side** dropdown menu under your user ID.

![FortiGate Logout](./images/ftid_fgt_logout.png)

![FortiTrustID Logout](./images/ftid_logout.png)



- Close the tab and open the **FortiClient** console 
- Go to **"Remote Access"** and enter the VPN credentials (i.e.: xperts/F0rtinet!) and click **"Connect"**

![FortiGate SSO User Account](./images/fct_vpn.png)

> By establishing the VPN, you're now in Japan!



- We will repeat the previous steps
- Open an InPrivate/Incognito tab and select bookmark **"FGT US-East"**
- Enter your pod credentials (e.g.: student08) and click **Login**

![FortiTrustID Logon](./images/ftid_logon_screen.png)

- Send a random OTP code, however, we're <u>bypassing it for this lab</u>. Please input any random numbers and click **"Login"**

![FortiTrustID OTP](./images/ftid_otp.png)

- This time you get an error when trying to log in

![FortiGate SSO User Account](./images/ftid_login_error.png)

