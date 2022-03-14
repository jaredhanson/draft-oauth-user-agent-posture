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

OAuth 2.0 authorization servers typically determine authorization only at the
time of interacting with the resource owner.  This authorization results in an
ongoing session in which protected resources may be accessed over a period of
hours or even days.  Increasingly however, authorization of a session needs to
be based on dynamic data such as IP address or browser version.

This document details how web applications and resource servers can communicate
user agent posture signals to authorization servers via the OAuth 2.0 Token
Endpoint and Introspection Endpoint.  These signals enable an authorization
server to enforce policy compliance "in-band" of an existing session, rather
than enforcement only at the time of session initiation via the Authorization
Endpoint.

# Notational Conventions

{::boilerplate bcp14-tagged}


# Security Considerations

TODO Security


# IANA Considerations

This document has no IANA actions.


--- back

# Acknowledgments
{:numbered="false"}

TODO acknowledge.