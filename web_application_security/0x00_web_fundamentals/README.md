# Web Fundamentals – Initial Reconnaissance

## Context

This project focuses on the initial reconnaissance and analysis of a web application provided as part of the *Web Application Security Module*.  
The objective of this phase is to understand the application behavior, identify exposed endpoints, and document observable security-relevant information before any exploitation.

---

## Environment Setup

After connecting to the target network through OpenVPN and obtaining the target machine IP address, local DNS resolution was configured by appending the following entry to the `/etc/hosts` file:

```

<TARGET_IP> web0x00.hbtn

```

This allows accessing the application using its intended domain name instead of the raw IP address.

The main entry point provided is:

```

http://web0x00.hbtn/login

````

---

## Application Navigation Observations

Initial requests were performed using `curl` to observe server-side behavior:

- A request to `http://web0x00.hbtn` results in an HTTP redirection to `/home`.
- A request to `http://web0x00.hbtn/home` results in another redirection to `/login`.
- A request to `http://web0x00.hbtn/login` returns a publicly accessible HTML login page.

This indicates that access to the `/home` endpoint requires authentication.

---

## Identified Endpoints

During the reconnaissance phase, the following endpoints were identified:

- `/login`
- `/reset_password`

Both endpoints are accessible without authentication.

---

## HTML Source Code Observations

### Information Disclosure via HTML Comments

Multiple HTML comments were found in production pages.

At the top of the pages, the following comment discloses internal information:

```html
<!-- 
Proudly made by Campusna Sec Team:
    Yosri <yosri@web0x00.hbtn>
    Maroua <maroua@web0x00.hbtn>
    Abdou <abdou@web0x00.hbtn>
-->
````

Additionally, the `/reset_password` page contains the following comment:

```html
<!--
Last Modification made by: yosri
Don't forget to delete comments before production
-->
```

These comments suggest that development artifacts were left in the production environment and disclose internal naming and email conventions.

---

## Form Observations

### Login Page (`/login`)

* Uses the `POST` method
* Accepts `username` and `password` fields
* No client-side security mechanism (such as CSRF tokens) is visible in the HTML
* Input fields have `autocomplete="true"`

### Reset Password Page (`/reset_password`)

* Uses the `POST` method
* Accepts an `email` field
* Endpoint is accessible without authentication
* No visible client-side protection mechanisms are present

---

## URL Handling

The application uses absolute URLs in HTML links, for example:

```html
<a href="http://web0x00.hbtn/reset_password">
<a href="http://web0x00.hbtn/login">
```

This shows an explicit dependency on the configured domain name.

---

## HTTP Headers Review

The following observations were made from HTTP responses:

### Observed Headers

* `Server: nginx/1.18.0`
* `Content-Type: text/html; charset=utf-8`
* `Referrer-Policy: strict-origin-when-cross-origin`

### Missing Common Security Headers

The following headers were not observed:

* `Strict-Transport-Security` (HSTS)
* `Content-Security-Policy` (CSP)
* `X-Frame-Options`
* `X-Content-Type-Options`
* `Permissions-Policy`
* CORS-related headers (`Access-Control-Allow-*`)

---

## Cookie Behavior Observation

When submitting an email address on the `/reset_password` endpoint, the server responds with the following header:

```http
Set-Cookie: session=; Expires=Thu, 01 Jan 1970 00:00:00 GMT; Max-Age=0; Path=/
```

This indicates that a cookie named `session` is explicitly invalidated.
No active session cookie was observed at this stage.

---

## Summary

This reconnaissance phase allowed the identification of publicly accessible endpoints, application flow through redirections, exposed HTML comments, and HTTP header configuration.
All observations were made without authentication and without altering the application state beyond normal user interaction.
