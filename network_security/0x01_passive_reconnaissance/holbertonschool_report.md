# Shodan Reconnaissance Report – holbertonschool.com

## 1. Subdomains Identified

List of all subdomains discovered with *subfinder*.

```
rails-assets.holbertonschool.com
staging-rails-assets-apply.holbertonschool.com
v3.holbertonschool.com
fr.holbertonschool.com
lvl2-discourse-staging.holbertonschool.com
help.holbertonschool.com
yriry2.holbertonschool.com
apply.holbertonschool.com
support.holbertonschool.com
v2.holbertonschool.com
v1.holbertonschool.com
blog.holbertonschool.com
staging-apply-forum.holbertonschool.com
fr.webflow.holbertonschool.com
en.fr.holbertonschool.com
read.holbertonschool.com
webflow.holbertonschool.com
staging-apply.holbertonschool.com
www.holbertonschool.com
smile2021.holbertonschool.com
```

---

## 2. IP Resolution

Mapping between subdomains and their corresponding IP addresses with *dig*.

| Subdomain                                                 | IP Address                                               |
| --------------------------------------------------------- | -------------------------------------------------------- |
| rails-assets.holbertonschool.com                          | 3.174.255.73, 3.174.255.92, 3.174.255.77, 3.174.255.32   |
| staging-rails-assets-apply.holbertonschool.com            | 3.174.255.92, 3.174.255.40, 3.174.255.115, 3.174.255.122 |
| v3.holbertonschool.com                                    | 54.89.246.137                                            |
| fr.holbertonschool.com                                    | 15.160.106.203, 15.161.34.42, 35.152.117.67              |
| lvl2-discourse-staging.holbertonschool.com                | 13.38.216.13                                             |
| help.holbertonschool.com                                  | 99.83.190.102, 75.2.70.75                                |
| yriry2.holbertonschool.com                                | 52.47.143.83                                             |
| apply.holbertonschool.com                                 | 13.39.187.93, 13.38.203.16, 15.236.177.62                |
| support.holbertonschool.com                               | 216.198.53.2, 216.198.54.2                               |
| v2.holbertonschool.com                                    | 34.203.198.145                                           |
| v1.holbertonschool.com                                    | 54.86.136.129                                            |
| blog.holbertonschool.com                                  | 192.0.78.230, 192.0.78.131                               |
| staging-apply-forum.holbertonschool.com                   | 13.38.122.220                                            |
| fr.webflow.holbertonschool.com                            | 104.17.201.193                                           |
| en.fr.holbertonschool.com                                 | 104.17.201.193                                           |
| read.holbertonschool.com                                  | 52.47.114.157, 15.236.170.88                             |
| webflow.holbertonschool.com                               | 15.160.106.203, 15.161.34.42, 35.152.117.67              |
| staging-apply.holbertonschool.com                         | 35.181.84.105, 15.236.53.167                             |
| [www.holbertonschool.com](http://www.holbertonschool.com) | 15.161.34.42, 35.152.117.67, 15.160.106.203              |
| smile2021.holbertonschool.com                             | 35.152.117.67, 15.160.106.203, 15.161.34.42              |

---

## 3. Technologies and Frameworks Detected

Technologies identified from Shodan scans of all IPs.

### rails-assets.holbertonschool.com / staging-rails-assets-apply.holbertonschool.com

**IPs:** 3.174.255.73, 3.174.255.92, 3.174.255.77, 3.174.255.32, 3.174.255.40, 3.174.255.115, 3.174.255.122

* **Domain** cloudfront.net
* **CDN:** Amazon CloudFront
* **Cloud Provider:** Amazon Web Services (AWS)
* **Cloud Service:** CloudFront Edge Network (GLOBAL)
* **Server Technology:** CloudFront HTTPD (reverse proxy)
* **Ports Exposed:** 80 (HTTP), 443 (HTTPS)
* **Frameworks:** /

---

### v3.holbertonschool.com

**IP:** 54.89.246.137

* **No result found**

---

### fr.holbertonschool.com

**IPs:** 15.160.106.203, 15.161.34.42, 35.152.117.67

* **IP 15.160.106.203**

  * **Domain** amazonaws.com, nlsfm.com
  * **CDN:** /
  * **Cloud Provider:** Amazon
  * **Cloud Service:** EC2
  * **Server Technology:** nginx (reverse proxy)
  * **Ports Exposed:** 80 (HTTP), 443 (HTTPS)
  * **Frameworks:** /

* **IP 15.161.34.42**

  * **Domain** amazonaws.com, zenrush.com
  * **CDN:** Cloudflare
  * **Cloud Provider:** Amazon
  * **Cloud Service:** EC2
  * **Server Technology:** nginx (reverse proxy)
  * **Ports Exposed:** 80 (HTTP), 81, 443 (HTTPS)
  * **Frameworks:** /

---

### lvl2-discourse-staging.holbertonschool.com

**IP:** 13.38.216.13

* **No result found**

---

### help.holbertonschool.com

**IPs:** 99.83.190.102, 75.2.70.75

* **IP 99.83.190.102**

  * **Domain** awsglobalaccelerator.com, jacksboroedc.net
  * **CDN:** /
  * **Cloud Provider:** Amazon
  * **Cloud Service:** GLOBALACCELERATOR
  * **Server Technology:** nginx (reverse proxy)
  * **Ports Exposed:** 80 (HTTP), 443 (HTTPS)
  * **Frameworks:** /

* **IP 75.2.70.75**

  * **Domain** awsglobalaccelerator.com, ifscapital.com.sg
  * **CDN:** /
  * **Cloud Provider:** Amazon
  * **Cloud Service:** GLOBALACCELERATOR
  * **Server Technology:** nginx (reverse proxy)
  * **Ports Exposed:** 80 (HTTP), 443 (HTTPS)
  * **Frameworks:** /

---

### yriry2.holbertonschool.com

**IP:** 52.47.143.83

* **Domain** amazonaws.com, holbertonschool.com
* **CDN:** /
* **Cloud Provider:** Amazon
* **Cloud Service:** EC2
* **Server Technology:** nginx (reverse proxy)
* **Ports Exposed:** 80 (HTTP), 443 (HTTPS)
* **Frameworks:** /

---

### apply.holbertonschool.com

**IPs (Shodan observed):** 13.39.187.93, 13.38.203.16

* **Domain** amazonaws.com, holbertonschool.com
* **CDN:** jsDelivr
* **Cloud Provider:** Amazon
* **Cloud Service:** EC2
* **Server Technology:** nginx (reverse proxy)
* **Ports Exposed:** 80 (HTTP), 443 (HTTPS)
* **Frameworks:** Adobe Fonts, Typekit, jQuery, Slick, Klaviyo, Ruby, Ruby on Rails

---

### support.holbertonschool.com

**IPs:** 216.198.53.2, 216.198.54.2

* **Domain** zendesk.com
* **CDN:** Cloudflare
* **Cloud Provider:** /
* **Cloud Service:** /
* **Server Technology:** /
* **Ports Exposed:** 80 (HTTP), 443 (HTTPS), 2052, 2053, 2082, 2083, 2086, 2087, 2095, 2096, 8080, 8443, 8880
* **Frameworks:** /

---

### v2.holbertonschool.com

**IP:** 34.203.198.145

* **No result found**

---

### v1.holbertonschool.com

**IP:** 54.86.136.129

* **No result found**

---

### blog.holbertonschool.com

**IPs:** 192.0.78.230, 192.0.78.131

* **IP 192.0.78.230**

  * **Domain** alejandrolira.com, amandacameronmarketing.com, automattic.com, frankfortfireny.com, infinitosucessodigital.blog, jacquelyntuxill.com, kissedbyvultures.com, kubaneubert.eu, lasallehandballcup.com, lauriebyrd.art, movie.blog, mtcga.org, munigreenfin.blog, music.blog, myadventureplan.world, mybluehost.me, myveinsvascular.blog, newfold-dev.site, newspackstaging.com, paulherseywriting.com, pawfecttrips.com, peterh6.link, porterblair.com, pscounselingmatters.blog, queencityclean.com, roseandring.com, samkriviakcounselling.ca, seanmcdonaldauthor.com
  * **CDN:** /
  * **Cloud Provider:** /
  * **Cloud Service:** /
  * **Server Technology:** HTTP/3, nginx
  * **Ports Exposed:** 80 (HTTP), 443 (HTTPS)
  * **Frameworks:** /

* **IP 192.0.78.131**

  * **Domain** allcovered.dev, arcopoesia.com, arsico.com, automattic.com, camrapenn.org, car.blog, cnhtpgl.com, code.blog, coffea.bio, daniel-roe.com, dekrachtstudio.nl, etherealcos.com, family.blog, fashion.blog, finance.blog, free123.co.uk, game.blog, giggles00.link, goodvape-shop.com, health.blog, heicreations.com, impendingbloomproject.org, jbsystech.com, justicefuneral.com, kaizencenterfranquicias.blog, velocityoption.com, yogadoorway.com
  * **CDN:** /
  * **Cloud Provider:** /
  * **Cloud Service:** /
  * **Server Technology:** HTTP/3, nginx
  * **Ports Exposed:** 80 (HTTP), 443 (HTTPS)
  * **Frameworks:** /

---

### staging-apply-forum.holbertonschool.com

**IP:** 13.38.122.220

* **No result found**

---

### fr.webflow.holbertonschool.com / en.fr.holbertonschool.com

**IP:** 104.17.201.193

* **Domain** weglot.com, zoom.us
* **CDN:** Cloudflare
* **Cloud Provider:** /
* **Cloud Service:** /
* **Server Technology:** HSTS (security), HTTP/3
* **Ports Exposed:** 80 (HTTP), 443 (HTTPS), 2052, 2053, 2082, 2083, 2086, 2087, 2095, 2096, 8080, 8443, 8880
* **Frameworks:** /

---

### read.holbertonschool.com

**IPs:** 52.47.114.157, 15.236.170.88

* **IP 52.47.114.157**

  * **Domain** amazonaws.com, holbertonschool.com
  * **CDN:** /
  * **Cloud Provider:** Amazon
  * **Cloud Service:** EC2
  * **Server Technology:** nginx (reverse proxy)
  * **Ports Exposed:** 80 (HTTP), 443 (HTTPS)
  * **Frameworks:** /

* **IP 15.236.170.88**

  * **Domain** amazonaws.com
  * **CDN:** /
  * **Cloud Provider:** Amazon
  * **Cloud Service:** EC2
  * **Server Technology:** nginx (reverse proxy)
  * **Ports Exposed:** 80 (HTTP)
  * **Frameworks:** /

---

### webflow.holbertonschool.com / [www.holbertonschool.com](http://www.holbertonschool.com) / smile2021.holbertonschool.com

**IPs:** 15.160.106.203, 15.161.34.42, 35.152.117.67

* **IP 15.160.106.203**

  * **Domain** amazonaws.com, nlsfm.com
  * **CDN:** /
  * **Cloud Provider:** Amazon
  * **Cloud Service:** EC2
  * **Server Technology:** nginx (reverse proxy)
  * **Ports Exposed:** 80 (HTTP), 443 (HTTPS)
  * **Frameworks:** /

* **IPs 15.161.34.42, 35.152.117.67**

  * **Domain** amazonaws.com, thatcleanlife.com
  * **CDN:** /
  * **Cloud Provider:** Amazon
  * **Cloud Service:** EC2
  * **Server Technology:** nginx (reverse proxy)
  * **Ports Exposed:** 80 (HTTP), 81, 443 (HTTPS)
  * **Frameworks:** /

---

### staging-apply.holbertonschool.com

**IPs:** 35.181.84.105, 15.236.53.167

* **Domain** amazonaws.com, holbertonschool.com
* **CDN:** /
* **Cloud Provider:** Amazon
* **Cloud Service:** EC2
* **Server Technology:** nginx (reverse proxy)
* **Ports Exposed:** 80 (HTTP), 443 (HTTPS)
* **Frameworks:** /

---

## 4. Summary Notes

* The holbertonschool.com infrastructure relies heavily on **Amazon Web Services (AWS)** including CloudFront, EC2, Elastic Beanstalk, and AWS Global Accelerator.
* Many subdomains are served through **CDNs** such as **Amazon CloudFront**, **Cloudflare**, and **jsDelivr**, indicating a distributed and performance-optimized architecture.
* Several services use **reverse proxies (nginx)**, which hide backend infrastructure from direct exposure.
* Some subdomains use **external SaaS providers**, including:

  * **Zendesk** for customer support
  * **WordPress.com / Automattic** for the blog
  * **Webflow** and **Weglot** for marketing and multilingual content
* Most publicly exposed servers only provide standard ports **80 and 443**, limiting the external attack surface.
* No backend frameworks are directly exposed except on a few subdomains (e.g., Rails on apply.holbertonschool.com).
* Overall, the infrastructure demonstrates a **cloud-native architecture**, well-distributed and partially protected by CDN/WAF layers depending on the subdomain.
