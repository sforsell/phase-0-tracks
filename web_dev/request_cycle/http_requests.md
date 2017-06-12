## Common HTTP status codes

* 100's = informational codes
* 200's = success codes
* 300's = redirection codes
* 400's = client error codes
* 500's = server error codes

* 200 ok - succeeded
* 300 multiple choices - request cannot be resolved into one. 
* 301 moved permanently - is at a new permanent URI and client should use a returned URI. 
* 302 found - resource is at a temporary URI but the request found it
* 304 not modified - access is allowed but the resource has not been changed. this is used to update local cache information without sending full http requests minimizing the transmission of information that the client already has. 
* 307 temporary redirect - the file is at a different URI, but the request should continue to use the request-URI as the redirect URI can change. 
* 400 bad request - could not be understood by server because of bad syntax
* 401 Unauthorized - the request requires user authentication
* 403 forbidden - server understood request but refusing to fulfill it
* 404 Not found - did not find anything matching the request
* 410 gone - the resource is no longer available and a forwarding address is not available. 
* 500 internal server error - unexpected condition prevented server from fulfilling request
* 501 not implemented - server does not support functionality/ does not recognize request method
* 503 service unavailable - server unable to handle request at the time. Could be for many reasons, most common ones being: server crash, server maintenance, server overload, server maliciously being attacked, a site has used up its allotted bandwidth or server may be forbidden to return requested document. Usually a temporary condition. 
* 550 permission denied - the account does not have permission to perform te request. 

## Difference between GET request and POST request

GET requests data, can be cached, remains in the browser history, can be bookmarked, have length restrictions, should only be used to retrieve data and should never be used when dealing with sensitive data. Only ascii characters are allowed

POST submits data, is not cached, does not remain in browser history, cannot be bookmarked and has no restriction on data length. Using the back button will resubmit data.

## Cookies

Cookies are small pieces of data that is used for the browser to remember stateful things like a user logging in or items in a shopping cart. If the user is logged in on a site, everytime the user clicks on a link within the site the cookie holds the information about the user being logged in, instead of having to request the information every time the page reloads. 