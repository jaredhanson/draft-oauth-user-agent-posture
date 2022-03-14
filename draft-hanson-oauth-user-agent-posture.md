---
title: OAuth 2.0 User Agent Posture Signals
category: info

docname: draft-hanson-oauth-user-agent-posture-latest
v: 3
area: Security
workgroup: Web Authorization Protocol

author:
  -
    fullname: Jared Hanson
    organization: Okta
    email: jared.hanson@okta.com


--- abstract

OAuth 2.0 authorization servers typically determine authorization only at the
time of interacting with the resource owner.  This authorization results in an
ongoing session in which protected resources may be accessed over a period of
hours or even days.  Increasingly however, authorization of a session needs to
be based on dynamic data such as IP address or browser version.  This document
details how web applications and resource servers can communicate user agent
posture signals to authorization servers.


--- middle

# Introduction

OAuth 2.0 {{!RFC6749}} authorization servers typically determine authorization
only at the time of interacting with the resource owner.  This authorization
results in an ongoing session in which protected resources may be accessed over
a period of hours or even days.  Increasingly however, authorization of a
session needs to be based on dynamic data such as IP address or browser version.

This document details how web applications and resource servers can communicate
user agent posture signals to authorization servers via the OAuth 2.0 Token
Endpoint and Introspection Endpoint {{!RFC7662}}.  These signals enable an
authorization server to enforce policy compliance "in-band" of an existing
session, rather than enforcement only at the time of session initiation via the
Authorization Endpoint.

# Notational Conventions

{::boilerplate bcp14-tagged}

# User Agent Posture Signal Dictionary

The user agent posture is a dictionary of signals asserted by the web
application or resource server about the user agent.  The structure is sent as
an added parameter in several places during the OAuth flow, as documented in the
subsequent sections.

All user agent posture keys are OPTIONAL and MUST only be set when the attribute
can be obtained by the web application or resource server.  The standard
attribute keys are as follows:

user_agent
: String.  The value of the "User-Agent" header field sent by the user agent
originating the request.

ip_address
: String.  The originating IP address of the client.

An example device posture dictionary:

{
    "user_agent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36",
    "ip_address": "93.184.216.34"
}

# Security Considerations

TODO Security


# IANA Considerations

This document has no IANA actions.


--- back

# Acknowledgments
{:numbered="false"}

TODO acknowledge.