---
layout: page
title: Governance
permalink: /governance/
---

## Charity Status

Litlington Pre-school is a registered charity (number 1022378). Our constition, trustees and financial reporting is registered with the [Charity Commission](https://register-of-charities.charitycommission.gov.uk/charity-search/-/charity-details/1022378/charity-overview).

## Committee

As a charity run pre-school we work alongside a voluntary committee who support us in all that we do. New committee members are always welcome, please [contact us](/contact/) if you would like to know more.

## Staff

Our staff are all qualified in the relevant Early Years qualifications and have all been in Early Years for many years.

Our staff are very supportive and caring and are always there for the children as well as the parents!

All staff are trained and certified in

* Paediatric First Aid
* Child Protection
* Safeguarding & Senco

The Manager and Deputy are also Designated Child Protection Officers and Special Educational Needs Co-Ordinators.

Staff regularly update their qualifications.

Staff and key-workers are available to talk to parents and carers at a convenient time.

In conjunction with Early Years Foundation Stage (EYFS) framework, staff have regular meetings with parents/carers to discuss their child's progress and development.

The staff are very enthusiastic and respect every child's individuality.

## Policies

{% comment %}
  Auto-generated from assets/doc so new policy PDFs need no manual edit here.
  sort_natural gives case-insensitive alphabetical order (plain `sort` is case-sensitive).
  `basename` is the filename without extension, used as-is for the visible link text.
  `uri_escape` is applied only to the href, so spaces in the filename become %20 in the
  URL but still render as spaces in the link text.
{% endcomment %}
{% assign policy_docs = site.static_files | where_exp: "f", "f.path contains '/assets/doc/'" | where_exp: "f", "f.extname == '.pdf'" | sort_natural: "name" %}
{% for doc in policy_docs %}
* [{{ doc.basename }}]({{ doc.path | relative_url | uri_escape }})
{%- endfor %}
